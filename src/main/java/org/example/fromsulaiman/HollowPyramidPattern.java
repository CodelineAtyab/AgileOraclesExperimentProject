package org.example.fromsulaiman;

public class HollowPyramidPattern {
    public static void main(String[] args) {

        int rows= 5;

        for (int i=1;i<=rows;i++){
            for (int k =i;k<rows;k++){
                System.out.print(" ");
            }
            for (int j=1;j<=(i*2-1);j++){
                if (j==1 || j==i*2-1 || i==rows ){
                    System.out.print("*");
                }else {
                    System.out.print(" ");
                }
            }

            System.out.println();
        }

    }
}
