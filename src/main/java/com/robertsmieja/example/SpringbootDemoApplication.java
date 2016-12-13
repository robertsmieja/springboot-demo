package com.robertsmieja.example;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@EnableAutoConfiguration
@RestController
public class SpringbootDemoApplication {

    @Value("${hello.world}")
    String world;

    @RequestMapping("/")
    @ResponseBody
    String home() {
        return "Hello " + world + "!";
    }

    public static void main(String[] args) {
        //For more configuration options, we use the builder
        SpringApplicationBuilder builder = new SpringApplicationBuilder(SpringbootDemoApplication.class);

        builder
                .profiles("development") //set dev as default
                .run(args);
    }
}