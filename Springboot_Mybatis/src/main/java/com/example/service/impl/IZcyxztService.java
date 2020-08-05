package com.example.service.impl;

import com.example.mapper.test01.ZcyxztMapper;
import com.example.mapper.test04.PostgreMapper;
import com.example.service.ZcyxztService;
import net.sf.json.JSONArray;
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

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 */
@Service("ZcyxztService")
public class IZcyxztService implements ZcyxztService {

    String [] fipArrold = {"156.8.32.33"};
    String [] nameArrold = {"长春市"};


    /**
     * 20200329 新增 全省地区 共七十个ip 对应七十个地址名称
     */
    static final String [] fipArr = {
            "156.8.32.33","156.8.34.49","156.8.34.129","156.8.35.33","156.8.35.145",
            "156.8.36.145","156.8.36.33","156.8.37.145","156.8.38.129","156.8.38.49",
            "156.8.37.49","156.8.150.33","156.8.144.33","156.8.146.33","156.8.148.129",
            "156.8.146.129","156.8.147.33","156.8.147.129","156.8.148.33","156.8.149.33",
            "156.8.149.129","156.8.96.33","156.8.98.33","156.8.98.129","156.8.100.129",
            "156.8.99.129","156.8.101.33","156.8.100.33","156.8.160.33","156.8.162.33",
            "156.8.163.51","156.8.163.147","156.8.163.129","156.8.164.33","156.8.64.33",
            "156.8.66.33","156.8.66.129","156.8.68.51","156.8.68.147","156.8.162.147",
            "156.8.99.33","156.8.80.36","156.8.82.33","156.8.82.129","156.8.83.49",
            "156.8.83.145","156.8.48.51","156.8.54.51","156.8.51.51","156.8.50.51",
            "156.8.50.147","156.8.53.51","156.8.52.51","156.8.51.147","156.8.52.129",
            "156.8.53.147","156.8.67.51","156.8.112.51","156.8.114.33","156.8.116.51",
            "156.8.114.129","156.8.115.51","156.8.116.147","156.8.115.147","156.8.128.33",
            "156.8.131.33","156.8.130.33","156.8.130.129","156.8.132.33","156.8.131.145"};
    static final String [] nameArr = {
            "长春市", "朝阳区", "南关区", "宽城区", "二道区",
            "绿园区", "双阳区", "九台区", "榆树市", "农安县",
            "德惠市","长白山", "延边州", "延吉市", "珲春市",
            "图们市", "敦化市", "龙井市", "和龙市", "汪清县",
            "安图县","通化市", "东昌区", "二道江区", "辉南县",
            "集安市", "柳河县", "通化县", "松原市", "宁江区",
            "扶余市", "前郭县", "长岭县","乾安县","四平市",
            "铁西区","铁东区", "梨树县", "伊通县", "双辽市",
            "梅河口", "辽源市", "龙山区", "西安区","东丰县",
            "东辽县","吉林市","船营区","昌邑区","丰满区",
            "龙潭区","磐石市","蛟河市","舒兰市","桦甸市",
            "永吉县","公主岭","白山市","浑江区","江源区",
            "临江市","抚松县","靖宇县","长白县","白城市",
            "大安市","洮南市","洮北区","镇赉县","通榆县"};

    //驻派机构
    static final String [] zpjgIpArr = {"156.8.177.131"};
    static final String [] zpjgNameArr = {"驻粮资局"};
    //驻派大学
    static final String [] zpdxIpArr = {"156.8.184.3","156.8.184.67"};
    static final String [] zpdxNameArr = {"吉林大学","东北师范大学"};
    //驻派国企
    static final String [] zpgqIpArr = {"156.8.183.4"};
    static final String [] zpgqNameArr = {"驻一汽集团"};

    @Autowired
    ZcyxztMapper zcyxztMapper;

    @Autowired
    PostgreMapper postgreMapper;

    @Override
    public List<Map<String, Object>> selectZcyxztBaseInfoList() {
        return zcyxztMapper.selectZcyxztBaseInfoList();
    }

    @Override
    public List<Map<String, Object>> selectJkpzxxInfoList() {
        return zcyxztMapper.selectJkpzxxInfoList();
    }

    @Override
    public List<Map<String, Object>> selectJkZtZxsjInfoList() {
        return zcyxztMapper.selectJkZtZxsjInfoList();
    }

    @Override
    public List<Map<String, Object>> selectJkzxlsInfoList() {
        return zcyxztMapper.selectJkzxlsInfoList();
    }

    @Override
    public List<Map<String, Object>> selectWlsbCPULylInfoList() {
        return zcyxztMapper.selectWlsbCPULylInfoList();
    }

    @Override
    public List<Map<String, Object>> selectWlsbNCLylInfoList() {
        return zcyxztMapper.selectWlsbNCLylInfoList();
    }

    @Override
    public List<Map<String, Object>> selectZjsbCPULylInfoList() {
        return zcyxztMapper.selectZjsbCPULylInfoList();
    }

    @Override
    public List<Map<String, Object>> selectZjsbNCLylInfoList() {
        return zcyxztMapper.selectZjsbNCLylInfoList();
    }

    /**
     * 资产信息 首页列表接口
     * @return
     */
    @Override
    public List<Map<String, Object>> selectZcxxListDate() {
        return zcyxztMapper.selectZcxxListDate();
    }

    @Override
    public Map<String, Object> selectYWXTListA(Map<String, Object> paramMap) {
        return zcyxztMapper.selectYWXTListA(paramMap);
    }

    @Override
    public Map<String, Object> selectYWXTListB(Map<String, Object> paramMap) {
        return zcyxztMapper.selectYWXTListB(paramMap);
    }

