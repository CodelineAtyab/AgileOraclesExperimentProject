package org.example.frommariya.sprint3;

public class HollowPyramidPattern {
    public static void main(String[] args){
        int rows = 5;

        for (int i = 1;i<=rows;i++){

            for (int x = i; x<rows;x++){
                System.out.print(" ");
            }
            for (int c = 1; c <= (2*i-1) ;c++){
                if (c == 1 || c == (2 * i -1) || i == rows) { //prints * if (first position) (last position) (last row)
                    System.out.print("*");
                }
                else
                {
                    System.out.print(" ");
                }
                }
            System.out.println();
            }
        }
    }

