package org.example.fromibrahim;

public class HollowPyramid {
    public static void main(String[] args){

        int rows = 5;
        for (int i = 1; i <= rows; i++){
            //  Outer Spaces
            for (int j = 1; j <= rows-i; j++){
                System.out.print(" ");
            }
            for (int k = 1; k <= 2*i-1; k++){
                //  Stars & Inner Spaces
                if (i == rows || k == 2*i-1 || k == 1){
                    System.out.print("*");
                } else{
                    System.out.print(" ");
                }
            }
            System.out.println();
        }
    }
}