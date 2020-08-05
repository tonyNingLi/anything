package com.example.demo;

import com.example.mapper.test03.UpsMapper;
import com.example.service.UpsService;
import com.example.service.impl.IUpsService;
import com.example.utils.StringX;
import com.example.webserverinterfacenew.GetChartsWebserviceImpService;
import com.example.webserverinterfacenew.IGetChartWebservice;
import com.example.webserversendtodo.*;
import com.example.webserversetalarmtodo.GetTodoNumWebserviceImpService;
import com.example.webserversetalarmtodo.GetTodoSupervise;
import com.example.webserversetalarmtodo.IGetTodoNumWebservice;
import net.sf.json.JSONObject;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class WebserverTest {

    @Autowired
    UpsMapper upsMapper;

    @Test
    public void sendToDo(){
//        String AccesskeyOA = "zUvqpKadER2XglrBG3oR/H4V5Nz5zY5m+WVCqUCBoEkN4/M9w12xUdJr0gIYRftf";
//        GetChartsWebserviceImpService gg = new GetChartsWebserviceImpService();
//        IGetChartWebservice i = gg.getGetChartsWebserviceImpPort();
//        String ddd = i.getPerSubInfo(AccesskeyOA);
//        System.out.println(ddd);
//        ISysNotifyTodoWebService i =
        NotifyTodoSendContext todoSendContext = new NotifyTodoSendContext();
        todoSendContext.setTargets("{\"LoginName\":\"wzd\"}");
        todoSendContext.setAppName("报警");
        todoSendContext.setModelName("哪个系统的哪个模块产生的报警信息");
        todoSendContext.setSubject("报警内容");
        todoSendContext.setLink("异常信息网页链接 ");
        todoSendContext.setType(2);//2 为待阅
        todoSendContext.setModelId("12345646565465");
        int level= Integer.parseInt ("1");//1 紧急，2 急，3 一般
        todoSendContext.setLevel(level);
        SimpleDateFormat createTime = new  SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        todoSendContext.setCreateTime("2019-01-01 19:20:20");


        ISysNotifyTodoWebServiceService i =  new ISysNotifyTodoWebServiceService();
        ISysNotifyTodoWebService q = i.getISysNotifyTodoWebServicePort();
        try {
            System.out.println("zhixing __________");
            NotifyTodoAppResult sss = q.sendTodo(todoSendContext);
            String smes =  sss.getMessage();
            Integer qqq = sss.getReturnState();
            System.out.println("123"+smes);
            System.out.println("456"+qqq);
            System.out.println("jieshu __________");

        } catch (Exception_Exception e) {
            e.printStackTrace();
        }


    }

    @Test
    public void setAlarmToDo(){
        Map<String,Object> resMap = new HashMap<>();
        resMap.put("appName","告警");//告警
        resMap.put("modelName","邮件系统测试");//来自哪个系统哪个模块
        resMap.put("modelId", StringX.getUUID());//uuid
        resMap.put("subject","告警信息推动测试level=3");//告警信息自定义
        resMap.put("level",1);//级别--->告警级别
        resMap.put("createTime", StringX.getCurrentDate());//创建时间
        JSONObject json = JSONObject.fromObject(resMap);
        GetTodoNumWebserviceImpService gwi = new GetTodoNumWebserviceImpService();
        IGetTodoNumWebservice getTodoNumWebservice = gwi.getGetTodoNumWebserviceImpPort();
        String str = getTodoNumWebservice.setAlarmTodo(json.toString());
        System.out.println("jieshu");
    }
    @Test
    public void MapToJsonTest(){
        Map<String,Object> map = new HashMap<>();
        map.put("lili","lucy");
        map.put("wocao",456);
        map.put("ddd","www");
        JSONObject json = new JSONObject();
        json = JSONObject.fromObject(map);
        System.out.println(json);

    }
}
