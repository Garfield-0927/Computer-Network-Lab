import java.io.IOException;
import java.io.InputStream;


/**
 * @author：Garfield
 * @date ：Created in 2021/10/11 18:32
 */

public class Request {
    private InputStream input;
    private String url;
    private String header;
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

    // GET /index HTTP/1.1
    // Host: localhost:8080
    // Connection: keep-alive
    // Cache-Control: max-age=0
    // ...
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
