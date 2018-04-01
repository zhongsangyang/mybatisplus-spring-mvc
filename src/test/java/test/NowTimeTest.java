package test;

import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class NowTimeTest {
    @Test
    public void testNowTTime(){
        String s1="";
        Calendar calendar=Calendar.getInstance();
        int istr[]=new int[]{
                calendar.get(Calendar.YEAR),
                calendar.get(Calendar.MONTH),
                calendar.get(Calendar.DATE),
                calendar.get(Calendar.HOUR),
                calendar.get(Calendar.SECOND),
                calendar.get(Calendar.MINUTE),
                calendar.get(Calendar.MILLISECOND),
        };

        for(int i=0;i<istr.length;i++){
            if(i==2||i==4){
                s1+=istr[i]+" ";
            }else if(i==istr.length-1){
                s1+=istr[i];
            }else if(i==3){
                s1+=istr[i]+":";
            }else {
                s1 += istr[i] + "/";
            }
        }
        System.out.println(s1);
    }
    @Test
    public void otherGetCurrentTime(){
        Date date = new Date();

        String year = String.format("%tY", date);

        String month = String.format("%tB", date);

        String day = String.format("%te", date);

        System.out.println("今天是："+year+"-"+month+"-"+day+"号");
    }
    @Test
    public void otherGetCurrentTime2(){
        Date day=new Date();

        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        System.out.println(df.format(day));

//        通过Date类来获取当前时间

    }

    @Test
    public void otherMethod() {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        System.out.println(df.format(System.currentTimeMillis()));

    }
}
