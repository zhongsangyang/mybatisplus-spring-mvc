package test;

public class One {
    public int gett(int m){
        int result=1;
        do {
            result*=m--;
        }while(m>=1);
            System.out.println(result);
        return result;

    }

}
