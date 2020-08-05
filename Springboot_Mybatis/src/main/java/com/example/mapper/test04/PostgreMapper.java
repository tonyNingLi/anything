package com.example.mapper.test04;


import org.springframework.stereotype.Repository;

import java.util.Map;

@Repository
public interface PostgreMapper {
    //统计在线离线故障数量
    Map<String,Object> getDate();
}
