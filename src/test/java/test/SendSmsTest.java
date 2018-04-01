package test;

import com.github.qcloudsms.SmsSingleSender;
import com.github.qcloudsms.SmsSingleSenderResult;
import org.junit.Test;

import java.util.ArrayList;

public class SendSmsTest {
    @Test
    public void sendSmSTest(){
        try {
            //假设短信模板 id 为 123，模板内容为：测试短信，{1}，{2}，{3}，上学。

                SmsSingleSender sender = new SmsSingleSender(1400033948,"6ae48758520d67b596053de7fa5dc083");
            ArrayList<String> params = new ArrayList<String>();
            params.add("指定模板单发");

            SmsSingleSenderResult   result = sender.sendWithParam("86", "17370134036", 35160, params, "", "", "");
            System.out.println(result);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
