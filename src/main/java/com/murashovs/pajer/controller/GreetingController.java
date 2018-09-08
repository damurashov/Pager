package com.murashovs.pajer.controller;


import com.murashovs.pajer.entity.Message;
import com.murashovs.pajer.repository.MessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;


@Controller
public class GreetingController {

    @Autowired
    private MessageRepository messageRepository;

    @GetMapping("/greeting")
    public String greeting(@RequestParam(name="name", required=false, defaultValue="World") String name, Map<String, Object> model) {
        model.put("name", name);
        return "greeting";
    }

    @GetMapping
    public String main(Map<String, Object> model){
        Iterable<Message> allMsg = messageRepository.findAll();

        model.put("messages", allMsg);
        return "main";
    }

    @PostMapping
    public String add(@RequestParam String text, @RequestParam String tag, Map<String, Object> model) {
        Message msg = new Message(text, tag);

        messageRepository.save(msg);
        Iterable<Message> messages = messageRepository.findAll();

        model.put("messages", messages);
        return "main";
    }

    @PostMapping("filter")
    public String filter(@RequestParam String text, Map<String, Object> model){
        Iterable<Message> messages;

        if (text != null && !text.isEmpty()) {
            messages = messageRepository.findByTag(text);
        } else{
            messages = messageRepository.findAll();
        }


        model.put("messages", messages);
        return "main";
    }
}