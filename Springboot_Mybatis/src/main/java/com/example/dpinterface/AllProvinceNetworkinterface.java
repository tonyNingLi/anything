package com.example.dpinterface;

import com.example.service.ZcyxztService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * 全省网络监控模块
 * 新开接口1216更新
 */


@RestController
@Controller
@RequestMapping("/allprovince")
public class AllProvinceNetworkinterface {

    @Resource
    private ZcyxztService zcyxztService;


    /**
     * 统计在线离线故障的数量
     */

    @RequestMapping("/getDataStatisticsForNet")
    public Map<String,Object> getDate(){
        return zcyxztService.getDate();
    }



}
