import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

/**
 * @author：Garfield
 * @date ：Created in 2021/10/11 18:32
 */

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
