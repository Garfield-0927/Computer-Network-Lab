import com.sun.tools.javac.Main;

import java.io.*;
import java.net.*;
import java.util.Properties;

/**
 * @author：Garfield
 * @date ：Created in 2021/10/11 17:10
 */


public class MyWebServer {
    // the port listened by the server
    private int port;
    private String ip;
    public static String static_root;


    // constructor function
    public MyWebServer() {
        this.loadConfig();
        this.createSocket();
    }

    public void loadConfig(){
        InputStream is = Main.class.getClassLoader().getResourceAsStream("dev.properties");
        Properties pro = new Properties();
        try {
            pro.load(is);
        } catch (IOException ioException) {
            ioException.printStackTrace();
        }
        this.port = Integer.parseInt(pro.getProperty("port"));
        this.static_root = pro.getProperty("STATIC_ROOT");
        this.ip = pro.getProperty("ip");
        System.out.println(this.port);
        System.out.println(this.ip);
        System.out.println(this.static_root);
    }


    // create welcomeSocket and connectionSocket
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

                // Receive Request from client
                InputStream input = connectionSocket.getInputStream();
                Request request = new Request(input);
                request.parse();
                String url = request.getUrl();
                System.out.println(">>>> Header:" + request.getHeader().split("\n")[0]);

                // Make Response to the client
                OutputStream output = connectionSocket.getOutputStream();
                Response response = new Response(output);
                response.sendResponse(url);
                System.out.println(">>>> Response:" + response.getRes());

                // Close Socket
                connectionSocket.close();
                System.out.println(">>>> Connection Closed...<<<<");
                System.out.println("=======================split line=======================");

            }
        } catch (IOException e) {
            System.err.println(e);
        }


    }

    public static void main(String[] args) {
        MyWebServer server = new MyWebServer();
    }

}
