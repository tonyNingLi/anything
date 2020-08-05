package com.example.urlcontroller;

import org.springframework.lang.Nullable;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 添加拦截器
 * MyWebAppConfigurer 需要初始化当前类才有效
 * 目前拦截置为无效 都返回true 不拦截
 * 访问即打印 访问者的ip地址
 *
 */

public class URLInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String requestUri = request.getRequestURI();
        String contextPath = request.getContextPath();
        String url = requestUri.substring(contextPath.length());
        String themIp = getIpAddr(request);
//        System.out.println(requestUri);     //      /SjwProject/system/helloworld
//        System.out.println(contextPath);    //      /SjwProject
//        System.out.println(url);            //      /system/helloworld
//        System.out.println(themIp);         //      127.0.0.1

        SimpleDateFormat sdf  = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //时间常量
        String time = "2020-08-02 20:40:00";//指定时间
        String endTimeStr = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss:SSS").format(new Date());//系统当前时间
        Date startTime= sdf.parse(time);//指定时间变成时间
        Date endTime= sdf.parse(endTimeStr);//当前时间变成时间

//        if(startTime.getTime() < endTime.getTime()){
        if(false){
            response.sendRedirect(request.getContextPath()+"/exclude/index1");
            return false;
        }else{
//            System.out.println("访问者的ip:"+themIp);
            return true;
        }
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, @Nullable ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, @Nullable Exception ex) throws Exception {


    }
    public  String getIpAddr(HttpServletRequest request) {
        String ip = request.getHeader("x-forwarded-for");
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        if ("0:0:0:0:0:0:0:1".equals(ip)) {
            ip = "127.0.0.1";
        }
        if (ip.split(",").length > 1) {
            ip = ip.split(",")[0];
        }
        return ip;
    }


}
