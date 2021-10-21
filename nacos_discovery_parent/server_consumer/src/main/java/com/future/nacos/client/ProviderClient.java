package com.future.nacos.client;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;

@FeignClient(value = "server-provider", contextId = "ProviderClient", path = "/provider")
public interface ProviderClient {
    @GetMapping("/service")
    public String service();
}
