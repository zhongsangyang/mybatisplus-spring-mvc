package test;

import com.baomidou.mybatisplus.mapper.Condition;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.springmvc.common.utils.FrontDateUtils;
import com.baomidou.springmvc.model.system.LoggingEvent;
import com.baomidou.springmvc.model.system.Shop;
import com.baomidou.springmvc.service.system.LoggingEventService;
import com.baomidou.springmvc.service.system.ShopService;
import org.apache.ibatis.session.RowBounds;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@RunWith(value =SpringJUnit4ClassRunner.class)
@ContextConfiguration(value = {"classpath:/mybatis/system/*.xml","classpath:/mybatis/*.xml","classpath:/spring/spring.xml"})
public class LogListTest {
    private final static Logger logger =  LoggerFactory.getLogger(LogListTest.class);

    @Autowired
    private LoggingEventService loggingEventService;
    @Autowired
    private ShopService shopService;
    @Test
    public void logDeatilList() {
        Page<LoggingEvent> pageList= loggingEventService.selectPage(new Page<LoggingEvent>(1,30),
                new EntityWrapper<LoggingEvent>().eq("caller_class","info") );
        System.out.println(pageList);

    }
    @Test
    public void logListfor10() {
        EntityWrapper<LoggingEvent> entityWrapper=new EntityWrapper<LoggingEvent>();
        LoggingEvent loggingEvent=new LoggingEvent();

        entityWrapper.setEntity(loggingEvent);
//        entityWrapper.where("caller_class={0}","info");
        entityWrapper.like("caller_method","info");

        System.out.println(loggingEventService.selectMyPage(new RowBounds(0,10),entityWrapper));

    }

    @Test
    public void studyEntityWrapper(){
        EntityWrapper<Shop> entityWrapper=new EntityWrapper<Shop>();
        entityWrapper.where("des={0}","香蕉");
        System.out.println(">>>>>>>"+shopService.selectMyList(new RowBounds(0,10),entityWrapper));
    }

    @Test
    public void LogDelete() {
        EntityWrapper<LoggingEvent> entityWrapper=new EntityWrapper<LoggingEvent>();
        long currentTimestmp=new Date().getTime();

        entityWrapper.lt("timestmp", FrontDateUtils.timeTemp());
        Boolean isDelete=loggingEventService.delete(entityWrapper);
        if(isDelete){
            logger.info("已经删除1天前的数据了");
        }else{
            logger.error("删除是失败了");
        }
    }

    @Test
    public void front7Time() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        Calendar c = Calendar.getInstance();
        c.add(Calendar.DATE, - 7);

        Date monday = c.getTime();
        String preMonday = sdf.format(monday);
        System.out.println( preMonday);
        String s=preMonday;
        String res;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = null;
        try {
            date = simpleDateFormat.parse(s);
            long ts = date.getTime();
            res = String.valueOf(ts);
            System.out.println(res);
        } catch (ParseException e) {
            e.printStackTrace();
        }


    }

    @Test
    public void currentTime() {
        long curentTimestmp=  System.currentTimeMillis();
        String centStr=String.valueOf(1522566563000l);
        System.out.println(centStr+"当前时间戳");
        long lt=new Long(centStr);
        Date date=new Date(lt );
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss ");
        String cuurent=simpleDateFormat.format(date);
        System.out.println("当前时间"+cuurent);

    }
}
