package com.example.mapper.test05;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * @Author:0xOO
 * @Date: 2018/9/26 0026
 * @Time: 15:20
 */
@Repository
public interface UpsMapper0628 {
    //温湿度,烟感,空调,漏水统一方法返回
    List<Map<String,Object>> SendMessageForParam(Map<String,Object> map);
    //测试
    List<Map<String, Object>> test();
}
