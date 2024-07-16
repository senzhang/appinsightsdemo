package com.example.appinsightsdemo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.microsoft.applicationinsights.attach.ApplicationInsights;

@SpringBootApplication
public class AppinsightsdemoApplication {

	public static void main(String[] args) {
		ApplicationInsights.attach();
		SpringApplication.run(AppinsightsdemoApplication.class, args);
	}

}
