package test;

public class CopyArray {
    public static void main(String[] args) {
        int a[]={1,2,3};
        int b[]=new int[5];
        System.arraycopy(a,1,b,0,2);
        System.out.println(b[0]+" "+b[1]);
    }
}
