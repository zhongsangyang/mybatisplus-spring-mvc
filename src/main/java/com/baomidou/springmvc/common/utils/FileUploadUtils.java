package com.baomidou.springmvc.common.utils;

import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class FileUploadUtils {
    public static void uploadHeadImage(MultipartFile file, HttpServletRequest request){
        try {
            String filepath = "/upload/";
            String fileName = file.getOriginalFilename();
            //重命名文件
            String newfileName = new SimpleDateFormat("yyy-MM-dd-HH-mm-ss-").format(new Date((new Long(String.valueOf(new Date().getTime()))))) + String.valueOf(fileName);
            String pathRoot = request.getSession().getServletContext().getRealPath("");
            String path = filepath + newfileName;
            String wenjianming=path.substring(0,path.indexOf('.')).split("/")[2].split("-")[6];
            System.out.println(wenjianming);
            //创建file实例
            File tempFile = new File(pathRoot + path);
            if (!tempFile.getParentFile().exists()) {
                tempFile.getParentFile().mkdirs();
            }

            file.transferTo(tempFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
