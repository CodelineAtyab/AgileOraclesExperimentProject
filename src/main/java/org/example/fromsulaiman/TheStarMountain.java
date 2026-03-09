package org.example.fromsulaiman;

public class TheStarMountain {
    public static void main(String[] args) {

        int rows =5;

        for (int i=1; i<=rows;i++){
            for (int j=i;j<rows;j++) {
                System.out.print(" ");
            }
            for (int s=1;s<=(i*2-1);s++) {
                System.out.print("*");
            }
            System.out.println();
        }

    }
}
