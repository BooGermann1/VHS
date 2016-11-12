import freemarker.template.Configuration;

import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.logging.Logger;

/**
 * Created by BooGermann on 13.11.2016.
 */
public class PageService {
    private static Configuration conf = null;
    private static PageService instance = null;
    public static final String PATH_TO_TEMPLATES = "./Templates";
    public static final String LOG_PAGE = "Log.ftl";
    private PageService(){}
    public static PageService getInstance(){
        if (instance != null){
            conf = new Configuration(Configuration.VERSION_2_3_23);
            try {
                File file = new File(PATH_TO_TEMPLATES);
                conf.setDirectoryForTemplateLoading(file);
            }catch (IOException e) {
                System.out.println("wrong filename as template path");
            }
        }
        return instance;
    }

    public static String getTemplate(String filename, Map<String, Object> data){

    }
}
