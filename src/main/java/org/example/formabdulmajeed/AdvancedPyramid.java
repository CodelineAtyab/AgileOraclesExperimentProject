package org.example.formabdulmajeed;

public class AdvancedPyramid {
    public static void main(String[] args) {

        for (int rows = 0; rows <= 5; rows ++) {

            for (int star = 0; star <= 5-rows; star ++) {
                System.out.print(" ");


            }for (int colums = 1; colums <= (2*rows-1); colums ++) {
                //System.out.print("*");
                if (colums == 1 || colums == 2*rows-1 || rows == 5){
                    System.out.print("*");
                }
                else {
                    System.out.print(" ");
                }
            }
            System.out.println();
        }

    }}