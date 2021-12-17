package com.example.springmetryshop.controllers;

import com.example.springmetryshop.SpringmetryshopApplicationTests;
import com.example.springmetryshop.models.Product;
import com.example.springmetryshop.repositories.ProductRepository;
import com.example.springmetryshop.services.ProductService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class ProductControllerTest extends SpringmetryshopApplicationTests {

    @Autowired
    private ProductService productService;
    @Autowired
    private ProductRepository productRepository;

    @Test
    void TestGetAllProducts() {
        ResponseEntity<List<Product>> productsListResponse = restTemplate.exchange(baseUrl + "/",
                HttpMethod.GET, null, new ParameterizedTypeReference<>() {
                });

        List<Product> productList = productsListResponse.getBody();

        assertEquals(HttpStatus.OK, productsListResponse.getStatusCode(),
                "Status code for the get all clients request should be 200");

        assertNotNull(productList);
    }

//    @Test
//    void TestProductInfo() {
//        Product product = createTestProduct();
//        //Long id = 1;
//       // client.setId(uuid);
//        productRepository.save(product);
//
//        ResponseEntity<Product> productResponse = restTemplate.exchange(baseUrl + "/product/" + product.getId(),
//                HttpMethod.GET, null, new ParameterizedTypeReference<>() {
//                });
//        Product receivedProduct = productResponse.getBody();
//
//        assertEquals(HttpStatus.OK, productResponse.getStatusCode(),
//                "Status code for the get client by id request should be 200");
//
//        assertNotNull(receivedProduct);
//    }
//
//    @Test
//    void TestCreateProduct() {
//
//    }
//
//    @Test
//    void TestDeleteProduct() {
//    }
}