package FBLT.controllers.errors;

import org.springframework.boot.autoconfigure.web.ErrorController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class IndexController implements ErrorController {

    private static final String PATH = "/error";

    @RequestMapping(value = PATH)
    public ModelAndView error() {
        return new ModelAndView("error_page");
    }

    @Override
    public String getErrorPath() {
        return PATH;
    }
}