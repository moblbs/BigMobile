package com.bigmobile.util;

import java.io.File;
import java.security.MessageDigest;

public class MD5 {
	
	
	 /** 
   	* @Title: encrypt 
   	* @Description: TODO(MD5加密方法) 
   	* @param srcStr
   	* @return
   	* String
   	* @date 2014年9月24日 下午3:18:07 
   	*/ 
   	public static final String encrypt(String srcStr) {
   	        try {
   	            String result = "";
   	            MessageDigest md = MessageDigest.getInstance("MD5");
   	            byte[] bytes = md.digest(srcStr.getBytes("utf-8"));
   	            for(byte b:bytes){
   	                String hex = Integer.toHexString(b&0xFF).toUpperCase();
   	                result += ((hex.length() ==1 ) ? "0" : "") + hex;
   	            }
   	            return result;
   	        } catch (Exception e) {
   	            throw new RuntimeException(e);
   	        }
   	 }
   	
   	
   	public static void main(String[] args) {
		String path="E:/BusinessLicense";
		File file=new File(path);
		if(!file.exists()){
			file.mkdir();
		}
		
		
		
		
	}
   	
}
