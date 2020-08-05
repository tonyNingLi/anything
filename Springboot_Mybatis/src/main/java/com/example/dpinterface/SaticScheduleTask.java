package com.example.dpinterface;

import com.example.service.UpsService;
import com.example.service.ZcyxztService;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * 定时任务相关
 * 推送动环信息
 */

@Component
@Configuration      //1.主要用于标记配置类，兼备Component的效果。
@EnableScheduling   // 2.开启定时任务
public class SaticScheduleTask {

    @Resource
    private UpsService upsService;
    @Resource
    private ZcyxztService zcyxztService;

    /**
     * 五大业务系统五分钟一次
     *
     * 漏水+烟感 +温湿度 5分钟
     */


    /**
     * 动环数据推送 5分钟
     */
    @Scheduled(cron = "0 */5 * * * ?")
    //或直接指定时间间隔，例如：5秒
    //@Scheduled(fixedRate=5000)
    private void DongHuanWorksTasks() {
       try{
//           温湿度推送
           upsService.selectDhInfoListtwo();
//           烟感推送
           upsService.SendYanganMessage();
//           漏水
           upsService.SendLoushuiMessage();
//           空调推送
           upsService.SendKongTiaoMessage();

       }catch (Exception e){
           System.out.println(" DongHuanWorksTasks Methods error!");
           e.printStackTrace();
       }
    }
    /**
     * 动环数据推送  6秒
     */
    @Scheduled(fixedRate=6000)
    private void DongHuanDangAnGuiTasks() {
       try{
//           档案柜
           upsService.SendDangAnGuiMessage();
       }catch (Exception e){
           System.out.println(" DongHuanDangAnGuiTasks Methods error!");
           e.printStackTrace();
       }

    }


