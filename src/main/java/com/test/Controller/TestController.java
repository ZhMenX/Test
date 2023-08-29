package com.test.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author: zhmen
 * @CreateTime: 2023/8/28 $ {TIME}
 * @Description:
 */
@RestController
@RequestMapping("/test")
public class TestController {

    @GetMapping("hello")
    public String Hello(){
        return "<h1>Hello World</h1>";
    }

}
