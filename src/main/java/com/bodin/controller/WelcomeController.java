package com.bodin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.bodin.repository.ItemRepository;

/**
 * @author Bodin Srisompong
 */
@RestController
public class WelcomeController {
    @Autowired
    private ItemRepository itemRepository;

    @RequestMapping("/")
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView("welcome");
        mav.addObject("items", itemRepository.findAll());
        return mav;
    }

    @RequestMapping("/login")
    public ModelAndView login() {
        return new ModelAndView("login");
    }

}
