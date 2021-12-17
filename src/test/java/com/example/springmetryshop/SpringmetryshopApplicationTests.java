package com.example.springmetryshop;

import com.example.springmetryshop.controllers.ProductController;
import com.example.springmetryshop.models.Product;

import com.example.springmetryshop.models.User;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.web.server.LocalServerPort;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.web.client.RestTemplate;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@ActiveProfiles(profiles = "test")
public class SpringmetryshopApplicationTests {


    @LocalServerPort
    private int port;

    protected String baseUrl = "http://localhost:";


    protected RestTemplate restTemplate = new RestTemplate();

    @BeforeEach
    public void setUp() {
        baseUrl = baseUrl.concat(port + "");
    }

    @Test
    void contextLoads() {
    }

    protected Product createTestProduct() {
        return Product.builder()
                .category("Len")
                .description("Len 100 percent")
                .price(1000)
                .title("Len")
                .build();
    }

    protected User createTestUser() {
        return User.builder()
                .id(1L)
                .name("Igor")
                .email("Igor@mail.ru")
                .numberPhone("000")
                .password("1")
                .active(true)
                .build();
    }

}
