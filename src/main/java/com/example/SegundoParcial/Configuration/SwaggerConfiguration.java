package com.example.SegundoParcial.Configuration;

import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Contact;
import io.swagger.v3.oas.models.info.Info;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SwaggerConfiguration {

    @Bean
    public OpenAPI customOpenAPI(){
        return new OpenAPI()
                .info(new Info()
                        .title("API DE PARCIAL SEGUNDO CORTE")
                        .version("1.0")
                        .description("Docuentacion de la api del segundo parcial")
                        .contact(new Contact()
                                .name("Juan Esteban Capurro Buitrago")
                                .email("juan.capurro@uniminuto.edu.co")));
    }

}
