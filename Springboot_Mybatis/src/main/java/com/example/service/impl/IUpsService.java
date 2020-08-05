package com.example.service.impl;


import com.example.mapper.test03.UpsMapper;
import com.example.mapper.test05.UpsMapper0628;
import com.example.service.UpsService;
import com.example.service.ZcyxztService;
import com.example.utils.HttpUtil;
import com.example.utils.StringX;
import com.example.webserversendtodo.ISysNotifyTodoWebService;
import com.example.webserversendtodo.ISysNotifyTodoWebServiceService;
import com.example.webserversendtodo.NotifyTodoAppResult;
import com.example.webserversendtodo.NotifyTodoSendContext;
import com.example.webserversetalarmtodo.GetTodoNumWebserviceImpService;
import com.example.webserversetalarmtodo.IGetTodoNumWebservice;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.apache.http.HttpStatus;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

@Service("UpsService")
public class IUpsService implements UpsService {

    private static final String FTP1 = "156.8.11.11"; // * 156.8.11.11  邮件   type=1
    private static final String FTP2 = "156.8.11.13"; // * 156.8.11.13  OA     type=2
    private static final String FTP3 = "156.8.11.34"; // * 156.8.11.34  公文传输  type=3
    private static final String FTP4 = "156.8.11.105";// * 156.8.11.105 电子档案  type=4
    private static final String FTP5 = "156.8.11.106";// * 156.8.11.106 机要交换  type=5

    String   url = "http://156.8.11.105:80/api/pushdevicedata";

    @Autowired
    UpsMapper upsMapper;
    @Autowired
    UpsMapper0628 upsMapper0628;

    @Resource
    private ZcyxztService zcyxztService;

    @Override
    public List<Map<String, Object>> selectupsinfo() {
        return upsMapper.selectupsinfo();
    }

    @Override
    public List<Map<String, Object>> selectsmjfwsd() {
        return upsMapper.selectsmjfwsd();
    }

    @Override
    public List<Map<String, Object>> selectDhInfoList() {
        return upsMapper.selectDhInfoList();
    }

    @Override
    public List<Map<String, Object>> selectDhInfoList415() {
        SimpleDateFormat formats = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String tstr = formats.format(new Date());
        List<Map<String, Object>> param = upsMapper.selectDhInfoList415();
        List<Map<String, Object>> resultList = new ArrayList<>();
        List<Map<String, Object>> paramList = new ArrayList<>();
        Map<String,Object> map = new HashMap<>();
        map.put("DeviceId",param.get(0).get("devid"));
        map.put("DeviceName",param.get(0).get("devname"));
        map.put("StationName",param.get(0).get("devname"));

            Map<String,Object> map1 = new HashMap<>();
            map1.put("PropertyId",param.get(0).get("varid"));
            map1.put("PropertyName",param.get(0).get("insname"));
            map1.put("PropertyValue",param.get(0).get("hvalue"));
            map1.put("Unit",param.get(0).get("insunit"));
            map1.put("PropertyType","状态");
            map1.put("UpdateTime",tstr);
            paramList.add(map1);

            Map<String,Object> map2 = new HashMap<>();
            map2.put("PropertyId","P001");
            map2.put("PropertyName",param.get(1).get("insname"));
            map2.put("PropertyValue",param.get(1).get("hvalue"));
            map2.put("Unit",param.get(1).get("insunit"));
            map2.put("PropertyType","参数");
            map2.put("UpdateTime",tstr);
            paramList.add(map2);

            Map<String,Object> map3 = new HashMap<>();
            map3.put("PropertyId","P002");
            map3.put("PropertyName",param.get(2).get("insname"));
            map3.put("PropertyValue",param.get(2).get("hvalue"));
            map3.put("Unit",param.get(2).get("insunit"));
            map3.put("PropertyType","参数");
            map3.put("UpdateTime",tstr);
            paramList.add(map3);
        map.put("Properties",paramList);
        resultList.add(map);
        return resultList;
    }

