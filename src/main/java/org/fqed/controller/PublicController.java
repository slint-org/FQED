package org.fqed.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PublicController {


    @RequestMapping(value = Routes.Public.HomePage, method = RequestMethod.GET)
    public ModelAndView home() {
        ModelAndView index = new ModelAndView();
        index.setViewName("public/index");
        return index;

    }

    @RequestMapping(value = "public/error/construction")
    public ModelAndView construction() {
        return new ModelAndView("public/error/construction");
    }


    @RequestMapping(value = Routes.Error.DeniedAccess)
    public ModelAndView return403() {
        return new ModelAndView("public/error/403");
    }


}


