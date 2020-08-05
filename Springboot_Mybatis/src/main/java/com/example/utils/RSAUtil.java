package com.example.utils;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.KeyFactory;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;

import javax.crypto.Cipher;

import org.apache.commons.codec.binary.Base64;

public class RSAUtil {
	private static final String KEY_ALGORITHM = "RSA";

	/**
	 * @fieldName: CLIENT_PUBLIC_KEY
	 * @fieldType: String
	 * @Description: 服务器发送token给客户端之前，使用这个加密token
	 */
	private static String CLIENT_PUBLIC_KEY = "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBANHDHi7dnrvCzBaWegnMRUDIYtBJpWOi"
			+ "EnXzivugjebewS3bfW5Wfrow9+s/yJywzpgECuzlwbtKS4HHm0mJLmkCAwEAAQ==";

	/**
	 * @fieldName: CLIENT_PRIVATE_KEY
	 * @fieldType: String
	 * @Description: 客户端收到服务器的token后，使用这个解密token
	 */
	private static String CLIENT_PRIVATE_KEY = "MIIBVAIBADANBgkqhkiG9w0BAQEFAASCAT4wggE6AgEAAkEA0cMeLt2eu8LMFpZ6"
			+ "CcxFQMhi0EmlY6ISdfOK+6CN5t7BLdt9blZ+ujD36z/InLDOmAQK7OXBu0pLgceb"
			+ "SYkuaQIDAQABAkA/Z71d6TusAcvzH/UvtQFR/cBwuXI21azC3qUqPnPmTu6XOYt/"
			+ "uQ3MR1YYdRxIDZRWOR3L5DOwBF25jN+wXgahAiEA+ZEY1t/zk33vpdCkXifcQbZq"
			+ "3MjaVmKO2YudprxIbtUCIQDXK1kxBSpSx/y/aEh+a4B4QlHEzqanLRqwdQgovmOT"
			+ "RQIgO+OM8WuWuSs8ii8ScqHgIkjTRh5Q/u/x1dTCRVPjke0CIQDVI+yTIXG+VLpq"
			+ "hIujJyw4dEF5edcdrRFOEHAHpCkRHQIgH9FjTipacS3eAqXAwn0bkNF0IMA5S1Vb" + "8BI0SaXAQJo=";

	private static RSAPrivateKey privateKey;

	private static RSAPublicKey publicKey;

	static {
		loadPrivateKey(CLIENT_PRIVATE_KEY);
		loadPublicKey(CLIENT_PUBLIC_KEY);
	}

	/**
	 * @Title: loadPublicKey 从输入流加载公钥
	 * @Description:
	 * @param in
	 * @throws Exception
	 */
	private static void loadPublicKey(InputStream in) throws Exception {
		try {
			BufferedReader br = new BufferedReader(new InputStreamReader(in));
			String readLine = null;
			StringBuilder sb = new StringBuilder();
			while ((readLine = br.readLine()) != null) {
				if (readLine.charAt(0) == '-') {
					continue;
				} else {
					sb.append(readLine);
					sb.append('\r');
				}
			}
			loadPublicKey(sb.toString());
		} catch (Throwable e) {
			throw new RuntimeException("从输入流加载公钥异常", e);
		}
	}

	/**
	 * @Title: loadPublicKey 从字符串加载公钥
	 * @Description:
	 * @param publicKeyStr
	 * @throws Exception
	 */
	private static void loadPublicKey(String publicKeyStr) {
		try {
			byte[] decodedKeyData = Base64.decodeBase64(publicKeyStr);
			publicKey = (RSAPublicKey) KeyFactory.getInstance(KEY_ALGORITHM).generatePublic(new X509EncodedKeySpec(decodedKeyData));
		} catch (Throwable e) {
			throw new RuntimeException("从字符串加载公钥异常", e);
		}
	}

	/**
	 * @Title: loadPrivateKey 从输入流加载私钥
	 * @Description:
	 * @param in
	 * @throws Exception
	 */
	private static void loadPrivateKey(InputStream in) throws Exception {
		try {
			BufferedReader br = new BufferedReader(new InputStreamReader(in));
			String readLine = null;
			StringBuilder sb = new StringBuilder();
			while ((readLine = br.readLine()) != null) {
				if (readLine.charAt(0) == '-') {
					continue;
				} else {
					sb.append(readLine);
					sb.append('\r');
				}
			}
			loadPrivateKey(sb.toString());
		} catch (Throwable e) {
			throw new RuntimeException("从输入流加载私钥异常", e);
		}
	}

	/**
	 * @Title: loadPrivateKey 从字符串加载私钥
	 * @Description:
	 * @param privateKeyStr
	 * @throws Exception
	 */
	private static void loadPrivateKey(String privateKeyStr) {
		try {
			byte[] decodedKeyData = Base64.decodeBase64(privateKeyStr);
			privateKey = (RSAPrivateKey) KeyFactory.getInstance(KEY_ALGORITHM).generatePrivate(new PKCS8EncodedKeySpec(decodedKeyData));
		} catch (Throwable e) {
			throw new RuntimeException("从字符串加载私钥异常", e);
		}
	}

	/**
	 * @Title: encrypt 加密
	 * @Description:
	 * @param publicKey
	 * @param plainTextData
	 * @return
	 */
	public static String encrypt(String plainData) {
		if (publicKey == null) {
			throw new RuntimeException("加密时的公钥为空");
		}
		String encryptString = null;
		try {
			byte[] plainTextData = plainData.getBytes("UTF8");
			Cipher cipher = Cipher.getInstance(KEY_ALGORITHM);
			cipher.init(Cipher.ENCRYPT_MODE, publicKey);
			byte[] output = cipher.doFinal(plainTextData);
			encryptString = Base64.encodeBase64String(output);
		} catch (Throwable e) {
			throw new RuntimeException("加密异常", e);
		}
		return encryptString;
	}

	/**
	 * @Title: decrypt 解密
	 * @Description:
	 * @param privateKey
	 * @param cipherData
	 * @return
	 */
	public static String decrypt(String cipherData) {
		if (privateKey == null) {
			throw new RuntimeException("解密时的私钥为空");
		}
		byte[] encryptString = Base64.decodeBase64(cipherData.getBytes(Charset.forName("UTF-8")));
		String decryptString = null;
		try {
			Cipher cipher = Cipher.getInstance(KEY_ALGORITHM);
			cipher.init(Cipher.DECRYPT_MODE, privateKey);
			byte[] output = cipher.doFinal(encryptString);
			decryptString = new String(output);
		} catch (Throwable e) {
			throw new RuntimeException("解密时异常", e);
		}
		return decryptString;
	}

}
