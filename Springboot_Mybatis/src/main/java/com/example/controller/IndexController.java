package com.example.controller;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 受拦截页面
 * MyWebAppConfigurer 方法配置拦截
 */
@Controller
@RequestMapping("/system")
public class IndexController {
    private static Logger Log = Logger.getLogger(IndexController.class);

    //0911新增
    @RequestMapping("dashboad")
    public String dashboad() {
        return "dashboad";
    }

    @RequestMapping("index")
    public String index() {
        return "index";
    }

    @RequestMapping("oa")
    public String oa() {
        return "oa";
    }

    @RequestMapping("jsdd")
    public String jsdd() {
        return "jsdd";
    }

    @RequestMapping("gdgl")
    public String gdgl() {
        return "gdgl";
    }

    @RequestMapping("gjxx")
    public String gjxx() {
        return "gjxx";
    }

    @RequestMapping("zcgl")
    public String zcgl() {
        return "zcgl";
    }

    //1013新增
    @RequestMapping("wjgzdxx")
    public String wjgzdxx() {
        return "wjgzdxx";
    }
    //1013新增
    @RequestMapping("pzjgzdxx")
    public String pzjgzdxx() {
        return "pzjgzdxx";
    }
    //1022新增
    @RequestMapping("map")
    public String map() {
        System.out.println("appkey_:");
        return "map";
    }
    @RequestMapping("index1")
    public String detest() {
        Log.info("日志内容");
        System.out.println("测试页面输出语句!");
        return "index1";
    }
    @RequestMapping("helloworld")
    public String helloworld() {
        return "helloworld";
    }

    //新增页面映射方法1109
    @RequestMapping("video1")
    public String video1() {
        return "video1";
    }
    @RequestMapping("video2")
    public String video2() {
        return "video2";
    }
    @RequestMapping("video3")
    public String video3() {
        return "video3";
    }
    @RequestMapping("video4")
    public String video4() {
        return "video4";
    }
    @RequestMapping("video5")
    public String video5() {
        return "video5";
    }
    @RequestMapping("video6")
    public String video6() {
        return "video6";
    }
    @RequestMapping("video7")
    public String video7() {
        return "video7";
    }
    @RequestMapping("video8")
    public String video8() {
        return "video8";
    }
    @RequestMapping("video9")
    public String video9() {
        return "video9";
    }
    @RequestMapping("video10")
    public String video10() {
        return "video10";
    }
    @RequestMapping("video11")
    public String video11() {
        return "video11";
    }
    @RequestMapping("video12")
    public String video12() {
        return "video12";
    }
    @RequestMapping("video13")
    public String video13() {
        return "video13";
    }
    @RequestMapping("video14")
    public String video14() {
        return "video14";
    }
    @RequestMapping("video15")
    public String video15() {
        return "video15";
    }
    @RequestMapping("video16")
    public String video16() {
        return "video16";
    }

}
