package com.bodin.controller;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.bodin.model.Item;
import com.bodin.model.web.WebItem;
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
        mav.addObject("items", convert(itemRepository.findAll()));
        return mav;
    }

    private List<WebItem> convert(List<Item> items) {
        return items.stream().map(WebItem::new).collect(Collectors.toList());
    }

    @RequestMapping("/login")
    public ModelAndView login() {
        return new ModelAndView("login");
    }

}