    /**
     * 业务系统定时任务  10分钟
     * 测试 1分钟推送
     */
    @Scheduled(cron = "0 */10 * * * ?")
    private void FiveWorksTasks() {
       try{
           //业务系统推送    //==>姜帅
           upsService.SendOAfiveModelMessageNotAppoint("1");
           upsService.SendOAfiveModelMessageNotAppoint("2");
           upsService.SendOAfiveModelMessageNotAppoint("3");
           upsService.SendOAfiveModelMessageNotAppoint("4");
           upsService.SendOAfiveModelMessageNotAppoint("5");

           //档案室烟感就一个
           upsService.SendYanGanAlertMessageUpgrade("417","1","档案室烟感设备监测");//新逻辑alarm判断
           //档案室漏水就一个
           upsService.SendYanGanAlertMessageUpgrade("416","2","档案室漏水设备监测");//新逻辑alarm判断
           //屏蔽机房消防监测
           upsService.SendYanGanAlertMessageUpgrade("389","3","屏蔽机房消防监测");//新逻辑alarm判断
           //屏蔽机房漏水告警信息推送方法
           upsService.SendYanGanAlertMessageUpgrade("391","","屏蔽机房漏水监测设备");//新逻辑alarm判断
           //配电室漏水监测告警信息推送方法
           upsService.SendYanGanAlertMessageUpgrade("392","","配电室漏水监测设备");//新逻辑alarm判断
           //温湿度告警推动-----0724  新增
           upsService.SendYanGanAlertMessageUpgrade("364","6","屏蔽机房1#温湿度设备检测");
           upsService.SendYanGanAlertMessageUpgrade("364","7","屏蔽机房2#温湿度设备检测");
           upsService.SendYanGanAlertMessageUpgrade("364","8","屏蔽机房3#温湿度设备检测");
           upsService.SendYanGanAlertMessageUpgrade("364","9","屏蔽机房4#温湿度设备检测");
           upsService.SendYanGanAlertMessageUpgrade("364","10","屏蔽机房5#温湿度设备检测");
           upsService.SendYanGanAlertMessageUpgrade("364","11","屏蔽机房6#温湿度设备检测");
           upsService.SendYanGanAlertMessageUpgrade("364","12","屏蔽机房7#温湿度设备检测");
           //配电室温湿度
           upsService.SendYanGanAlertMessageUpgrade("388","13","配电室8#温湿度设备检测");
           upsService.SendYanGanAlertMessageUpgrade("388","14","配电室9#温湿度设备检测");
           upsService.SendYanGanAlertMessageUpgrade("388","15","配电室10#温湿度设备检测");
           upsService.SendYanGanAlertMessageUpgrade("388","16","配电室11#温湿度设备检测");
           //档案室温湿度
           upsService.SendYanGanAlertMessageUpgrade("415","17","档案室1#温湿度设备检测");
           upsService.SendYanGanAlertMessageUpgrade("415","18","档案室2#温湿度设备检测");
           upsService.SendYanGanAlertMessageUpgrade("415","19","档案室3#温湿度设备检测");
           upsService.SendYanGanAlertMessageUpgrade("415","20","档案室4#温湿度设备检测");
           //温湿度告警推动-----0724  新增结束---------------------

           //=======0708====新增====温湿度
           upsService.sendOaWithParams("364","1","吉莲涉密备份机房1#温湿度设备监测");
           upsService.sendOaWithParams("364","2","吉莲涉密备份机房2#温湿度设备监测");
           upsService.sendOaWithParams("364","3","吉莲涉密备份机房3#温湿度设备监测");
           upsService.sendOaWithParams("364","4","吉莲涉密备份机房4#温湿度设备监测");
           upsService.sendOaWithParams("364","5","吉莲涉密备份机房5#温湿度设备监测");
           upsService.sendOaWithParams("364","6","吉莲涉密备份机房6#温湿度设备监测");
           upsService.sendOaWithParams("364","7","吉莲涉密备份机房7#温湿度设备监测");
           upsService.sendOaWithParams("364","8","吉莲涉密备份机房8#温湿度设备监测");
           upsService.sendOaWithParams("388","9","吉莲涉密备份机房9#温湿度设备监测");
           upsService.sendOaWithParams("388","10","吉莲涉密备份机房10#温湿度设备监测");
           upsService.sendOaWithParams("388","11","吉莲涉密备份机房11#温湿度设备监测");
           upsService.sendOaWithParams("388","12","吉莲涉密备份机房12#温湿度设备监测");
           //=======0708====新增====烟感
           upsService.sendOaWithParams("389","13","吉莲涉密备份--消防主机烟感设备监测");
           upsService.sendOaWithParams("389","14","吉莲涉密备份--屏蔽机房天窗烟感设备监测");
           upsService.sendOaWithParams("389","15","吉莲涉密备份--配电室新风机烟感设备监测");
           //=======0708====新增====漏水
           upsService.sendOaWithParams("391","16", "吉莲涉密备份--屏蔽机房A01空调漏水监测");
           upsService.sendOaWithParams("391","17", "吉莲涉密备份--屏蔽机房A02空调漏水监测");
           upsService.sendOaWithParams("391","18", "吉莲涉密备份--屏蔽机房A03空调漏水监测");
           upsService.sendOaWithParams("391","19", "吉莲涉密备份--屏蔽机房B01空调漏水监测");
           upsService.sendOaWithParams("392","20", "吉莲涉密备份--配电室1#空调漏水监测");
           upsService.sendOaWithParams("392","21", "吉莲涉密备份--配电室2#空调漏水监测");
           upsService.sendOaWithParams("391","22", "吉莲涉密备份--屏蔽机房B02空调漏水监测");
           upsService.sendOaWithParams("391","23", "吉莲涉密备份--屏蔽机房B03空调漏水监测");
           upsService.sendOaWithParams("417","24", "吉莲涉密备份--备件间漏水监测");

       }catch (Exception e){
           System.out.println("FiveWorksTasks Method + 0708add Methods error!");
           e.printStackTrace();
       }
    }
    /**
     * 全省网络监控 消息推送  4分钟
     */
    @Scheduled(cron = "0 */4 * * * ?")
    private void EarchSendInfoMethod() {
       try{
           zcyxztService.SengEarchInfo();
       }catch (Exception e){
           System.out.println("EarchSendInfoMethod  error!");
           e.printStackTrace();
       }
    }
}