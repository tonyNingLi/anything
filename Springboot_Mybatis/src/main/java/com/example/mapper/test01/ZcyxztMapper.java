package com.example.mapper.test01;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * @Author:0xOO
 * @Date: 2018/9/26 0026
 * @Time: 15:20
 */
@Repository
public interface ZcyxztMapper {

    List<Map<String,Object>> selectZcyxztBaseInfoList();

    List<Map<String,Object>> selectJkpzxxInfoList();

    List<Map<String,Object>> selectJkZtZxsjInfoList();

    List<Map<String,Object>> selectJkzxlsInfoList();

    List<Map<String,Object>> selectWlsbCPULylInfoList();

    List<Map<String,Object>> selectWlsbNCLylInfoList();

    List<Map<String,Object>> selectZjsbCPULylInfoList();

    List<Map<String,Object>> selectZjsbNCLylInfoList();

    //资产信息 首页列表接口
    List<Map<String,Object>> selectZcxxListDate();


    Map<String,Object> selectYWXTListA(Map<String, Object> paramMap);

    Map<String,Object> selectYWXTListB(Map<String, Object> paramMap);

    Integer selectYWXTListC(Map<String, Object> paramMap);

    Map<String,Object> selectYWXTListD(Map<String, Object> paramMap);

    List<Map<String,Object>> selectJkdListDate();

    List<Map<String,Object>> selectXnhZycListDate();

    Integer getErrorCountByFmoip(Map<String, Object> paramMap);

    Map<String,Object> getDataStatisticsForNet();
}
