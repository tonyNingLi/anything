package com.example.service;

import java.util.List;
import java.util.Map;

/**
 * @Author:0xOO
 * @Date: 2018/9/26 0026
 * @Time: 15:23
 */

public interface UpsService {
    //ups供电管理
    List<Map<String,Object>> selectupsinfo();
    //涉密机房温湿度
    List<Map<String,Object>> selectsmjfwsd();
    //0926
    List<Map<String,Object>> selectDhInfoList();
    List<Map<String,Object>> selectDhInfoList415();
    //动环温湿度推送数据查询
    List<Map<String,Object>> selectDhInfoListtwo();
    //带参数动环数据查询
    List<Map<String,Object>> selectDhInfoListByParam(Map<String, Object> param);
    //告警带参
    List<Map<String,Object>> DhJgInfoList(Map<String, Object> param);
    //烟感推数据
    void SendYanganMessage();
    //空调一,二推数据
    void SendKongTiaoMessage();
    //漏水
    void SendLoushuiMessage();
    //定时告警信息推送WSDL方式
    void SendOAfiveModelMessage(String typeNum);
    //不指定人信息推送
    void SendOAfiveModelMessageNotAppoint(String typeNum);
    //消防
    void  SendYanGanAlertMessage();
    //漏水
    void SendLouShuiAlertMessage();
    //屏蔽机房消防信息
    void SendPingBiYanGanMessage();
    //屏蔽机房漏水
    void SendPingBiLoushuiMessage();
    //配电室漏水
    void SendPeiDianShiLoushuiMessage();
    //档案柜状态同步推送方法
    void SendDangAnGuiMessage();
    //===================================0703 新增 =============================  适用于于3D模型
    //新漏水推送0629 新开发
    void SendLoushuiMessageWithParam(String devid,String str,String devName);
    //0629新添动环温湿度数据带参查询 优于selectDhInfoListtwo方法 无需返回值 直接在方法中做数据推送
    void selectDhInfoListWithParam(String devid,String str,String devName);
    //空调推送0629新开发
    void SendKongTiaoMessageWithParam(String devid,String devName);
    //新烟感推送0629 新开发
    void SendYanganMessageWithParam(String devid,String str,String devName);
    //===================================0703 新增结束==========================   适用于oa推送
    //测试方法
    List<Map<String,Object>> test();
    //0708数据源5的OA推送 带参数通用方法
    void sendOaWithParams(String devid, String str,String msg);
    //===================================0709 新增结束==========================   升级之前oa推送
    //OA推送 老逻辑翻新
    void  SendYanGanAlertMessageUpgrade(String devid,String str,String msg);
}
