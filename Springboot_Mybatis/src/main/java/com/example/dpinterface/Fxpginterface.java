package com.example.dpinterface;

import com.example.utils.HttpUtil;
import com.example.utils.RSAUtil;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
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

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.example.utils.FontUtils.decodeUnicode;

/**
 * 风险评估
 */

@Controller
@RequestMapping("/fxpg")
public class Fxpginterface {

    /**
     * 首页风险评估扇形图接口
     * @return
     */
    @RequestMapping("getFxpgDate")
    @ResponseBody
    public Map<String,Object> getFxpgDate(){
        Map<String,Object> resMap = new HashMap<>();
        try {
            List<Map<String,Object>> evaStatistics_list = new ArrayList<>();
            List<Map<String,Object>> assetStatistics_list = new ArrayList<>();
//            String url = "http://156.8.25.10:8081/security-manage/common/loadData";  //20200329风险评估url地址更换
            String url = "http://156.8.11.232:8081/security-manage/common/loadData";
            String body = null;
            body = HttpUtil.sendPostDataByJson(url, "", "utf-8");
            JSONObject result = JSONObject.fromObject(body);
            String resultStr = result.getString("result");
            if (resultStr.equals("success")) {
                double score = Double.valueOf(RSAUtil.decrypt(result.getString("score")));
                int state = Integer.valueOf(RSAUtil.decrypt(result.getString("state")));
                String time = RSAUtil.decrypt(result.getString("time"));
                resMap.put("score",score);
                String stateStr = "";//0 基本合格 1 不合格 2 合格
                if(state==0){
                    stateStr="基本合格";
                }else if(state==1){
                    stateStr="不合格";
                }else if(state==2){
                    stateStr="合格";
                }
                resMap.put("state",stateStr);
//                resMap.put("time",time);
                JSONArray evaStatistics = result.getJSONArray("evaStatistics");

                for (int i = 0; i < evaStatistics.size(); i++) {
                    Map<String,Object> e_map = new HashMap<>();
                    JSONObject eva = evaStatistics.getJSONObject(i);
                    String name = RSAUtil.decrypt(eva.getString("name"));
                    double risk = Double.valueOf(RSAUtil.decrypt(eva.getString("risk")));
                    e_map.put("name",name);
                    e_map.put("risk",risk);
                    evaStatistics_list.add(e_map);
                }
                resMap.put("evaStatisticsList",evaStatistics_list);
                JSONArray assetStatistics = result.getJSONArray("assetStatistics");
                for (int i = 0; i < assetStatistics.size(); i++) {
                    Map<String,Object> a_map = new HashMap<>();
                    JSONObject eva = assetStatistics.getJSONObject(i);
                    String name = RSAUtil.decrypt(eva.getString("name"));
                    double risk = Double.valueOf(RSAUtil.decrypt(eva.getString("risk")));
                    a_map.put("name",name);
                    a_map.put("risk",risk);
                    assetStatistics_list.add(a_map);
                }
                resMap.put("assetStatisticsList",assetStatistics_list);
            }else{
                resMap.put("errorMessage","接口返回值异常!");
            }
        } catch (IOException e) {
            resMap.put("errorMessage","接口出现错误!");
            e.printStackTrace();
        }
        return resMap;

    }

}
