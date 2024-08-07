package com.kevinvidal;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;

@SpringBootApplication
public class ManekiAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(ManekiAppApplication.class, args);
	}
}
