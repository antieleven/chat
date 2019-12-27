package com.itany.dichat.common.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;


public class StringUtils {
    public static String renameFile(String fileName){
        int doIndex = fileName.lastIndexOf(".");
        String suffix = fileName.substring(doIndex);
        return new SimpleDateFormat("yyyyMMddHHmmssS").format(new Date())+new Random().nextInt(100)+suffix;
    }
    public static String getFileWebPath(String fileName){
        int doIndex = fileName.lastIndexOf("/");
        String suffix = fileName.substring(doIndex);
        return "/upload/headPortrait"+suffix;
    }
    public static String getFileMsgPath(String fileName){
        int doIndex = fileName.lastIndexOf("/");
        String suffix = fileName.substring(doIndex);
        return "/upload/msgImg"+suffix;
    }
}
