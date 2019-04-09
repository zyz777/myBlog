package com.sbsm.blog.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.DigestUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;

/**
 * 文件md5计算工具类
 */
public class FileMd5Util {
    private static Logger log = LoggerFactory.getLogger(FileMd5Util.class);

    private FileMd5Util() {
    }

    /**
     * 获取一个文件的md5值(可处理大文件)
     * @return md5 value
     */
    public static String getMD5(MultipartFile file) {
        log.info("start ======= 计算文件的 MD5");
        log.info("文件名: " + file.getOriginalFilename());
        long beginTime = System.currentTimeMillis();

        FileInputStream fileInputStream = null;
        String md5 = null;
        try {
            MessageDigest MD5 = MessageDigest.getInstance("MD5");
            fileInputStream = (FileInputStream) file.getInputStream();
            byte[] buffer = new byte[8192];
            int length;
            while ((length = fileInputStream.read(buffer)) != -1) {
                MD5.update(buffer, 0, length);
            }
            md5 = new String(DigestUtils.md5DigestAsHex(MD5.digest()));
            return md5;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            try {
                if (fileInputStream != null){
                    fileInputStream.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }

            long endTime = System.currentTimeMillis();
            log.info(md5);
            log.info("耗时:" + ((endTime - beginTime) / 1000) + "s");
            log.info("end ======= 计算文件的 MD5");
        }
    }

    /**
     * 求一个字符串的md5值
     * @param target 字符串
     * @return md5 value
     */
    public static String MD5(String target) {
        return DigestUtils.md5DigestAsHex(target.getBytes());
    }

    public static void main(String[] args) {
        long beginTime = System.currentTimeMillis();
//        File file = new File("D:/1/pdi-ce-7.0.0.0-24.zip");
//        String md5 = getMD5(file);
        long endTime = System.currentTimeMillis();
//        System.out.println("MD5:" + md5 + "\n 耗时:" + ((endTime - beginTime) / 1000) + "s");

        String test = FileMd5Util.MD5("我是郑跃宗");
        System.out.println(test);

    }

}
