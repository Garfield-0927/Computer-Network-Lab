## 用Java Socket在本地搭建简易服务器

### 1. 基于TCP协议的Socket

1. 首先在Server端，我们先要建立一个welcomeSocket对象，并指定监听端口
2. 接着调用welcomeSocket的accept方法来建立一个connectionSocket来和Client端绑定
3. 然后Server端就要接收来自Client的Request，并解析
4. 最后根据Client的Request返回给Client相对应的信息
5. 最后调用connectionSocket的close方法关闭连接

![tcp](D:\garfield\study\junior\ComputerNetworking\Lab\Lab1\static\tcp.png)



### 2. Java Socket

#### 2.1 welcomeSocket

​		welcomeSocket 的作用是和本地端口捆绑，在此Socket上阻塞时等待接收用户的连接。

![welcomeSocketandconnectionSocket](D:\garfield\study\junior\ComputerNetworking\Lab\Lab1\static\welcomeSocketandconnectionSocket.png)

因此我们第一步就是创建一个welcomeSocket的实例，监听本机8080号端口，在Java Socket中，代码如下：

```java
public class MyWebServer {
    // create welcomeSocket 
    private void createSocket() {
        try {
            ServerSocket welcomeSocket = new ServerSocket(8080);
        } catch (IOException e) {
            System.err.println(e);
        }
    }
}
```

| Socket | IP        | Port | IP   | Port |
| ------ | --------- | ---- | ---- | ---- |
| 8888   | 127.0.0.1 | 8080 |      |      |

上面的四元组就是welcomeSocket的一个例子。第一组IP和Port代表的是本机的IP和端口。



#### 2.2 connectionSocket

​		connectionSocket是等待用户的请求来了之后创建的一个Socket，存储了本机（Server）的IP、端口和客户端的IP、端口。如下表所示。

| Socket | IP        | Port | IP      | Port  |
| ------ | --------- | ---- | ------- | ----- |
| 8888   | 127.0.0.1 | 8080 | 1.2.3.4 | 63412 |

​	所以我们第二步就是通过welcomeSocket的accept方法来创建connectionSocket。为了能**持续接收请求**，我们要在一个死循环`while(true)`中创建和关闭connectionSocket，关闭connectionSocket的主要原因是因为socket长连接是不会自动关闭的，如果一个客户端长时间占用connectionSocket会造成一定的负荷。

​	如果我们想要知道是从哪个ip来的请求以及是哪个端口，我们可以用connectionSocket的api：`getInetAddress`以及`getPort`。

代码如下：

```java
private void createSocket() {
        try {
            ServerSocket welcomeSocket = new ServerSocket(this.port);
            
            while (true) {
                // wait for connection from client
                Socket connectionSocket = welcomeSocket.accept();
                InetAddress inetAddress = connectionSocket.getInetAddress();
                int clientPort = connectionSocket.getPort();
                System.out.println(">>>> Connected...");
                System.out.println(">>>> Receiving Request From " + inetAddress + ", Port:" + clientPort);
                
                // Close Socket
                connectionSocket.close();
                System.out.println(">>>> Connection Closed...<<<<");
            }
        } catch (IOException e) {
            System.err.println(e);
        }
}
```





#### 2.3 处理Request

​		`connectionSocket.getInputStream`，通过这个api，server端得到一个输入流管子，这个管子不断从外面读取数据，也就是读取客户端发送过来的数据。

```java
InputStream input = connectionSocket.getInputStream();
```

##### 2.3.1 编写Request类

​	那么我们如何从这个管子中将数据读取出来呢？这里我们编写一个Request类来parse这个输入流。

​	这个Request类负责了以下事情：

- parse函数：将输入流转成String，并获取请求的url（文件）
- parseUrl：根据输入流转换之后的String来分析出客户端请求的Url

