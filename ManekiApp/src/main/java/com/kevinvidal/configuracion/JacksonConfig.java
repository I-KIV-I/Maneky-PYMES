package com.kevinvidal.configuracion;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class JacksonConfig {

    @Bean
    public ObjectMapper objectMapper() {
        ObjectMapper objectMapper = new ObjectMapper();
        // Configurar la profundidad máxima de anidamiento
        objectMapper.getFactory().setStreamWriteConstraints(
            com.fasterxml.jackson.core.StreamWriteConstraints.builder()
                .maxNestingDepth(2000) // Ajusta el valor según tus necesidades
                .build()
        );
        // Configurar otras opciones según sea necesario
        objectMapper.configure(SerializationFeature.INDENT_OUTPUT, true);
        objectMapper.configure(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS, false);
        return objectMapper;
    }
}
