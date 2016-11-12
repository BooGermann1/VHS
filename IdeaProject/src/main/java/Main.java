/**
 * Created by BooGermann on 12.11.2016.
 */
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.servlet.*;

public class Main {
    public static void main(String[] args) throws Exception{
        Server server = new Server(8080);
        ServletContextHandler context = new ServletContextHandler();
        context.setContextPath("/");
        server.setHandler(context);
        context.addServlet(new ServletHolder(new UserLogin()), "/*");
        server.start();
        server.join();
    }
}
