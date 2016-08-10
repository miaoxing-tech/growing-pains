package com.growing.pains.main.web.controller.blog;

import com.growing.pains.main.web.auth.annotation.Auth;
import com.growing.pains.main.web.auth.annotation.Authority;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author: miaoxing
 * DATE:    16/7/11
 */
@Controller
@RequestMapping("show")
public class BlogShowController {

    @Authority(Auth.PUBLIC)
    @RequestMapping(value = "/{blogUserName}/metronic", method = RequestMethod.GET)
    public ModelAndView metronicShowPage(@PathVariable String blogUserName) {
        return new ModelAndView("show/metronicShow").addObject("blogUserName", blogUserName);
    }

}
