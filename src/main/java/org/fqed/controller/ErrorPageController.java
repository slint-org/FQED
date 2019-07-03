package org.fqed.controller;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;


@RestController
public class ErrorPageController implements ErrorController {

    private static final String PATH = "/error";

    @RequestMapping(value = PATH)
    public ModelAndView error(HttpServletResponse response) {

        ModelAndView returnObject = null;
        int errorCode = response.getStatus();
        if (errorCode == 404) {
            returnObject = new ModelAndView(Routes.Error.PageNotFound);
            return returnObject;
        } else if (errorCode == 403) {
            returnObject = new ModelAndView(Routes.Error.DeniedAccess);
        } else if (errorCode == 503) {
            returnObject = new ModelAndView(Routes.Error.ServiceUnavailable);
        } else {
            returnObject = new ModelAndView(Routes.Error.Maintenance);
        }
        return returnObject;
    }

    @Override
    public String getErrorPath() {
        return PATH;
    }


}
