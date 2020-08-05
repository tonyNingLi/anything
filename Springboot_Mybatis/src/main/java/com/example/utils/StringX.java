package com.example.utils;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.lang.RandomStringUtils;
import org.apache.commons.lang.math.RandomUtils;
import org.apache.commons.lang.time.DateFormatUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * 字符串工具类 1.时间处理 2.字符串检查 3.通用UUID生成 4.密码加密(base64)
 * 
 * @author yangyibao
 */
public class StringX {
	
	private final static String MONTHS[] = {"一月","二月","三月","四月","五月","六月","七月","八月","九月","十月","十一月","十二月"};

	/**
	 * 字符串为空判断
	 * @param cs 目标字符串
	 */
	public static boolean isEmpty(CharSequence cs) {
		return (cs == null) || (cs.length() == 0);
	}

	/**
	 * 字符串不为空判断
	 * @param cs 目标字符串
	 */
	public static boolean isNotEmpty(CharSequence cs) {
		return !isEmpty(cs);
	}

	/**
	 * 判断字符串为空格判断
	 * @param cs 目标字符串
	 */
	public static boolean isBlank(CharSequence cs) {
		int strLen;
		if ((cs == null) || ((strLen = cs.length()) == 0)) return true;
		for (int i = 0; i < strLen; i++) {
			if (!Character.isWhitespace(cs.charAt(i))) return false;
		}
		return true;
	}

	/**
	 * 判断字符串不为空格
	 * @param cs  目标字符串
	 */
	public static boolean isNotBlank(CharSequence cs) {
		return !isBlank(cs);
	}

	/**
	 * 系统当前时间（yyyy-MM-dd HH:mm:ss）
	 */
	public static String getCurrentDate() {
		return DateFormatUtils.format(new Date(), "yyyy-MM-dd HH:mm:ss");
	}
	
	/**
	 * 系统当前时间（yyyy-MM-dd HH:mm:ss）
	 */
	public static String getDateString(Date date) {
		return DateFormatUtils.format(date, "yyyy-MM-dd HH:mm:ss");
	}

	/**
	 * 根据提供的时间格式，将当前时间生成相应的字符串
	 * @param pattern 时间格式
	 */
	public static String getCurrentDate(String pattern) {
		return DateFormatUtils.format(new Date(), pattern);
	}

	/**
	 * 获得通用唯一识别码(10) 时间(yyMMHHssSSS+线程号+随机数（1位）)
	 */
	public static String getUUID() {
		StringBuilder uuid = new StringBuilder(getCurrentDate("yyMMddHHmmssSSS"));
		uuid.append(Thread.currentThread().getId());
		uuid.append(RandomUtils.nextInt(10));
		return uuid.toString();
	}

	/**
	 * 明文密码转化为密文密码（通过转码工具Base64）
	 * @param password 明文密码
	 */
	public static String pwd2base64(String password) {
		return Base64.encodeBase64String(password.getBytes());
	}

	/**
	 * 4位随机英文组成+时间
	 */
	public static String createFileName() {
		return RandomStringUtils.randomAlphabetic(4)+ getCurrentDate("yyMMddHHmmss");
	}


	

	

	

	


	/**
	 * 生成本地磁盘文件
	 * @param rootPath 根路径
	 * @param type 文件类型
	 */
	public static File createDiskFile(String rootPath, Integer type, String fileName) {
		if (isEmpty(rootPath) || type == null)  return null;
		File rootDir = new File(rootPath);
		if (rootDir.exists()) {
			String typePathName = "";
			if (type == 1)  typePathName = "imgs";
			else if (type == 2) typePathName = "videos";
			else if (type == 5) typePathName = "helps";
		    else  typePathName = "others";
			File typeDir = new File(rootDir, typePathName);
			if (!typeDir.exists()) typeDir.mkdirs();
			File timeDir = new File(typeDir, getCurrentDate("yyyyMMdd"));
			if (!timeDir.exists()) timeDir.mkdirs();
			String typeName = fileName.substring(fileName.lastIndexOf('.'),fileName.length());
			return new File(timeDir, createFileName() + typeName);
		}
		return null;
	}
	
