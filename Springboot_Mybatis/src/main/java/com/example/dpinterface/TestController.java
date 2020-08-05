//package com.example.dpinterface;
//
//import com.example.mapper.test03.UpsMapper;
//import com.example.utils.StringX;
//import com.example.webserversetalarmtodo.GetTodoNumWebserviceImpService;
//import com.example.webserversetalarmtodo.IGetTodoNumWebservice;
//import net.sf.json.JSONObject;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
//@RestController
//@Controller
//@RequestMapping("/test")
//public class TestController {
//    @Autowired
//    UpsMapper upsMapper;
//
//    @RequestMapping("dotest01")
//    public void testXiaoFangMessage(){
//        System.out.println("档案室消防监测");
//        List<Map<String, Object>> paramFive = upsMapper.selectDhInfoListfive();
//        if (paramFive.size()>0) {//结果首先大于0 其次判断告警信息如果不是正常则需要报警
//            String hvalue =  String.valueOf(paramFive.get(0).get("hvalue"));
//            System.out.println("拿到的消防监测的信息值为:"+hvalue);
//            if ("正常".equals(hvalue)) {//判断如果非异常====>告警推送
//                Map<String,Object> resMap = new HashMap<>();
//                resMap.put("appName","告警");//告警
//                resMap.put("modelName","档案室消防监测(测试)");//来自哪个系统哪个模块
//                resMap.put("modelId",StringX.getUUID());//uuid
//                resMap.put("subject","档案室消防告警测试推送:"+hvalue);//告警信息自定义
//                resMap.put("level",1);//级别--->告警级别
//                resMap.put("createTime",StringX.getCurrentDate());//创建时间
//                JSONObject json = JSONObject.fromObject(resMap);
//                //推送方法介入
//                GetTodoNumWebserviceImpService gwi = new GetTodoNumWebserviceImpService();
//                IGetTodoNumWebservice getTodoNumWebservice = gwi.getGetTodoNumWebserviceImpPort();
//                //执行推送
//                String str = getTodoNumWebservice.setAlarmTodo(json.toString());
//                System.out.println("推送返回值"+str);
//            }
//        }
//    }
//     @RequestMapping("dotest02")
//    public void testXiaoFangMessage2(){
//        System.out.println("档案室漏水监测");
//         List<Map<String, Object>> paramFive = upsMapper.SendLoushuiMessage();
//        if (paramFive.size()>0) {//结果首先大于0 其次判断告警信息如果不是正常则需要报警
//            String hvalue =  String.valueOf(paramFive.get(0).get("hvalue"));
//            System.out.println("拿到的档案室漏水监测值为:"+hvalue);
//            if ("未漏水".equals(hvalue)) {//判断如果非异常====>告警推送
//                Map<String,Object> resMap = new HashMap<>();
//                resMap.put("appName","告警");//告警
//                resMap.put("modelName","档案室漏水监测(测试)");//来自哪个系统哪个模块
//                resMap.put("modelId",StringX.getUUID());//uuid
//                resMap.put("subject","档案室漏水告警测试推送:"+hvalue);//告警信息自定义
//                resMap.put("level",1);//级别--->告警级别
//                resMap.put("createTime",StringX.getCurrentDate());//创建时间
//                JSONObject json = JSONObject.fromObject(resMap);
//                //推送方法介入
//                GetTodoNumWebserviceImpService gwi = new GetTodoNumWebserviceImpService();
//                IGetTodoNumWebservice getTodoNumWebservice = gwi.getGetTodoNumWebserviceImpPort();
//                //执行推送
//                String str = getTodoNumWebservice.setAlarmTodo(json.toString());
//                System.out.println("推送返回值"+str);
//            }
//        }
//    }
//    @RequestMapping("dotest03")
//    public void testSendPeiDianShiLoushuiMessage(){
//        System.out.println("配电室漏水方法执行");
//        List<Map<String, Object>> paramFive = upsMapper.PeiDianShiLoushuiMessage();
//        if (paramFive.size()>0) {//结果首先大于0 其次判断告警信息如果不是正常则需要报警
//            for(int i=0;i<paramFive.size();i++){
//                String hvalue =  String.valueOf(paramFive.get(i).get("hvalue"));//告警值漏水未漏水
//                System.out.println(hvalue);
//                String DeviceKongTiao = String.valueOf(paramFive.get(i).get("insname"));//精确到哪个空调
//                System.out.println(DeviceKongTiao);
//
//                if ("未漏水".equals(hvalue)) {//判断如果非异常====>告警推送
//                    Map<String,Object> resMap = new HashMap<>();
//                    resMap.put("appName","告警");//告警
//                    resMap.put("modelName","配电室漏水监测测试");//来自哪个系统哪个模块
//                    resMap.put("modelId",StringX.getUUID());//uuid
//                    resMap.put("subject","配电室漏水告警测试:"+DeviceKongTiao+hvalue);//告警信息自定义
//                    resMap.put("level",1);//级别--->告警级别
//                    resMap.put("createTime",StringX.getCurrentDate());//创建时间
//                    JSONObject json = JSONObject.fromObject(resMap);
//                    //推送方法介入
//                    GetTodoNumWebserviceImpService gwi = new GetTodoNumWebserviceImpService();
//                    IGetTodoNumWebservice getTodoNumWebservice = gwi.getGetTodoNumWebserviceImpPort();
//                    //执行推送
//                    String str = getTodoNumWebservice.setAlarmTodo(json.toString());
//                    System.out.println("++++++++++++++"+str);
//                }else{
//                    System.out.println("配电室漏水监测正常,暂无消息推送");
//                }
//            }
//        }
//    }
//
//    @RequestMapping("dotest04")
//    public void testSendPingBiLoushuiMessage(){
//        List<Map<String, Object>> paramFive = upsMapper.PingBiLoushuiMessage();
//        if (paramFive.size()>0) {//结果首先大于0 其次判断告警信息如果不是正常则需要报警
//            for(int i=0;i<paramFive.size();i++){
//                String hvalue =  String.valueOf(paramFive.get(i).get("hvalue"));//告警值漏水未漏水
//                System.out.println(hvalue);
//                String DeviceKongTiao = String.valueOf(paramFive.get(i).get("insname"));//精确到哪个空调
//                System.out.println(DeviceKongTiao);
//                if ("未漏水".equals(hvalue)) {//判断如果非异常====>告警推送
//                    Map<String,Object> resMap = new HashMap<>();
//                    resMap.put("appName","告警");//告警
//                    resMap.put("modelName","屏蔽机房漏水监测测试");//来自哪个系统哪个模块
//                    resMap.put("modelId",StringX.getUUID());//uuid
//                    resMap.put("subject","屏蔽机房漏水告警测试:"+DeviceKongTiao+hvalue);//告警信息自定义
//                    resMap.put("level",1);//级别--->告警级别
//                    resMap.put("createTime",StringX.getCurrentDate());//创建时间
//                    JSONObject json = JSONObject.fromObject(resMap);
//                    //推送方法介入
//                    GetTodoNumWebserviceImpService gwi = new GetTodoNumWebserviceImpService();
//                    IGetTodoNumWebservice getTodoNumWebservice = gwi.getGetTodoNumWebserviceImpPort();
//                    //执行推送
//                    String str = getTodoNumWebservice.setAlarmTodo(json.toString());
//                }else{
//                    System.out.println("屏蔽机房漏水监测正常,暂无消息推送");
//                }
//            }
//        }
//    }
//
// @RequestMapping("dotest05")
//    public void testSendPingBiYanGanMessage(){
//     List<Map<String, Object>> paramFive = upsMapper.selectPingBiYanGanMessage();
//     if (paramFive.size()>0) {//结果首先大于0 其次判断告警信息如果不是正常则需要报警
//         String hvalue =  String.valueOf(paramFive.get(0).get("hvalue"));
//         if ("正常".equals(hvalue)) {//判断如果非异常====>告警推送
//             Map<String,Object> resMap = new HashMap<>();
//             resMap.put("appName","告警");//告警
//             resMap.put("modelName","屏蔽机房消防监测");//来自哪个系统哪个模块
//             resMap.put("modelId",StringX.getUUID());//uuid
//             resMap.put("subject","屏蔽机房消防告警2222:"+hvalue);//告警信息自定义
//             resMap.put("level",1);//级别--->告警级别
//             resMap.put("createTime",StringX.getCurrentDate());//创建时间
//             JSONObject json = JSONObject.fromObject(resMap);
//             //推送方法介入
//             GetTodoNumWebserviceImpService gwi = new GetTodoNumWebserviceImpService();
//             IGetTodoNumWebservice getTodoNumWebservice = gwi.getGetTodoNumWebserviceImpPort();
//             //执行推送
//             String str = getTodoNumWebservice.setAlarmTodo(json.toString());
//         }else{
//             System.out.println("屏蔽机房消防监测检测正常,暂无消息推送");
//         }
//     }
//
//    }
//
//
//}