    @Override
    public List<Map<String, Object>> selectDhInfoListtwo() {
        SimpleDateFormat formats = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String tstr = formats.format(new Date());
        List<Map<String, Object>> param = upsMapper.selectDhInfoList415();
        List<Map<String, Object>> resultList = new ArrayList<>();
        List<Map<String, Object>> paramList = new ArrayList<>();

        Map<String,Object> map = new HashMap<>();
        map.put("DeviceId",415);
        map.put("DeviceName",param.get(0).get("devname"));
        map.put("StationName",param.get(0).get("devname"));
        Map<String,Object> map2 = new HashMap<>();
        map2.put("PropertyId","P001");
        map2.put("PropertyName",param.get(1).get("insname"));
        map2.put("PropertyValue",param.get(1).get("hvalue"));
        map2.put("Unit",param.get(1).get("insunit"));
        map2.put("PropertyType","参数");
        map2.put("UpdateTime",tstr);
        paramList.add(map2);
        Map<String,Object> map3 = new HashMap<>();
        map3.put("PropertyId","P002");
        map3.put("PropertyName",param.get(2).get("insname"));
        map3.put("PropertyValue",param.get(2).get("hvalue"));
        map3.put("Unit",param.get(2).get("insunit"));
        map3.put("PropertyType","参数");
        map3.put("UpdateTime",tstr);
        paramList.add(map3);
        map.put("Properties",paramList);
        resultList.add(map);
        JSONArray jsonArray1 = JSONArray.fromObject(resultList);
        try{
            String body = sendPostDataByJson(url,jsonArray1.toString(), "utf-8");
        }catch (Exception e){
            e.printStackTrace();
        }
        List<Map<String, Object>> paramtwo = upsMapper.selectDhInfoListtwo();
        List<Map<String, Object>> resultListtwo = new ArrayList<>();
        List<Map<String, Object>> paramListtwo = new ArrayList<>();

        Map<String,Object> maptwo = new HashMap<>();
        maptwo.put("DeviceId",416);
        maptwo.put("DeviceName",paramtwo.get(0).get("devname"));
        maptwo.put("StationName",paramtwo.get(0).get("devname"));

        Map<String,Object> map2two = new HashMap<>();
        map2two.put("PropertyId","P001");
        map2two.put("PropertyName",paramtwo.get(1).get("insname"));
        map2two.put("PropertyValue",paramtwo.get(1).get("hvalue"));
        map2two.put("Unit",paramtwo.get(1).get("insunit"));
        map2two.put("PropertyType","参数");
        map2two.put("UpdateTime",tstr);
        paramListtwo.add(map2two);

        Map<String,Object> map3two = new HashMap<>();
        map3two.put("PropertyId","P002");
        map3two.put("PropertyName",paramtwo.get(2).get("insname"));
        map3two.put("PropertyValue",paramtwo.get(2).get("hvalue"));
        map3two.put("Unit",paramtwo.get(2).get("insunit"));
        map3two.put("PropertyType","参数");
        map3two.put("UpdateTime",tstr);
        paramListtwo.add(map3two);
        maptwo.put("Properties",paramListtwo);
        resultListtwo.add(maptwo);
        JSONArray jsonArray2 = JSONArray.fromObject(resultListtwo);
        try{
            String body2 = sendPostDataByJson(url,jsonArray2.toString(), "utf-8");
//            System.out.println("body2:"+body2);
        }catch (Exception e){
            e.printStackTrace();
        }

        List<Map<String, Object>> paramthree = upsMapper.selectDhInfoListthree();
        List<Map<String, Object>> resultListthree = new ArrayList<>();
        List<Map<String, Object>> paramListthree = new ArrayList<>();

        Map<String,Object> mapthree = new HashMap<>();
        mapthree.put("DeviceId",417);
        mapthree.put("DeviceName",paramthree.get(0).get("devname"));
        mapthree.put("StationName",paramthree.get(0).get("devname"));

        Map<String,Object> map2three = new HashMap<>();
        map2three.put("PropertyId","P001");
        map2three.put("PropertyName",paramthree.get(1).get("insname"));
        map2three.put("PropertyValue",paramthree.get(1).get("hvalue"));
        map2three.put("Unit",paramthree.get(1).get("insunit"));
        map2three.put("PropertyType","参数");
        map2three.put("UpdateTime",tstr);
        paramListthree.add(map2three);

        Map<String,Object> map3three = new HashMap<>();
        map3three.put("PropertyId","P002");
        map3three.put("PropertyName",paramthree.get(2).get("insname"));
        map3three.put("PropertyValue",paramthree.get(2).get("hvalue"));
        map3three.put("Unit",paramthree.get(2).get("insunit"));
        map3three.put("PropertyType","参数");
        map3three.put("UpdateTime",tstr);
        paramListthree.add(map3three);
        mapthree.put("Properties",paramListthree);
        resultListthree.add(mapthree);
        JSONArray jsonArray3 = JSONArray.fromObject(resultListthree);
        try{
            String body3 = sendPostDataByJson(url,jsonArray3.toString(), "utf-8");
        }catch (Exception e){
            e.printStackTrace();
        }

        List<Map<String, Object>> paramfour = upsMapper.selectDhInfoListfour();
        List<Map<String, Object>> resultListfour = new ArrayList<>();
        List<Map<String, Object>> paramListfour = new ArrayList<>();

        Map<String,Object> mapfour = new HashMap<>();
        mapfour.put("DeviceId",418);
        mapfour.put("DeviceName",paramfour.get(0).get("devname"));
        mapfour.put("StationName",paramfour.get(0).get("devname"));

        Map<String,Object> map2four = new HashMap<>();
        map2four.put("PropertyId","P001");
        map2four.put("PropertyName",paramfour.get(1).get("insname"));
        map2four.put("PropertyValue",paramfour.get(1).get("hvalue"));
        map2four.put("Unit",paramfour.get(1).get("insunit"));
        map2four.put("PropertyType","参数");
        map2four.put("UpdateTime",tstr);
        paramListfour.add(map2four);

        Map<String,Object> map3four = new HashMap<>();
        map3four.put("PropertyId","P002");
        map3four.put("PropertyName",paramfour.get(2).get("insname"));
        map3four.put("PropertyValue",paramfour.get(2).get("hvalue"));
        map3four.put("Unit",paramfour.get(2).get("insunit"));
        map3four.put("PropertyType","参数");
        map3four.put("UpdateTime",tstr);
        paramListfour.add(map3four);
        mapfour.put("Properties",paramListfour);

        resultListfour.add(mapfour);
        JSONArray jsonArray4 = JSONArray.fromObject(resultListfour);
        try{
            String body4 = sendPostDataByJson(url,jsonArray4.toString(), "utf-8");
        }catch (Exception e){
            e.printStackTrace();
        }
        return resultList;
    }


