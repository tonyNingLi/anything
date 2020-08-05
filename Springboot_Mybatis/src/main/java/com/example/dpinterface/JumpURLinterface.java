package com.example.dpinterface;

import com.example.utils.StringX;
import org.apache.http.HttpStatus;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 态势感知跳转用接口
 * 目前设计为重定向到别的地址
 */

@Controller
@RequestMapping("/jump")
public class JumpURLinterface {

    //登录账号
    private  static  final  String  LOGAIN_NAME = "admin";
    //登录密码
    private  static  final  String  SECRET_CORE = "21232f297a57a5a743894a0e4a801fc3";
    //端口号
    private  static  final  String  DUANKOU_NUM = "8080";
    //服务器地址
    private  static  final  String  ADDR_URL = "156.8.11.22";



    //1021新增接口====>返回url地址下返回的数据
    //此方法未删  新增0331 两个接口
    @RequestMapping("getUrlAssetRiskinfo")
    @ResponseBody
    public String getUrlAssetRiskinfo() throws IOException {

        try{
            String url="http://156.8.11.233:8888/leadsec-soc/getAsset/getAssetRiskInfo?start=0&size=10";
            return sendGetData(url,"utf-8");
        }catch ( Exception e){
            return "error";
        }
    }
    //0331 新增接口====>资产信息接口
    @RequestMapping("getZcxxinfo")
    @ResponseBody
    public String getZcxxinfo(String pageNum,String pageSize) throws IOException {
        try{
            String url="http://156.8.11.233:8888/leadsec-csa/intfc/asset/list";
            if(StringX.isNotEmpty(pageNum) && StringX.isNotEmpty(pageSize)){
                url +="?pageNum="+pageNum+"&pageSize="+pageSize;
            }
            return sendGetData(url,"utf-8");
        }catch ( Exception e){
            e.printStackTrace();
            return "error";
        }
    }
    //0331 新增接口====>资产告警信息接口
    @RequestMapping("getGjZcxxinfo")
    @ResponseBody
    public String getGjZcxxinfo(String state,String level,String hour) throws IOException {
        try{
            //String url="http://156.8.11.233:8888/leadsec-csa/intfc/asset/alert/list?pageNum=0&pageSize=0&state=0&level=5&hour=24";
//            String url="http://156.8.11.233:8888/leadsec-csa/intfc/asset/alert/list"; 0403版之前
            String url="http://156.8.11.233:8888/leadsec-csa/intfc/alert/list";
            if(StringX.isNotEmpty(state) && StringX.isNotEmpty(level)  && StringX.isNotEmpty(hour)){
                url +="?state="+state+"&level="+level+"&hour="+hour;
            }
            return sendGetData(url,"utf-8");
        }catch ( Exception e){
            e.printStackTrace();
            return "error";
        }
    }

    //0403 通用接口
    @RequestMapping("getCommonDataWithUrlAndParams")
    @ResponseBody
    public String getCommonDataWithUrlAndParams(String commonUrl) throws IOException {
        try{
            String url="";
            if(StringX.isNotEmpty(commonUrl)){
                url =commonUrl;
            }else{
                return "{\n" +
                        "\t\"flag\": false\n" +
                        "}";
            }
            return sendGetData(url,"utf-8");
        }catch ( Exception e){
            e.printStackTrace();
            return "getCommonDataWithUrlAndParams method have error!";
        }
    }
    //告警跳转
    @RequestMapping("tsgzGjJump")
    public String tsgzGjJump(HttpServletResponse response) throws IOException {
        System.out.println("执行跳转");
        //response.sendRedirect("www.baidu.com");
        String jurl = ADDR_URL+":"+DUANKOU_NUM+"/itims/login.action?userName="+LOGAIN_NAME+"&pwd="+SECRET_CORE+"&DMSN=998";
        System.out.println(jurl);
        return "redirect:http://"+jurl;
    }


    //二级页跳转可视化机房返回url
    //http://156.8.11.22:8080/itims/alm/alarm.jsp?mnSbj=alarm&mnCMP=2_0_2&lunchFrom=portal&lunchFuncID=rootalarm_view_active
    //http://10.2.13.15:8080/itims/room/view/view.jsp?mnSbj=topo&mnCMP=1_2&lunchFrom=start&lunchFuncID=roottopo_room
    @RequestMapping("tsgzKshjfJump")
    public String tsgzKshjfJump(){
        String jurl = ADDR_URL+":"+DUANKOU_NUM+"/itims/room/view/view.jsp?mnSbj=topo&mnCMP=1_2&lunchFrom=start&lunchFuncID=roottopo_room";
        return "redirect:http://"+jurl;
    }


    public String sendGetData(String url, String encoding) throws ClientProtocolException, IOException {
        String result = "";

        // 创建httpclient对象
        CloseableHttpClient httpClient = HttpClients.createDefault();

        // 创建get方式请求对象
        HttpGet httpGet = new HttpGet(url);
        httpGet.addHeader("Content-type", "application/json");
        // 通过请求对象获取响应对象
        CloseableHttpResponse response = httpClient.execute(httpGet);

        // 获取结果实体
        // 判断网络连接状态码是否正常(0--200都数正常)
        if (response.getStatusLine().getStatusCode() == HttpStatus.SC_OK) {
            result = EntityUtils.toString(response.getEntity(), "utf-8");
        }
        // 释放链接
        response.close();

        return result;
    }
}