	public static File createDiskFileByName(String rootPath, Integer type, String fileName,String name) {
		if (isEmpty(rootPath) || type == null)  return null;
		File rootDir = new File(rootPath);
		if (rootDir.exists()) {
			String typePathName = "";
			if (type == 1)  typePathName = "imgs";
			else if (type == 2) typePathName = "videos";
			else if (type == 5) typePathName = "helps";
			else if (type == 4) typePathName = "class";
			else if (type ==3) typePathName = "extport";
		    else  typePathName = "others";
			File typeDir = new File(rootDir, typePathName);
			if (!typeDir.exists()) typeDir.mkdirs();
			File timeDir = new File(typeDir, getCurrentDate("yyyyMMdd"));
			if (!timeDir.exists()) timeDir.mkdirs();
			String typeName = fileName.substring(fileName.lastIndexOf('.'),fileName.length());
			return new File(timeDir, name + typeName);
		}
		return null;
	}
	
	
	public static String getDiskFilePath(String rootPath, Integer type){
		if (isEmpty(rootPath) || type == null)  return null;
		File rootDir = new File(rootPath);
		if (rootDir.exists()) {
			String typePathName = "";
			if (type == 1)  typePathName = "imgs";
			else if (type == 2) typePathName = "videos";
			else if (type == 5) typePathName = "helps";
			else if (type ==3) typePathName = "extport";
		    else  typePathName = "others";
			File typeDir = new File(rootDir, typePathName);
			if (!typeDir.exists()) typeDir.mkdirs();
			File timeDir = new File(typeDir, getCurrentDate("yyyyMMdd"));
			if (!timeDir.exists()) timeDir.mkdirs();
			return timeDir.getAbsolutePath();
		}
		return null;
	}
	
	
	/**
	 * 生成相应位数的随机数
	 * @param count 位数
	 */
	public static String randomString(int count){
		return RandomStringUtils.randomNumeric(count);
	}

	/**
	 * 数字月份转化为文字月份
	 * @param numMonth 数字月份
	 */
	public static String month2month(int numMonth){
		return MONTHS[numMonth-1];
	}
	
	public static int getDaysBetweenTime(String startTime, String endTime){
		SimpleDateFormat simpleFormat = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date d1 = simpleFormat.parse(startTime);
			Date d2 = simpleFormat.parse(endTime);
			int days = (int) ((d2.getTime() - d1.getTime())/(1000 * 60 * 60 * 24)); 
			return days + 2;
		} catch (ParseException e) {
			e.printStackTrace();
		}
		/*
		String fromDate = simpleFormat.format(startTime);  
		String toDate = simpleFormat.format(endTime);  
		try {
			long from = simpleFormat.parse(fromDate).getTime();
			long to = simpleFormat.parse(toDate).getTime();  
			int days = (int) ((to - from)/(1000 * 60 * 60 * 24)); 
			return days;
		} catch (ParseException e) {
			e.printStackTrace();
		} 
		*/ 
		return 0;
	}

	public static String[] gaoDeToBaiduByString(String gd_lon,String gd_lat){
		double d1 = 0;
		double d2 = 0;
		if(gd_lon!=null && !"".equals(gd_lon)){
			d1 = Double.parseDouble(gd_lon);
		}
		if(gd_lat!=null && !"".equals(gd_lat)){
			d2 = Double.parseDouble(gd_lat);
		}
		double [] rs = gaoDeToBaidu(d1,d2);
		String [] str = new String[2];
		str[0]=rs[0]+"";
		str[1]=rs[1]+"";
		return str;
	}

	public static double[] gaoDeToBaidu(double gd_lon, double gd_lat) {
		double[] bd_lat_lon = new double[2];
		double PI = 3.14159265358979324 * 3000.0 / 180.0;
		double x = gd_lon, y = gd_lat;
		double z = Math.sqrt(x * x + y * y) + 0.00002 * Math.sin(y * PI);
		double theta = Math.atan2(y, x) + 0.000003 * Math.cos(x * PI);
		bd_lat_lon[0] = z * Math.cos(theta) + 0.0065;
		bd_lat_lon[1] = z * Math.sin(theta) + 0.006;
		return bd_lat_lon;
	}
	
	public static void main(String[] args) {
		String t1 = "2017-09-14";
		String t2 = "2017-09-26";
		System.out.println(getDaysBetweenTime(t1, t2));
	}
	
	
	/**
	 * 下载word
	 * @param fltName 模板文件名称
	 * @param fltPath 模板文件路径
	 * @param mapData 参数值集合
	 * @param fileName 要生成的word文件名称
	 * @param request
	 * @param response
	 * @return
	 */
	public static boolean downLoadWordFile(String fltName, String fltPath, Map<String, Object> mapData, String fileName, HttpServletRequest request, HttpServletResponse response){
		return false;
	}

	/**
	 * 判断是windows系统还是linux系统 若是windows返回false linux返回true
	 * @return
	 */
	 public static boolean isOSLinux() {
        Properties prop = System.getProperties();

        String os = prop.getProperty("os.name");
        if (os != null && os.toLowerCase().indexOf("linux") > -1) {
            return true;
        } else {
            return false;
        }
	  }

	/**
	 * 按指定大小，分隔集合，将集合按规定个数分为n个部分
	 * @param <T>
	 *
	 * @param list
	 * @param len
	 * @return
	 */
	public static <T> List<List<T>> splitList(List<T> list, int len) {

		if (list == null || list.isEmpty() || len < 1) {
			return Collections.emptyList();
		}

		List<List<T>> result = new ArrayList<>();

		int size = list.size();
		int count = (size + len - 1) / len;

		for (int i = 0; i < count; i++) {
			List<T> subList = list.subList(i * len, ((i + 1) * len > size ? size : len * (i + 1)));
			result.add(subList);
		}

		return result;
	}
	
	
}
