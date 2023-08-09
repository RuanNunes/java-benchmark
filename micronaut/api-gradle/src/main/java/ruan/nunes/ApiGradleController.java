package ruan.nunes;

import io.micronaut.http.annotation.*;

@Controller("/apiGradle")
public class ApiGradleController {

    @Get(uri="/", produces="text/plain")
    public String index() {
        return "Example Response";
    }
}