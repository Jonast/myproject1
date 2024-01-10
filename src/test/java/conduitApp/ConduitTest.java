package conduitApp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.junit.jupiter.api.Test;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;

import net.masterthought.cucumber.ReportBuilder;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.io.File;
import net.masterthought.cucumber.Configuration;
import org.apache.commons.io.FileUtils;

class ConduitTest {

    @Karate.Test
    Karate testAll(){
        return Karate.run().relativeTo(getClass());
    }


    /*  @Test
    void testParallel (){
        
        Results results = Runner.path("classpath:conduitApp")
            .outputCucumberJson(true)
            .parallel(1); generateReport(results.getReportDir());
        assertTrue(results.getFailCount() == 0, results.getErrorMessages());
    }
 
        //.parallel(threadCount:3); generateReport(results.getReportDir());
    
    public static void generateReport(String karateOutputPath) {
        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
        List<String> jsonPaths = new ArrayList<>(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("target"), "conduitApp");
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    } */
   

}
