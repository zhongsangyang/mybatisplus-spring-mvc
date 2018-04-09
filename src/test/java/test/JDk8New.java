package test;

import org.junit.Test;

import java.io.Serializable;
import java.time.Clock;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Arrays;
import java.util.function.BiFunction;
/*
*          作用域       当前类    同一package   子孙类     其他package

                public        √         √                      √           √

               protected   √          √                     √           ×

               friendly       √          √                     ×           ×

               private        √          ×                    ×           ×
*
*
* https://blog.csdn.net/bornlili/article/details/55805732 线程基本概念
* */

//https://blog.csdn.net/yczz/article/details/50896975
public class JDk8New {
    @Test
    public void newTime() {
        final Clock clock=Clock.systemUTC();
        System.out.println(clock.instant());
        System.out.println(clock.millis());

        final LocalDate date = LocalDate.now();
        final LocalDate dateFromClock = LocalDate.now( clock );

        System.out.println( date );
        System.out.println( dateFromClock );

        final LocalTime time=LocalTime.now();
        final LocalTime timeFromClock = LocalTime.now( clock );
        System.out.println( time );
        System.out.println( timeFromClock );
    }
    @Test
    public void sortPaiXu(){
//        long[] arrayOfLong = new long [ 20000 ];
        int arrayOfLong[]=new int[]{3,2,1,90,73,40};

//        Arrays.parallelSetAll( arrayOfLong,
//                index -> ThreadLocalRandom.current().nextInt( 1000000 ) );
//        Arrays.stream( arrayOfLong ).limit( 10 ).forEach(
//                i -> System.out.print( i + " " ) );
//        System.out.println();

        Arrays.parallelSort( arrayOfLong );
        Arrays.stream( arrayOfLong ).limit( 6 ).forEach(
                i -> System.out.print( i + " " ) );
        System.out.println();

    }

    interface  GreetingService{
        void sayMessage(String message );
    }
    @Test

    public void LambExpressTest() {
        GreetingService greetingService1=(message -> System.out.println("Hello"+"lamb表达式"+message));
        greetingService1.sayMessage("test1");
    }
}
