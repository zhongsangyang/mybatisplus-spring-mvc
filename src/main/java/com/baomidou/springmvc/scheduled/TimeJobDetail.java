package com.baomidou.springmvc.scheduled;

import org.junit.jupiter.api.Test;
import org.quartz.*;
import org.quartz.impl.StdSchedulerFactory;

import java.util.Date;

import static org.quartz.DateBuilder.evenMinuteDate;
import static org.quartz.JobBuilder.newJob;
import static org.quartz.TriggerBuilder.newTrigger;

public class TimeJobDetail {
//    cron 表达式，按顺序依次为
//秒（0~59）
//分钟（0~59）
//小时（0~23）
//天（月）（0~31，但是你需要考虑你月的天数）
//月（0~11）
//天（星期）（1~7 1=SUN 或 SUN，MON，TUE，WED，THU，FRI，SAT）
//7.年份（1970－2099）
//    https://blog.csdn.net/u012888052/article/details/53907413 cron表达式详解
    @Test
    public void timeJobTest(){
        try {
            SchedulerFactory sf = new StdSchedulerFactory();
            Scheduler sched = sf.getScheduler();
            JobDetail job = newJob(HelloJob.class)
                    .withIdentity("job1", "group1")
                    .build();
            // compute a time that is on the next round minute
            Date runTime = evenMinuteDate(new Date());

// Trigger the job to run on the next round minute
            Trigger trigger = newTrigger()
                    .withIdentity("trigger1", "group1")
                    .withSchedule(SimpleScheduleBuilder.simpleSchedule().withIntervalInSeconds(2).withRepeatCount(2))
                    .build();
            sched.scheduleJob(job,trigger);
            sched.start();
            Thread.sleep(90l*3000l);
            sched.shutdown();
        } catch (SchedulerException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

    }
}
