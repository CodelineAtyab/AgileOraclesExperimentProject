package org.example.fromsulaiman;

public class PyramidofNumbers {
    public static void main(String[] args) {

        int rows=4;

        for (int i=1;i<=rows;i++){
            for (int j=1;j<=i;j++){
                System.out.print(j);
            }
           for (int j=i-1;j>=1;j--){
               System.out.print(j);
           }
            System.out.println();
        }
    }
}
