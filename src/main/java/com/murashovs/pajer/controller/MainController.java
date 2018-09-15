package com.murashovs.pajer.controller;


import com.murashovs.pajer.entity.Message;
import com.murashovs.pajer.entity.User;
import com.murashovs.pajer.repository.MessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;


@Controller
public class MainController {

    @Autowired
    private MessageRepository messageRepository;

    @GetMapping("/")
    public String greeting(Map<String, Object> model) {
        return "greeting";
    }

    @GetMapping("/main")
    public String main(@RequestParam(required = false) String filter,
                       Model model){
        Iterable<Message> allMsg = messageRepository.findAll();

        if (filter != null && !filter.isEmpty()) {
            allMsg = messageRepository.findByTag(filter);
        } else{
            allMsg = messageRepository.findAll();
        }

        model.addAttribute("messages", allMsg);
        model.addAttribute("filter", filter);
        return "main";
    }

//    @PostMapping("/main")
    @PostMapping("submit_msg")
    public String add(@AuthenticationPrincipal User user,
                      @RequestParam String text,
                      @RequestParam String tag,
                      Map<String, Object> model
    ) {
        Message msg = new Message(text, tag, user);

        messageRepository.save(msg);
        Iterable<Message> messages = messageRepository.findAll();

        model.put("messages", messages);
        return "main";
    }
}