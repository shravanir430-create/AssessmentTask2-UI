package runner;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(
    features = "src/test/resources/Features",
    glue = {"com.stepDefinition"},
    plugin = {
        "pretty", 
        "html:target/cucumber-reports/ds-report.html",
        "json:target/cucumber-reports/ds-report.json"
    }
)
public class RunnerTest {
}

