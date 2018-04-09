package test;

import java.util.Scanner;

public class JavaMianShiTi {

    public static void main(String[] args) {
        Scanner scanner=new Scanner(System.in);
        int n,finish;//新添加变量finish
        for (int i=0;i<100;i++){
            System.out.println("打印一个数字");
            n=scanner.nextInt();
            finish=n;
            long result=1;
            do {
                result*=n--;
            }while (n>=1);{
                System.out.println(finish+"!="+result);//输出是用变量finish;

            }
            //不能关闭流
//            scanner.close();
//            new One().gett(finish);
        }
    }
}
