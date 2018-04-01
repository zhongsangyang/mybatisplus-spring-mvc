package com.baomidou.springmvc.common.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class FrontDateUtils {
    public static String timeTemp(){
        String res="";
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

            Calendar c = Calendar.getInstance();
            c.add(Calendar.DATE, -1);

            Date monday = c.getTime();
            String preMonday = sdf.format(monday);
            System.out.println( preMonday);
            String s=preMonday;

            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date date = null;
            date = simpleDateFormat.parse(s);
            long ts = date.getTime();
            res = String.valueOf(ts);
            System.out.println(res);
        } catch (ParseException e) {
            e.printStackTrace();
        }
//        return String.valueOf(System.currentTimeMillis());
        return res;
    }
}