    @Override
    public Integer selectYWXTListC(Map<String, Object> paramMap) {
        return zcyxztMapper.selectYWXTListC(paramMap);
    }

    @Override
    public Map<String, Object> selectYWXTListD(Map<String, Object> paramMap) {
        return zcyxztMapper.selectYWXTListD(paramMap);
    }

    @Override
    public List<Map<String, Object>> selectJkdListDate() {
        return zcyxztMapper.selectJkdListDate();
    }

    @Override
    public List<Map<String, Object>> selectXnhZycListDate() {
        return zcyxztMapper.selectXnhZycListDate();
    }


//    /**
//     * 返回警告数量
//     * @return
//     */
//    public String selectjgsnum(){
//        String count = String.valueOf(jgsMapper.selectjgsnum());
//        return count;
//    }
//
//    /**
//     * 返回警告信息
//     * @return
//     */
//    @Override
//    public List<Map<String, Object>> selectjginfo() {
//        return jgsMapper.selectjginfo();
//    }
//
//    /**
//     * 返回警告信息
//     * @return
//     */
//    @Override
//    public List<Map<String, Object>> selectjginfoList() {
//        return jgsMapper.selectjginfoList();
//    }

    /**
     * 全省网络监控 消息推送
     */
    @Override
    public void SengEarchInfo() {
        String   url = "http://156.8.11.105:8999/api/PushLinkState";
        Map<String, Object> paramMap = new HashMap<>();
        List<Map<String,String>> reslist = new ArrayList<>();
        try{
            for(int i=0;i<fipArr.length;i++){
                Map<String,String> resMap = new HashMap<>();
                paramMap.put("fip",fipArr[i]);
                Integer count =  zcyxztMapper.getErrorCountByFmoip(paramMap);
                resMap.put("Name",nameArr[i]);
                if(count>0){
                    resMap.put("State","离线");
                    System.out.println(nameArr[i]+":出现故障！");
                }else{
                    resMap.put("State","在线");
                }
                reslist.add(resMap);
            }
                JSONArray jsonArray1 = JSONArray.fromObject(reslist);
                String body = sendPostDataByJson(url,jsonArray1.toString(), "utf-8");
                System.out.println(body);
        }catch (Exception e){
            System.out.println("全省网络监控推送出现异常！");
        }

    }

    @Override
    public List<Map<String, Object>> selectZPYXTSInfoList() {
        //返回值中 需要返回   名称 ip 状态(在线 离线 故障) 类别 等信息
        //驻派机构
        List<Map<String,Object>> resList = new ArrayList<>();
        Map<String, Object> paramzpjgMap = new HashMap<>();
        if(zpjgIpArr.length>0) {
            for (int i = 0; i < zpjgIpArr.length; i++) {//驻派机构
                Map<String, Object> resMap = new HashMap<>();
                paramzpjgMap.put("fip", zpjgIpArr[i]);
                Integer count = zcyxztMapper.getErrorCountByFmoip(paramzpjgMap);
                resMap.put("Name", zpjgNameArr[i]);
                resMap.put("Ip", zpjgIpArr[i]);
                resMap.put("Type", "1");//类别  //驻派机构 为1 驻派大学 2 驻派国企 3
                if (count > 0) {
                    resMap.put("State", "故障");
                    System.out.println(zpjgNameArr[i] + ":出现故障！");
                } else {
                    resMap.put("State", "在线");
                }
                resList.add(resMap);
            }
        }
        if(zpdxIpArr.length>0){
            for(int i=0;i<zpdxIpArr.length;i++){//驻派大学
                Map<String,Object> resMap = new HashMap<>();
                paramzpjgMap.put("fip",zpdxIpArr[i]);
                Integer count =  zcyxztMapper.getErrorCountByFmoip(paramzpjgMap);
                resMap.put("Name",zpdxNameArr[i]);
                resMap.put("Ip",zpdxIpArr[i]);
                resMap.put("Type","2");//类别  //驻派机构 为1 驻派大学 2 驻派国企 3
                if(count>0){
                    resMap.put("State","故障");
                    System.out.println(zpdxNameArr[i]+":出现故障！");
                }else{
                    resMap.put("State","在线");
                }
                resList.add(resMap);
            }
        }
        if(zpgqIpArr.length>0){
            for(int i=0;i<zpgqIpArr.length;i++){//驻派国企
                Map<String,Object> resMap = new HashMap<>();
                paramzpjgMap.put("fip",zpgqIpArr[i]);
                Integer count =  zcyxztMapper.getErrorCountByFmoip(paramzpjgMap);
                resMap.put("Name",zpgqNameArr[i]);
                resMap.put("Ip",zpgqIpArr[i]);
                resMap.put("Type","3");//类别  //驻派机构 为1 驻派大学 2 驻派国企 3
                if(count>0){
                    resMap.put("State","故障");
                    System.out.println(zpgqNameArr[i]+":出现故障！");
                }else{
                    resMap.put("State","在线");
                }
                resList.add(resMap);
            }
        }


        return resList;
    }

    @Override
    public Map<String,Object> getDate() {
        return postgreMapper.getDate();
    }


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

//    public static void main(String args[]){
//        System.out.println("main方法开始");
//        long a1 = System.currentTimeMillis();
//        System.out.println(a1);
//        for(int i=0;i<fipArrTest.length;i++){
//            System.out.println(nameArrTest[i]);
//        }
//        System.out.println("方法结束");
//        long a2 = System.currentTimeMillis();
//        System.out.println(a2);
//        System.out.println(a2-a1);
//    }
}
