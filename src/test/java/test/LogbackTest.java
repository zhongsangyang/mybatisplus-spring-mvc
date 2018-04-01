package test;

import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LogbackTest {
    private final static Logger logger =  LoggerFactory.getLogger(NowTimeTest.class);

    @Test
    public void logbackDataBaseInfoTest() {
        logger.info("logbackDataBaseInfoTest函数运行了","请到数据库里面查看数据吧");
        System.out.println("运行结束了");
    }
}
