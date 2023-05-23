package Tutorial;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import com.intuit.karate.report.Report;
import com.intuit.karate.Runner.Builder;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class L12TestRunner {

    @Karate.Test
    public void testParallel() {
        Builder builder = new Builder();
        builder.path("L1ArithmaticPrints");
                //.outputCucumberJson(true)
        Results results = builder.parallel(5);
    }

//    @Karate.Test
//    public Karate getL2APITest(){
//        return Karate.run("L2JsonTest").relativeTo(getClass());
//    }
//    @Karate.Test
//    public Karate getL3APITest(){
//        return Karate.run("L3GetAPI").relativeTo(getClass());
//    }
//    @Karate.Test
//    public Karate getL4APITest(){
//        return Karate.run("L4getAPIwithQuery").relativeTo(getClass());
//    }
//    @Karate.Test
//    public Karate getL5APITest(){
//        return Karate.run("L5headersList").relativeTo(getClass());
//    }
//    @Karate.Test
//    public Karate getL6APITest(){
//        return Karate.run("L6AuthToken").relativeTo(getClass());
//    }
//    @Karate.Test
//    public Karate getL7APITest(){
//        return Karate.run("L7postRequest").relativeTo(getClass());
//    }
//    @Karate.Test
//    public Karate getL8APITest(){
//        return Karate.run("L8randomMail").relativeTo(getClass());
//    }
//    @Karate.Test
//    public Karate getL9APITest(){
//        return Karate.run("L9jsonPostFile").relativeTo(getClass());
//    }
//    @Karate.Test
//    public Karate getL10APITest(){
//        return Karate.run("L10UpdateUser").relativeTo(getClass());
//    }
//    @Karate.Test
//    public Karate getL11APITest(){
//        return Karate.run("L11DeleteUser").relativeTo(getClass());
//    }
}
