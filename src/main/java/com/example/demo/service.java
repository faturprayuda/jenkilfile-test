package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class service {
    @GetMapping("/tes")
    public String tes(){
        return "OK";
    }
}
