
package com.mulua.util;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class MD5Utils {
    public static String base64Decoder(String str){
        try {
            byte b[] = new BASE64Decoder().decodeBuffer(str);
            return new String(b);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
    public static String base64Encoder(String str){
        return new BASE64Encoder().encode(str.getBytes());
    }
    public static String MD5(String str){
        try {
            MessageDigest md = MessageDigest.getInstance("md5");
            byte[] b = md.digest(str.getBytes());
            return  new BASE64Encoder().encode(b);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
}