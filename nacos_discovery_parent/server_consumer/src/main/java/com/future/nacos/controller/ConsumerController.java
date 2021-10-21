package com.future.nacos.controller;

import com.future.nacos.client.ProviderClient;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
@RequestMapping("/consumer")
@Slf4j
public class ConsumerController {

    @Resource
    private ProviderClient providerClient;

    @GetMapping("/service")
    public String service() {
        log.info("consumer invoke");
        String service = providerClient.service();
        return "comsumer invoke" + " | " + service;
    }
}
