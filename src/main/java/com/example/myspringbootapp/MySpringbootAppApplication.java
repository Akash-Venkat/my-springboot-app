package com.example.myspringbootapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "com.example")
public class MySpringbootAppApplication {

    public static void main(String[] args) {
        SpringApplication.run(MySpringbootAppApplication.class, args);
    }

}
