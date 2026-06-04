package org.example.formabdulmajeed;

public class PyramidPower {
    public static void main(String[] args){

        for (int rows = 1; rows <= 10; rows += 2) {

            for (int colums = 1; colums <= 10-rows; colums += 2) {
                System.out.print(" ");
            }

            for (int star = 0; star < rows; star ++) {
                System.out.print("*");
            }

            System.out.println(" ");
        }
    }
}
