package org.example.fromahed.sprint3;

public class PyramidNumber {
    public static void main(String[] args) {
        //this the outer loop to control rows = 4.
        int row = 4;
        for (int i = 1; i <= row; i++) {
            //inner loop
            // for columns
            for (int j = 1; j <= i; j++) {
                System.out.print(j);
            }
            //inner loop
            //for revers the numbers
            for (int num = i - 1; num >= 1; num--) {
                System.out.print(num);
            }
            System.out.println();
        }
    }
}
