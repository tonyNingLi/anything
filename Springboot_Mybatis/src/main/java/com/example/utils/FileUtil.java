package com.example.utils;

import org.springframework.util.ResourceUtils;

import javax.servlet.http.HttpServletResponse;
import java.io.*;

public class FileUtil {
    /**
     * 下载项目根目录下doc下的文件
     * @param response response
     * @param fileName 文件名
     * @return 返回结果 成功或者文件不存在
     */
    public static String downloadFile(HttpServletResponse response, String fileName) {
        File path = null;
        response.setHeader("content-type", "application/octet-stream");
        response.setContentType("application/octet-stream");
        try {
            response.setHeader("Content-Disposition", "attachment;filename=" + java.net.URLEncoder.encode(fileName, "UTF-8"));
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
        }
        byte[] buff = new byte[1024];
        BufferedInputStream bis = null;
        OutputStream os = null;
        try {
            path = new File(ResourceUtils.getURL("classpath:").getPath());
            System.out.println("111111111111111111111111111"+ ResourceUtils.getURL("classpath:").getPath());
            os = response.getOutputStream();
            bis = new BufferedInputStream(new FileInputStream(new File(path  + "/files/"+ fileName)));
            int i = bis.read(buff);
            while (i != -1) {
                os.write(buff, 0, buff.length);
                os.flush();
                i = bis.read(buff);
            }
        } catch (FileNotFoundException e1) {
            //e1.getMessage()+"系统找不到指定的文件";
            return "2222222";
        }catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (bis != null) {
                try {
                    bis.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return "success";
    }

}
