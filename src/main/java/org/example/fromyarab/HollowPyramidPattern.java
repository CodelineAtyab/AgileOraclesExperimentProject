package org.example.fromyarab;

public class HollowPyramidPattern {
    public static void main(String[] args){
        int rows = 5;

        for (int i=1 ; i<=rows ; i++){
            for (int j=0 ; j<rows-i ; j++){
                System.out.print(" ");
            }

            if (i == rows){
                for (int c=1 ; c<rows+rows ; c++){
                    System.out.print("*");
                }
            }
            else {
                System.out.print("*");
            }

            if(i != rows && i !=1){
                for (int k=1 ; k<i+i-2 ; k++) {
                    System.out.print(" ");
                }
                System.out.print("*");
            }

            System.out.println();
        }
    }
}
