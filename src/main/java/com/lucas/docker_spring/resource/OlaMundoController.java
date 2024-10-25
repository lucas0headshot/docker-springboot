package com.lucas.docker_spring.resource;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/ola-mundo")
public class OlaMundoController {
    public ResponseEntity<String> get() {
        return ResponseEntity.ok("Olá, Mundo!");
    }
}
