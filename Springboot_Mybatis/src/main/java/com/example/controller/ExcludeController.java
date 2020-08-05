package com.example.controller;

import com.example.mapper.test03.UpsMapper;
import com.example.service.UpsService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * 排除某些页面不被拦截
 */
@Controller
@RequestMapping("/exclude")
public class ExcludeController {
    private static Logger Log = Logger.getLogger(ExcludeController.class);

    @Autowired
    UpsService upsService;

    @RequestMapping("index1")
    public String detest() {
        Log.info("日志内容");
        System.out.println("测试页面输出语句!");
        return "index1";
    }
    @RequestMapping("index2")
    @ResponseBody
    public String detest2() {
        System.out.println("upsService.test:");
        upsService.sendOaWithParams("364","2","吉莲涉密备份机房2#温湿度设备监测");
        return "index1";
    }
}