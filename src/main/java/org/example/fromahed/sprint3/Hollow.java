package org.example.fromahed.sprint3;

public class Hollow {
    public static void main(String[] args) {
        //this the outer loop to control rows = 5.
        //run ones for each row
        int row = 5;
        for (int i = 1; i <= row; i++) {
            // Print spaces before stars to move it to the center
            for (int j = i; j <= row; j++) {
                System.out.print(" ");
            }
            //this loop Prints stars of the left half Pyramid
            for (int j = 1; j < i; j++) {
                if (i == row || j == 1) {
                    System.out.print("*");
                } else {
                    System.out.print(" ");
                }
            }
            //this loop Prints stars of the left Pyramid
            for (int j = 1; j <= i; j++) {
                if (i == row || j == i) {

                    System.out.print("*");
                } else {
                    System.out.print(" ");
                }
            }
            System.out.println();
        }

    }
}
