package org.example.fromahed.sprint3;

public class StarMountain {
    public static void main(String[] args) {
        //this the outer loop to print rows = 5.
        int row = 5;
        for (int i = 1; i <= row; i++) {
            //inner loop
            for (int j = 1; j <= (row + i - 1); j++) {
                //print spaces
                if (j <= row - i) {
                    System.out.print(" ");
                } else {
                    System.out.print("*");
                }
            }
            System.out.println();
        }
    }
}