    /**
     * 新添数据源  检测温湿度 空调等告警信息推送 0629
     * @param devid  设备id
     * @param str    in的字符串
     * @param devName  设备标识码
     */
    @Override
    public void selectDhInfoListWithParam(String devid,String str,String devName) {
        SimpleDateFormat formats = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String tstr = formats.format(new Date());
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("devid",devid);
        paramMap.put("str",str);
        List<Map<String, Object>> param = upsMapper0628.SendMessageForParam(paramMap);//拿回数据
        List<Map<String, Object>> resultListfour = new ArrayList<>();
        List<Map<String, Object>> paramListfour = new ArrayList<>();

        Map<String,Object> mapfour = new HashMap<>();
        mapfour.put("DeviceId",devName);
        mapfour.put("DeviceName",param.get(0).get("devname"));
        mapfour.put("StationName",param.get(0).get("devname"));

        Map<String,Object> map2four = new HashMap<>();
        map2four.put("PropertyId","P001");
        map2four.put("PropertyName",param.get(1).get("insname"));
        map2four.put("PropertyValue",param.get(1).get("hvalue"));
        map2four.put("Unit",param.get(1).get("insunit"));
        map2four.put("PropertyType","参数");
        map2four.put("UpdateTime",tstr);
        paramListfour.add(map2four);

        Map<String,Object> map3four = new HashMap<>();
        map3four.put("PropertyId","P002");
        map3four.put("PropertyName",param.get(2).get("insname"));
        map3four.put("PropertyValue",param.get(2).get("hvalue"));
        map3four.put("Unit",param.get(2).get("insunit"));
        map3four.put("PropertyType","参数");
        map3four.put("UpdateTime",tstr);
        paramListfour.add(map3four);


        mapfour.put("Properties",paramListfour);


        resultListfour.add(mapfour);
        JSONArray jsonArray4 = JSONArray.fromObject(resultListfour);
        try{
            String body4 = sendPostDataByJson(url,jsonArray4.toString(), "utf-8");
            System.out.println("检测带参动环数据推动:"+body4);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    //*************消防主机  烟感信息 返回一条list
    public void SendYanganMessage(){
        SimpleDateFormat formats = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String tstr = formats.format(new Date());

        List<Map<String, Object>> paramFive = upsMapper.selectDhInfoListfive();
        List<Map<String, Object>> resultListFive = new ArrayList<>();
        List<Map<String, Object>> paramListFive = new ArrayList<>();

        Map<String,Object> mapFive = new HashMap<>();
        mapFive.put("DeviceId",419);
        mapFive.put("DeviceName",paramFive.get(0).get("devname"));
        mapFive.put("StationName",paramFive.get(0).get("devname"));

        Map<String,Object> map2Five = new HashMap<>();
        map2Five.put("PropertyId","P001");
        map2Five.put("PropertyName",paramFive.get(0).get("insname"));
        map2Five.put("PropertyValue",paramFive.get(0).get("hvalue"));
        map2Five.put("Unit",paramFive.get(0).get("insunit"));
        map2Five.put("PropertyType","参数");
        map2Five.put("UpdateTime",tstr);
        paramListFive.add(map2Five);

        mapFive.put("Properties",paramListFive);
        resultListFive.add(mapFive);
        JSONArray jsonArray5 = JSONArray.fromObject(resultListFive);
        try{
            String body5 = sendPostDataByJson(url,jsonArray5.toString(), "utf-8");
//            System.out.println("body5:"+body5);
        }catch (Exception e){
            e.printStackTrace();
        }
    }


    /**
     * 新烟感推动 0629 新开发
     * @param devid
     * @param str
     * @param devName
     */
    @Override
    public void SendYanganMessageWithParam(String devid, String str, String devName) {
        SimpleDateFormat formats = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String tstr = formats.format(new Date());
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("devid",devid);
        paramMap.put("str",str);
        List<Map<String, Object>> paramFive = upsMapper0628.SendMessageForParam(paramMap);
        List<Map<String, Object>> resultListFive = new ArrayList<>();
        List<Map<String, Object>> paramListFive = new ArrayList<>();

        Map<String,Object> mapFive = new HashMap<>();
        mapFive.put("DeviceId",devName);
        mapFive.put("DeviceName",paramFive.get(0).get("devname"));
        mapFive.put("StationName",paramFive.get(0).get("devname"));

        Map<String,Object> map2Five = new HashMap<>();
        map2Five.put("PropertyId","P001");
        map2Five.put("PropertyName",paramFive.get(0).get("insname"));
        map2Five.put("PropertyValue",paramFive.get(0).get("hvalue"));
        map2Five.put("Unit",paramFive.get(0).get("insunit"));
        map2Five.put("PropertyType","参数");
        map2Five.put("UpdateTime",tstr);
        paramListFive.add(map2Five);

        mapFive.put("Properties",paramListFive);
        resultListFive.add(mapFive);
        JSONArray jsonArray5 = JSONArray.fromObject(resultListFive);
        try{
            String body5 = sendPostDataByJson(url,jsonArray5.toString(), "utf-8");
//            System.out.println("body5:"+body5);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    /**
     * 用于推数据  不需要返回值
     * 档案室一 空调
     * 空调
     */
    @Override
    public void SendKongTiaoMessage() {
        SimpleDateFormat formats = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String tstr = formats.format(new Date());
        List<Map<String, Object>> DataListKone = upsMapper.SendKongTiao1Message();//空调一
        List<Map<String, Object>> DataListKtwo = upsMapper.SendKongTiao2Message();//空调二
        List<Map<String, Object>> resultList = new ArrayList<>();//===>放两个空调的信息
        List<Map<String, Object>> paramListone = new ArrayList<>();//空调一子项list
        List<Map<String, Object>> paramListtwo = new ArrayList<>();//空调二子项list

        if(DataListKone.size()>0 && DataListKtwo.size()>0){//保证两个空调的集合大于0
            Map<String, Object> mapKONE = new HashMap<>();
                mapKONE.put("DeviceId", 420);
                mapKONE.put("DeviceName", DataListKone.get(DataListKone.size()-1).get("devname"));
                mapKONE.put("StationName", DataListKone.get(DataListKone.size()-1).get("devname"));
                for(int i=0;i<DataListKone.size()-1;i++){
                    Map<String,Object> koneMap = new HashMap<>();
                    koneMap.put("PropertyId", "P00"+i);
                    koneMap.put("PropertyName", DataListKone.get(i).get("insname"));
                    koneMap.put("PropertyValue", DataListKone.get(i).get("hvalue"));
                    koneMap.put("Unit", DataListKone.get(i).get("insunit"));
                    koneMap.put("PropertyType", "参数");
                    koneMap.put("UpdateTime", tstr);
                    paramListone.add(koneMap);
                }
                mapKONE.put("Properties",paramListone);



            Map<String, Object> mapKTWO = new HashMap<>();
            mapKTWO.put("DeviceId", 421);
            mapKTWO.put("DeviceName", DataListKtwo.get(DataListKtwo.size()-1).get("devname"));
            mapKTWO.put("StationName", DataListKtwo.get(DataListKtwo.size()-1).get("devname"));
            for(int i=0;i<DataListKtwo.size()-1;i++){
                Map<String,Object> ktwoMap = new HashMap<>();
                ktwoMap.put("PropertyId", "P00"+i);
                ktwoMap.put("PropertyName", DataListKtwo.get(i).get("insname"));
                ktwoMap.put("PropertyValue", DataListKtwo.get(i).get("hvalue"));
                ktwoMap.put("Unit", DataListKtwo.get(i).get("insunit"));
                ktwoMap.put("PropertyType", "参数");
                ktwoMap.put("UpdateTime", tstr);
                paramListtwo.add(ktwoMap);
            }
            mapKTWO.put("Properties",paramListtwo);
            resultList.add(mapKONE);
            resultList.add(mapKTWO);
            JSONArray jsonArray = JSONArray.fromObject(resultList);
            try {
                String body = sendPostDataByJson(url, jsonArray.toString(), "utf-8");
//                System.out.println("body:" + body);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }else{
            System.out.println("获取数据为空未推送!");
        }
    }

    @Override
    public void SendKongTiaoMessageWithParam(String devid,String devName) {
        SimpleDateFormat formats = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String tstr = formats.format(new Date());
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("devid",devid);
        List<Map<String, Object>> DataListKone = upsMapper0628.SendMessageForParam(paramMap);
        List<Map<String, Object>> resultList = new ArrayList<>();//===>放两个空调的信息
        List<Map<String, Object>> paramListone = new ArrayList<>();//空调一子项list

        if(DataListKone.size()>0 ){
            Map<String, Object> mapKONE = new HashMap<>();
            mapKONE.put("DeviceId", devName);
            mapKONE.put("DeviceName", DataListKone.get(DataListKone.size()-1).get("devname"));
            mapKONE.put("StationName", DataListKone.get(DataListKone.size()-1).get("devname"));
            for(int i=0;i<DataListKone.size()-1;i++){
                Map<String,Object> koneMap = new HashMap<>();
                koneMap.put("PropertyId", "P00"+i);
                koneMap.put("PropertyName", DataListKone.get(i).get("insname"));
                koneMap.put("PropertyValue", DataListKone.get(i).get("hvalue"));
                koneMap.put("Unit", DataListKone.get(i).get("insunit"));
                koneMap.put("PropertyType", "参数");
                koneMap.put("UpdateTime", tstr);
                paramListone.add(koneMap);
            }
            mapKONE.put("Properties",paramListone);
            resultList.add(mapKONE);

            JSONArray jsonArray = JSONArray.fromObject(resultList);
            try {
                String body = sendPostDataByJson(url, jsonArray.toString(), "utf-8");
//                System.out.println("body:" + body);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }else{
            System.out.println("获取数据为空未推送!");
        }
    }

    /**
     * 漏水数据推送
     */
    @Override
    public void SendLoushuiMessage() {

        SimpleDateFormat formats = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String tstr = formats.format(new Date());

        List<Map<String, Object>> paramFive = upsMapper.SendLoushuiMessage();
        List<Map<String, Object>> resultListFive = new ArrayList<>();
        List<Map<String, Object>> paramListFive = new ArrayList<>();

        Map<String,Object> mapFive = new HashMap<>();
        mapFive.put("DeviceId",422);
        mapFive.put("DeviceName",paramFive.get(0).get("devname"));
        mapFive.put("StationName",paramFive.get(0).get("devname"));

        Map<String,Object> map2Five = new HashMap<>();
        map2Five.put("PropertyId","P001");
        map2Five.put("PropertyName",paramFive.get(0).get("insname"));
        map2Five.put("PropertyValue",paramFive.get(0).get("hvalue"));
        map2Five.put("Unit",paramFive.get(0).get("insunit"));
        map2Five.put("PropertyType","参数");
        map2Five.put("UpdateTime",tstr);
        paramListFive.add(map2Five);

        mapFive.put("Properties",paramListFive);
        resultListFive.add(mapFive);
        JSONArray jsonArray5 = JSONArray.fromObject(resultListFive);
        try{
            String body5 = sendPostDataByJson(url,jsonArray5.toString(), "utf-8");
//            System.out.println("body5:"+body5);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    public void SendLoushuiMessageWithParam(String devid, String str, String devName) {
        SimpleDateFormat formats = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String tstr = formats.format(new Date());
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("devid",devid);
        paramMap.put("str",str);
        List<Map<String, Object>> paramFive = upsMapper0628.SendMessageForParam(paramMap);
        List<Map<String, Object>> resultListFive = new ArrayList<>();
        List<Map<String, Object>> paramListFive = new ArrayList<>();

        Map<String,Object> mapFive = new HashMap<>();
        mapFive.put("DeviceId",devName);
        mapFive.put("DeviceName",paramFive.get(0).get("devname"));
        mapFive.put("StationName",paramFive.get(0).get("devname"));

        Map<String,Object> map2Five = new HashMap<>();
        map2Five.put("PropertyId","P001");
        map2Five.put("PropertyName",paramFive.get(0).get("insname"));
        map2Five.put("PropertyValue",paramFive.get(0).get("hvalue"));
        map2Five.put("Unit",paramFive.get(0).get("insunit"));
        map2Five.put("PropertyType","参数");
        map2Five.put("UpdateTime",tstr);
        paramListFive.add(map2Five);

        mapFive.put("Properties",paramListFive);
        resultListFive.add(mapFive);
        JSONArray jsonArray5 = JSONArray.fromObject(resultListFive);
        try{
            String body5 = sendPostDataByJson(url,jsonArray5.toString(), "utf-8");
//            System.out.println("body5:"+body5);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    //动环数据带参数
    @Override
    public List<Map<String, Object>> selectDhInfoListByParam(Map<String, Object> param) {
        return upsMapper.selectDhInfoListByParam(param);
    }

    @Override
    public List<Map<String, Object>> DhJgInfoList(Map<String, Object> param) {
        return upsMapper.DhJgInfoList(param);
    }

    @Override
    public void SendOAfiveModelMessage(String typeNum) {
        try{
            String time = StringX.getCurrentDate();//当前时间
            Map<String,Object> paramMap = new HashMap<>();

            String appName = "告警";//写死内容
            String modelName = "未知";//哪个模块
            if("1".equals(typeNum)){
                modelName="邮件系统";
                paramMap.put("FTP",FTP1);
            }else if("2".equals(typeNum)){
                modelName="OA系统";
                paramMap.put("FTP",FTP2);
            }else if("3".equals(typeNum)){
                modelName="公文传输";
                paramMap.put("FTP",FTP3);
            }else if("4".equals(typeNum)){
                modelName="电子档案";
                paramMap.put("FTP",FTP4);
            }else if("5".equals(typeNum)){
                modelName="机要交换";
                paramMap.put("FTP",FTP5);
            }
            String modelId = StringX.getUUID();//获取uuid
            String subject = modelName+":产生告警,请及时处理!";//报警内容
            String link = "http://";//链接地址,当前空
            int type = 2;//写死为 2 即可。 1 ：待办 ， 2：待阅
            String targets = "{\"LoginName\":\"wzd\"}";//json串{\"LoginName\":\"123\"}
            String createTime = time;//创建时间
            Map<String,Object> RESD = zcyxztService.selectYWXTListD(paramMap);
            String gjLeavel="";
            Integer level = 3;
            if(RESD!=null){//当采集到的数据不为空时执行推送信息
                gjLeavel = String.valueOf(RESD.get("fSeverity"));//告警等级  （异常为5；告警为4；其余3，2，1为正常）：
                if("5".equals(gjLeavel)){
                    level = 1;
                }else if("4".equals(gjLeavel)){
                    level = 2;
                }
                //推送方法介入
                NotifyTodoSendContext todoSendContext = new NotifyTodoSendContext();
                todoSendContext.setAppName(appName);//标题
                todoSendContext.setModelName(modelName);//系统模块名称
                todoSendContext.setModelId(modelId);//uuid
                todoSendContext.setSubject(subject);//报警内容-当前自定义拟定
                todoSendContext.setLink(link);//链接全路径-暂时为空
                todoSendContext.setType(type);//int类型 当前写死为2
                todoSendContext.setTargets(targets);//json串指定人登录名
                todoSendContext.setCreateTime(time);//创建时间
                todoSendContext.setLevel(level);//Integer类型 待办紧急程度 紧急1 急2  一般3
                //执行推送
                ISysNotifyTodoWebServiceService i =  new ISysNotifyTodoWebServiceService();
                ISysNotifyTodoWebService q = i.getISysNotifyTodoWebServicePort();
                NotifyTodoAppResult sss = q.sendTodo(todoSendContext);

                Integer state = sss.getReturnState();
                String returnState = "";
                if(sss.getReturnState()==0 ){
                    returnState = "未操作";
                }else if(sss.getReturnState()==1){
                    returnState = "操作失败";
                    String message =  sss.getMessage();
                    System.out.println("errorMessage:"+message);
                }else if(sss.getReturnState()==2){
                    returnState = "操作成功";
                }
                System.out.println("returnState:"+returnState);
            }
        }catch (Exception e){
            System.out.println("定时推动告警信息出现异常,请联系管理员!");
        }

    }

    /**
     * 不指定loginName的报警信息推送
     * @param typeNum
     * appName     报警（写死即可）
     * model Name: 来自哪个系统的哪个模块
     * modelId: 该待办的id最好是（32位 uuid）
     * subject : 待办内容（报警内容）
     * level : 紧急程度 1：紧急 ， 2：急 ， 3： 一般
     * createTime： 报警事件创建时间
     * backup:1206 修改告警信息推送限制  只推送查回告警级别为4 和 5 的数据
     *
     * 0421方法修改  只推送级别为5的报警信息
     */
    @Override
    public void SendOAfiveModelMessageNotAppoint(String typeNum) {
        try{
            String time = StringX.getCurrentDate();//当前时间
            Map<String,Object> paramMap = new HashMap<>();

            String appName = "告警";//写死内容
            String modelName = "未知";//哪个模块
            if("1".equals(typeNum)){
                modelName="邮件系统";
                paramMap.put("FTP",FTP1);
            }else if("2".equals(typeNum)){
                modelName="OA系统";
                paramMap.put("FTP",FTP2);
            }else if("3".equals(typeNum)){
                modelName="公文传输";
                paramMap.put("FTP",FTP3);
            }else if("4".equals(typeNum)){
                modelName="电子档案";
                paramMap.put("FTP",FTP4);
            }else if("5".equals(typeNum)){
                modelName="机要交换";
                paramMap.put("FTP",FTP5);
            }
            String modelId = StringX.getUUID();//获取uuid
            String subject = modelName+":出现异常,请及时处理!";//报警内容
            String createTime = time;//创建时间
            Map<String,Object> RESD = zcyxztService.selectYWXTListD(paramMap);
            if(RESD!=null){//当采集到的数据不为空时执行推送信息
                String gjLeavel = String.valueOf(RESD.get("fSeverity"));//告警等级  （异常为5；告警为4；其余3，2，1为正常）：
                if("5".equals(gjLeavel) ){//如果告警级别为4或者5 则执行推送
                    Map<String,Object> resMap = new HashMap<>();
                    resMap.put("appName",appName);//告警
                    resMap.put("modelName",modelName);//来自哪个系统哪个模块
                    resMap.put("modelId",modelId);//uuid
                    resMap.put("subject",subject);//告警信息自定义
                    if("5".equals(gjLeavel)){
                        resMap.put("level",1);//级别--->告警级别  转成信息推送格式的级别 1 为紧急  2 为急 3 为一版
                    }else if("4".equals(gjLeavel)){
                        resMap.put("level",2);//级别--->告警级别  转成信息推送格式的级别
                    }
                    resMap.put("createTime",createTime);//创建时间
                    JSONObject json = JSONObject.fromObject(resMap);
                    //推送方法介入
                    GetTodoNumWebserviceImpService gwi = new GetTodoNumWebserviceImpService();
                    IGetTodoNumWebservice getTodoNumWebservice = gwi.getGetTodoNumWebserviceImpPort();
                    //执行推送
                    String str = getTodoNumWebservice.setAlarmTodo(json.toString());
                }else{
                    System.out.println("不满足告警级别,不执行推送!");
                }
            }else{
                System.out.println(modelName+"暂无告警信息推送");
            }
        }catch (Exception e){
            System.out.println("定时推动告警信息出现异常,请联系管理员!");
        }

    }

    /**
     * 1031添加
     * 烟感消防告警信息推送
     * 档案室烟感就一个
     */
    public void SendYanGanAlertMessage(){
        try {
            List<Map<String, Object>> paramFive = upsMapper.selectDhInfoListfive();
            if (paramFive.size()>0) {//结果首先大于0 其次判断告警信息如果不是正常则需要报警
                String hvalue =  String.valueOf(paramFive.get(0).get("hvalue"));
                if (!"正常".equals(hvalue)) {//判断如果非异常====>告警推送
                    Map<String,Object> resMap = new HashMap<>();
                    resMap.put("appName","告警");//告警
                    resMap.put("modelName","档案室消防监测");//来自哪个系统哪个模块
                    resMap.put("modelId",StringX.getUUID());//uuid
                    resMap.put("subject","档案室消防告警:"+hvalue);//告警信息自定义
                    resMap.put("level",1);//级别--->告警级别
                    resMap.put("createTime",StringX.getCurrentDate());//创建时间
                    JSONObject json = JSONObject.fromObject(resMap);
                    //推送方法介入
                    GetTodoNumWebserviceImpService gwi = new GetTodoNumWebserviceImpService();
                    IGetTodoNumWebservice getTodoNumWebservice = gwi.getGetTodoNumWebserviceImpPort();
                    //执行推送
                    String str = getTodoNumWebservice.setAlarmTodo(json.toString());
                }else{
                    System.out.println("档案室消防检测正常,暂无消息推送");
                }
            }

        } catch (Exception e) {
            System.out.println("档案室消防告警推送出现异常!");
            e.printStackTrace();
        }
    }

    /**
     * 1031添加
     * 漏水告警信息推送方法
     * 档案室漏水就一个
     */
    public void SendLouShuiAlertMessage(){
        try {
            List<Map<String, Object>> paramFive = upsMapper.SendLoushuiMessage();
            if (paramFive.size()>0) {//结果首先大于0 其次判断告警信息如果不是正常则需要报警
                String hvalue =  String.valueOf(paramFive.get(0).get("hvalue"));
                if (!"未漏水".equals(hvalue)) {//判断如果非异常====>告警推送
                    Map<String,Object> resMap = new HashMap<>();
                    resMap.put("appName","告警");//告警
                    resMap.put("modelName","档案室漏水监测");//来自哪个系统哪个模块
                    resMap.put("modelId",StringX.getUUID());//uuid
                    resMap.put("subject","档案室漏水告警:"+hvalue);//告警信息自定义
                    resMap.put("level",1);//级别--->告警级别
                    resMap.put("createTime",StringX.getCurrentDate());//创建时间
                    JSONObject json = JSONObject.fromObject(resMap);
                    //推送方法介入
                    GetTodoNumWebserviceImpService gwi = new GetTodoNumWebserviceImpService();
                    IGetTodoNumWebservice getTodoNumWebservice = gwi.getGetTodoNumWebserviceImpPort();
                    //执行推送
                    String str = getTodoNumWebservice.setAlarmTodo(json.toString());
                }else{
                    System.out.println("档案室漏水检测正常,暂无消息推送");
                }
            }
        } catch (Exception e) {
            System.out.println("档案室漏水监测推送出现异常!");
            e.printStackTrace();
        }
    }

    /**
     * 1103
     * 屏蔽机房消防监测
     * 档案室烟感就一个
     */
    public void SendPingBiYanGanMessage(){
        try {
            List<Map<String, Object>> paramFive = upsMapper.selectPingBiYanGanMessage();
            if (paramFive.size()>0) {//结果首先大于0 其次判断告警信息如果不是正常则需要报警
                String hvalue =  String.valueOf(paramFive.get(0).get("hvalue"));
                if (!"正常".equals(hvalue)) {//判断如果非异常====>告警推送
                    Map<String,Object> resMap = new HashMap<>();
                    resMap.put("appName","告警");//告警
                    resMap.put("modelName","屏蔽机房消防监测");//来自哪个系统哪个模块
                    resMap.put("modelId",StringX.getUUID());//uuid
                    resMap.put("subject","屏蔽机房消防告警:"+hvalue);//告警信息自定义
                    resMap.put("level",1);//级别--->告警级别
                    resMap.put("createTime",StringX.getCurrentDate());//创建时间
                    JSONObject json = JSONObject.fromObject(resMap);
                    //推送方法介入
                    GetTodoNumWebserviceImpService gwi = new GetTodoNumWebserviceImpService();
                    IGetTodoNumWebservice getTodoNumWebservice = gwi.getGetTodoNumWebserviceImpPort();
                    //执行推送
                    String str = getTodoNumWebservice.setAlarmTodo(json.toString());
                }else{
                    System.out.println("屏蔽机房消防监测检测正常,暂无消息推送");
                }
            }

        } catch (Exception e) {
            System.out.println("屏蔽机房消防告警推送出现异常!");
            e.printStackTrace();
        }
    }

    /**
     * 1103添加
     * 屏蔽机房漏水告警信息推送方法
     */
    public void SendPingBiLoushuiMessage(){
        try {
            List<Map<String, Object>> paramFive = upsMapper.PingBiLoushuiMessage();
            if (paramFive.size()>0) {//结果首先大于0 其次判断告警信息如果不是正常则需要报警
                for(int i=0;i<paramFive.size();i++){
                    String hvalue =  String.valueOf(paramFive.get(i).get("hvalue"));//告警值漏水未漏水
                    System.out.println(hvalue);
                    String DeviceKongTiao = String.valueOf(paramFive.get(i).get("insname"));//精确到哪个空调
                    System.out.println(DeviceKongTiao);
                    if (!"未漏水".equals(hvalue)) {//判断如果非异常====>告警推送
                        Map<String,Object> resMap = new HashMap<>();
                        resMap.put("appName","告警");//告警
                        resMap.put("modelName","屏蔽机房漏水监测");//来自哪个系统哪个模块
                        resMap.put("modelId",StringX.getUUID());//uuid
                        resMap.put("subject","屏蔽机房漏水告警:"+DeviceKongTiao+hvalue);//告警信息自定义
                        resMap.put("level",1);//级别--->告警级别
                        resMap.put("createTime",StringX.getCurrentDate());//创建时间
                        JSONObject json = JSONObject.fromObject(resMap);
                        //推送方法介入
                        GetTodoNumWebserviceImpService gwi = new GetTodoNumWebserviceImpService();
                        IGetTodoNumWebservice getTodoNumWebservice = gwi.getGetTodoNumWebserviceImpPort();
                        //执行推送
                        String str = getTodoNumWebservice.setAlarmTodo(json.toString());
                    }else{
                        System.out.println("屏蔽机房漏水监测正常,暂无消息推送");
                    }
                }
            }
        } catch (Exception e) {
            System.out.println("屏蔽机房漏水监测推送出现异常!");
            e.printStackTrace();
        }
    }

    /**
     * 1103添加
     * 配电室漏水监测告警信息推送方法
     */
    public void SendPeiDianShiLoushuiMessage(){
        try {
            List<Map<String, Object>> paramFive = upsMapper.PeiDianShiLoushuiMessage();
            if (paramFive.size()>0) {//结果首先大于0 其次判断告警信息如果不是正常则需要报警
                for(int i=0;i<paramFive.size();i++){
                    String hvalue =  String.valueOf(paramFive.get(i).get("hvalue"));//告警值漏水未漏水
                    System.out.println(hvalue);
                    String DeviceKongTiao = String.valueOf(paramFive.get(i).get("insname"));//精确到哪个空调
                    System.out.println(DeviceKongTiao);
                    if (!"未漏水".equals(hvalue)) {//判断如果非异常====>告警推送
                        Map<String,Object> resMap = new HashMap<>();
                        resMap.put("appName","告警");//告警
                        resMap.put("modelName","配电室漏水监测");//来自哪个系统哪个模块
                        resMap.put("modelId",StringX.getUUID());//uuid
                        resMap.put("subject","配电室漏水告警:"+DeviceKongTiao+hvalue);//告警信息自定义
                        resMap.put("level",1);//级别--->告警级别
                        resMap.put("createTime",StringX.getCurrentDate());//创建时间
                        JSONObject json = JSONObject.fromObject(resMap);
                        //推送方法介入
                        GetTodoNumWebserviceImpService gwi = new GetTodoNumWebserviceImpService();
                        IGetTodoNumWebservice getTodoNumWebservice = gwi.getGetTodoNumWebserviceImpPort();
                        //执行推送
                        String str = getTodoNumWebservice.setAlarmTodo(json.toString());
                    }else{
                        System.out.println("配电室漏水监测正常,暂无消息推送");
                    }
                }
            }
        } catch (Exception e) {
            System.out.println("配电室漏水监测推送出现异常!");
            e.printStackTrace();
        }
    }

    /**
     * 1109添加
     * 档案柜
     */
    @Override
    public void SendDangAnGuiMessage() {
        try{
            String url = "http://156.8.11.105:9999/IdfWCFServer/RestFullWcf/OrderGetRunStatus";
            String json = "";
            String encoding ="utf-8";
            String res = HttpUtil.sendPostDataByJson(url,json,encoding);
            res = res.substring(1,res.length()-1);
            res = res.replace("\\\"","\"");
            System.out.println(res);
            JSONArray array = JSONArray.fromObject(res);
            String mark1 = "";
            String mark2 = "";
            List<JSONObject> oneList = new ArrayList();
            List<JSONObject> TwoList = new ArrayList();
            for(int i=0;i<array.size();i++){
                if(i<=7){
                    oneList.add((JSONObject) array.get(i));
                }else if(i>=9){
                    TwoList.add((JSONObject) array.get(i));
                }
            }
            for(int k=0;k<oneList.size();k++){
                //如果其中有一个==1 说明1区有一个是打开的档案
                if("1".equals(String.valueOf(oneList.get(k).get("iStatus")))){
                    mark1 = String.valueOf(oneList.get(k).get("iMapCol"));
                    break;
                }else if("0".equals(String.valueOf(oneList.get(k).get("iStatus")))){
                    mark1 = "0";
                }else if("-1".equals(String.valueOf(oneList.get(k).get("iStatus")))){
                    mark1 = "-1";
                }
            }
            for(int k=0;k<TwoList.size();k++){
                //如果其中有一个==1 说明1区有一个是打开的档案
                if("1".equals(String.valueOf(TwoList.get(k).get("iStatus")))){
                    mark2 = String.valueOf(TwoList.get(k).get("iMapCol"));
                    break;
                }else if("0".equals(String.valueOf(TwoList.get(k).get("iStatus")))){
                    mark2 = "0";
                }else if("-1".equals(String.valueOf(TwoList.get(k).get("iStatus")))){
                    mark2 = "-1";
                }
            }
            String tuisongurl = "http://156.8.11.105:80/api/pushdagopenstate";
            String resMark = mark1+","+mark2;

            System.out.println("mark1:"+mark1);
            System.out.println("mark2:"+mark2);
            String body5 = sendPostDataByJson(tuisongurl,resMark, "utf-8");
            System.out.println(body5);
        }catch (Exception e){
            System.out.println("SendDangAnGuiMessage Method error!");
            e.printStackTrace();
        }


    }

    /**
     * post请求传输json数据
     *
     * @param urls url地址
     * @param json json数据
     * @param encoding 编码方式
     * @return
     * @throws ClientProtocolException
     * @throws IOException
     */
    public static String sendPostDataByJson(String urls, String json, String encoding) throws ClientProtocolException, IOException {
        String result = "";

        // 创建httpclient对象
        CloseableHttpClient httpClient = HttpClients.createDefault();
        // 创建post方式请求对象
        HttpPost httpPost = new HttpPost(urls);
        // 设置参数到请求对象中
        StringEntity stringEntity = new StringEntity(json, ContentType.APPLICATION_JSON);
        stringEntity.setContentEncoding("utf-8");
        httpPost.setEntity(stringEntity);

        // 执行请求操作，并拿到结果（同步阻塞）
        CloseableHttpResponse response = httpClient.execute(httpPost);

        // 获取结果实体
        // 判断网络连接状态码是否正常(0--200都数正常)
        if (response.getStatusLine().getStatusCode() == HttpStatus.SC_OK) {
            result = EntityUtils.toString(response.getEntity(), "utf-8");
        }
        // 释放链接
        response.close();

        return result;
    }

    /**
     * 0421 修改备份 只推送状态为5的消息
     * @param typeNum
     */
//    public void SendOAfiveModelMessageNotAppoint(String typeNum) {
//        try{
//            String time = StringX.getCurrentDate();//当前时间
//            Map<String,Object> paramMap = new HashMap<>();
//
//            String appName = "告警";//写死内容
//            String modelName = "未知";//哪个模块
//            if("1".equals(typeNum)){
//                modelName="邮件系统";
//                paramMap.put("FTP",FTP1);
//            }else if("2".equals(typeNum)){
//                modelName="OA系统";
//                paramMap.put("FTP",FTP2);
//            }else if("3".equals(typeNum)){
//                modelName="公文传输";
//                paramMap.put("FTP",FTP3);
//            }else if("4".equals(typeNum)){
//                modelName="电子档案";
//                paramMap.put("FTP",FTP4);
//            }else if("5".equals(typeNum)){
//                modelName="机要交换";
//                paramMap.put("FTP",FTP5);
//            }
//            String modelId = StringX.getUUID();//获取uuid
//            String subject = modelName+":出现异常,请及时处理!";//报警内容
//            String createTime = time;//创建时间
//            Map<String,Object> RESD = zcyxztService.selectYWXTListD(paramMap);
//            if(RESD!=null){//当采集到的数据不为空时执行推送信息
//                String gjLeavel = String.valueOf(RESD.get("fSeverity"));//告警等级  （异常为5；告警为4；其余3，2，1为正常）：
//                if("5".equals(gjLeavel) || "4".equals(gjLeavel) ){//如果告警级别为4或者5 则执行推送
//                    Map<String,Object> resMap = new HashMap<>();
//                    resMap.put("appName",appName);//告警
//                    resMap.put("modelName",modelName);//来自哪个系统哪个模块
//                    resMap.put("modelId",modelId);//uuid
//                    resMap.put("subject",subject);//告警信息自定义
//                    if("5".equals(gjLeavel)){
//                        resMap.put("level",1);//级别--->告警级别  转成信息推送格式的级别 1 为紧急  2 为急 3 为一版
//                    }
//                    else if("4".equals(gjLeavel)){
//                        resMap.put("level",2);//级别--->告警级别  转成信息推送格式的级别
//                    }
//                    resMap.put("createTime",createTime);//创建时间
//                    JSONObject json = JSONObject.fromObject(resMap);
//                    //推送方法介入
//                    GetTodoNumWebserviceImpService gwi = new GetTodoNumWebserviceImpService();
//                    IGetTodoNumWebservice getTodoNumWebservice = gwi.getGetTodoNumWebserviceImpPort();
//                    //执行推送
//                    String str = getTodoNumWebservice.setAlarmTodo(json.toString());
//                }else{
//                    System.out.println("不满足告警级别,不执行推送!");
//                }
//            }else{
//                System.out.println(modelName+"暂无告警信息推送");
//            }
//        }catch (Exception e){
//            System.out.println("定时推动告警信息出现异常,请联系管理员!");
//        }
//
//    }


    @Override
    public List<Map<String,Object>> test() {
        return upsMapper0628.test();
    }

    //=======0708  新增===============================================带参数
    @Override
    public void sendOaWithParams(String devid, String str,String msg) {
        try {
            Map<String, Object> paramMap = new HashMap<>();
            paramMap.put("devid",devid);
            paramMap.put("str",str);
            String isSend = "false";
            //System.out.println("=================测试推送方法开始====================");
            System.out.println("获取参数=======devid参数值:"+devid+"    str参数值:"+str);
            List<Map<String, Object>> paramFive = upsMapper0628.SendMessageForParam(paramMap);
            if (null !=paramFive && paramFive.size()>0) {//结果首先大于0 其次判断告警信息如果不是正常则需要报警
                for(int i=0;i<paramFive.size();i++){//遍历集合 若其中有一个告警 为true时  则isSend为true
                    String mark = String.valueOf(paramFive.get(i).get("alarm"));
                    if("true".equals(mark)){//若其中有一个为true 则执行推送标志
                        isSend = "true";
                    }
                }
                if ("true".equals(isSend)) {//判断如果为true ====>告警推送
                    Map<String,Object> resMap = new HashMap<>();
                    resMap.put("appName","告警");//告警
                    resMap.put("modelName",msg);//来自哪个系统哪个模块
                    resMap.put("modelId",StringX.getUUID());//uuid
                    resMap.put("subject",msg+"告警,请尽快处理!");//告警信息自定义
                    resMap.put("level",1);//级别--->告警级别
                    resMap.put("createTime",StringX.getCurrentDate());//创建时间
                    JSONObject json = JSONObject.fromObject(resMap);
                    //推送方法介入
                    GetTodoNumWebserviceImpService gwi = new GetTodoNumWebserviceImpService();
                    IGetTodoNumWebservice getTodoNumWebservice = gwi.getGetTodoNumWebserviceImpPort();
                    //执行推送
                    getTodoNumWebservice.setAlarmTodo(json.toString());
                    System.out.println(msg+"出现告警-->执行消息推送!");
                }else{
                    System.out.println(msg+",暂无消息推送");
                }
            }
            //System.out.println("=================测试推送方法结束====================");
        } catch (Exception e) {
            System.out.println(msg+"推送出现异常!");
        }
    }

    //=======0709  升级之前oa推送的消息===============================================带参数

    @Override
    public void SendYanGanAlertMessageUpgrade(String devid, String str, String msg) {
        try {
            Map<String, Object> paramMap = new HashMap<>();
            paramMap.put("devid",devid);
            paramMap.put("str",str);
            String isSend = "false";
            System.out.println("获取参数=======devid参数值:"+devid+"    str参数值:"+str);
            List<Map<String, Object>> paramFive = upsMapper.SendMessageForParamUpgrade(paramMap);
            if (null !=paramFive && paramFive.size()>0) {//结果首先大于0 其次判断告警信息如果不是正常则需要报警
                for(int i=0;i<paramFive.size();i++){
                    String mark = String.valueOf(paramFive.get(i).get("alarm"));
                    if("true".equals(mark)){//若其中有一个为true 则执行推送标志
                        isSend = "true";
                    }
                }
                if ("true".equals(isSend)) {//判断如果为true ====>告警推送
                    Map<String,Object> resMap = new HashMap<>();
                    resMap.put("appName","告警");//告警
                    resMap.put("modelName",msg);//来自哪个系统哪个模块
                    resMap.put("modelId",StringX.getUUID());//uuid
                    resMap.put("subject",msg+"告警,请尽快处理!");//告警信息自定义
                    resMap.put("level",1);//级别--->告警级别
                    resMap.put("createTime",StringX.getCurrentDate());//创建时间
                    JSONObject json = JSONObject.fromObject(resMap);
                    //推送方法介入
                    GetTodoNumWebserviceImpService gwi = new GetTodoNumWebserviceImpService();
                    IGetTodoNumWebservice getTodoNumWebservice = gwi.getGetTodoNumWebserviceImpPort();
                    //执行推送
                    getTodoNumWebservice.setAlarmTodo(json.toString());
                    System.out.println(msg+"出现告警-->执行消息推送!");
                }else{
                    System.out.println(msg+",暂无消息推送");
                }
            }
        } catch (Exception e) {
            System.out.println(msg+"推送出现异常!");
        }
    }
}
