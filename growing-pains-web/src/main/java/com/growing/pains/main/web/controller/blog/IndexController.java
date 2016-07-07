package com.growing.pains.main.web.controller.blog;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author miaoxing
 * DATE:   16/6/29
 */
@Controller
public class IndexController {
    @RequestMapping(value = {"", "/index"}, method = RequestMethod.GET)
    public ModelAndView index() {
        return new ModelAndView("blog/index");
    }
}