```java
public class Request {
    private InputStream input;		// 输入流
    private String url;				// 请求的url
    private String header;			// header信息
    public Request(InputStream input) throws IOException {
        this.input = input;
    }

    //从InputStream中读取request信息，并从request中获取uri值
    public void parse() {
        StringBuffer request = new StringBuffer(2048);
        int i;
        byte[] buffer = new byte[2048];
        try {
            i = this.input.read(buffer);
        } catch (IOException e) {
            e.printStackTrace();
            i = -1;
        }
        for (int j = 0; j < i; j++) {
            request.append((char) buffer[j]);
        }
        this.header = request.toString();
        parseUrl(this.header);

    }

    public void parseUrl(String request) {
        int index = request.indexOf('/');
        if (index != -1) {
            int index2 = request.indexOf(' ', index);
            this.url = request.substring(index+1, index2);
        } else {
            this.url = null;
        }

    }

    public String getUrl() {
        return this.url;
    }

    public String getHeader(){
        return this.header;
    }
}
```

接着我们利用这个类来进行处理，代码如下：

```java
// Receive Request from client
InputStream input = connectionSocket.getInputStream();
Request request = new Request(input);
request.parse();
String url = request.getUrl();
```



#### 2.4 编写Response类

​	客户端发来了请求，我们服务器要进行响应的回应，因此在connectionSocket上会有一个`getOutputStream`的api，这个可以理解成输出流管子，也就是服务器根据客户端的请求向客户端发送的数据。

```java
// Make Response to the client
OutputStream output = connectionSocket.getOutputStream();
Response response = new Response(output);
response.sendResponse(url);
```

​	Response类主要实现的方法就是sendResponse，这个方法接收一个参数，就是客户端请求的url（比如：/index.html, /home.png），根据url的后缀，来设置响应的Content type， 如果Content Type和资源不符合，可能会出现乱码（比如说： `Content-Type:text/html`来获取pdf资源就会产生乱码）。此外，如果资源不存在，需要返回响应的错误（404状态码等）。

```java
public class Response {
    OutputStream output;
    String res;

    public Response(OutputStream output) {
        this.output = output;
    }

    public void sendResponse(String url) throws IOException {
        FileInputStream fis = null;

        try {
            if (url != null && url.indexOf('.') == -1) {
                url += ".html";
            }
            String filePath = MyWebServer.static_root + '\\' + url;
            System.out.println(filePath);
            File file = new File(filePath);
            if (file.exists()) {
                this.res = "HTTP/1.1 200 OK";
                // Header of Response
                output.write("HTTP/1.1 200 OK\r\n".getBytes());
                String postFix = url.split("\\.")[1];
                if (postFix.equals("html")) {
                    output.write("Content-Type:text/html;\r\n".getBytes());
                } else if (postFix.equals("gif")) {
                    output.write("Content-Type:image/gif;\r\n".getBytes());
                } else if (postFix.equals("jpg")) {
                    output.write("Content-Type:image/jpg;\r\n".getBytes());
                } else if (postFix.equals("png")) {
                    output.write("Content-Type:image/png;\r\n".getBytes());
                } else if (postFix.equals("json")) {
                    output.write("Content-Type:application/json;\r\n".getBytes());
                } else if (postFix.equals("pdf")) {
                    output.write("Content-Type:application/pdf;\r\n".getBytes());
                } else if (postFix.equals("mp4")){
                    output.write("Content-Type:video/mp4;\r\n".getBytes());
                }
                output.write("\r\n".getBytes());


                fis = new FileInputStream(file);
                byte[] bytes = new byte[4096];
                int ch = fis.read(bytes, 0, 4096);
                while (ch != -1) {
                    output.write(bytes, 0, ch);
                    ch = fis.read(bytes, 0, 4096);
                }
            } else {
                this.res = "HTTP/1.1 404 Not Found";
                String errorMessage = "HTTP/1.1 404 Not Found\r\n" + "Content-Type: text/html\r\n"
                        + "Content-Length: 23\r\n" + "\r\n" + "<h1>File Not Found</h1>";
                output.write(errorMessage.getBytes());
            }

        } catch (IOException e) {
            System.err.println(e);
        } finally {
            if (fis != null) {
                fis.close();
            }
        }
    }

    public String getRes(){
        return this.res;
    }
}
```



#### 2.5 关闭Socket

```java
connectionSocket.close();
```



### 3. 小结

TCP Socket编程：

Server端：

- create welcomeSocket
- wait for connection from client, create connectionSocket
- parse the request from client
- edit and sentd response to client
- close the connection socket

