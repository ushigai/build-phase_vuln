import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class MyExample {
    private static final Logger logger = LogManager.getLogger(MyExample.class);

    public static void main(String[] args) {
        String cmd = System.getProperty("cmd");
        System.out.println(cmd+" : ");
        logger.error(cmd);
        //System.out.println(cmd);
        //System.out.println("This is test message.");
        //logger.error("Error");
        //logger.error("${env:SECRET_VALUE:-:}");
    }
}
