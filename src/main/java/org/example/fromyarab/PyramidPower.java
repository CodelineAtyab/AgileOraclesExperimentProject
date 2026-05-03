package org.example.fromyarab;

public class PyramidPower {
    public static void main(String[] args){
        int rows = 5;

        for (int i=1 ; i<=rows ; i++){
            for (int j=rows ; j>i ; j--){
                System.out.print(" ");
            }
            for (int j=0 ; j<i+i-1 ; j++){
                System.out.print("*");
            }
            System.out.println();
        }
    }
}
