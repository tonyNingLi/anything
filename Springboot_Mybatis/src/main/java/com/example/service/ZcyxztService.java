package com.example.service;

import java.util.List;
import java.util.Map;

public interface ZcyxztService {

    List<Map<String,Object>> selectZcyxztBaseInfoList();

    List<Map<String,Object>> selectJkpzxxInfoList();

    List<Map<String,Object>> selectJkZtZxsjInfoList();

    List<Map<String,Object>> selectJkzxlsInfoList();

    List<Map<String,Object>> selectWlsbCPULylInfoList();

    List<Map<String,Object>> selectWlsbNCLylInfoList();

    List<Map<String,Object>> selectZjsbCPULylInfoList();

    List<Map<String,Object>> selectZjsbNCLylInfoList();
    //首页 资产信息列表
    List<Map<String,Object>> selectZcxxListDate();

    Map<String,Object> selectYWXTListA(Map<String,Object> paramMap);

    Map<String,Object> selectYWXTListB(Map<String,Object> paramMap);

    Integer selectYWXTListC(Map<String,Object> paramMap);

    Map<String,Object> selectYWXTListD(Map<String,Object> paramMap);
    //健康度
    List<Map<String,Object>> selectJkdListDate();
    //虚拟化资源池
    List<Map<String,Object>> selectXnhZycListDate();
    //消息推送
    void SengEarchInfo();
    //  测试postgre
    Map<String,Object> getDate();
    //派驻结构
    List<Map<String, Object>> selectZPYXTSInfoList();
}
