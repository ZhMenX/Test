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
        return "<h1>Hello World！！！！</h1>";
    }

    @GetMapping("go")
    public String Go(){
        return "<!DOCTYPE html>\n" +
                "<html>\n" +
                "<head>\n" +
                "<style>\n" +
                "  body {\n" +
                "    display: flex;\n" +
                "    justify-content: center;\n" +
                "    align-items: center;\n" +
                "    height: 100vh;\n" +
                "    margin: 0;\n" +
                "    background-color: #f0f0f0;\n" +
                "  }\n" +
                "  .title {\n" +
                "    text-align: center;\n" +
                "    font-size: 24px;\n" +
                "    font-weight: bold;\n" +
                "    color: #333;\n" +
                "    padding: 20px;\n" +
                "    border: 1px solid #ccc;\n" +
                "    background-color: #fff;\n" +
                "    border-radius: 5px;\n" +
                "    box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);\n" +
                "  }\n" +
                "</style>\n" +
                "</head>\n" +
                "<body>\n" +
                "\n" +
                "<div class=\"title\">\n" +
                "  欢迎来到水的国度\n" +
                "</div>\n" +
                "\n" +
                "</body>\n" +
                "</html>\n";
    }
}
