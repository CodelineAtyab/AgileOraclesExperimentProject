package org.example.fromahed.sprint3;

public class StairCase {
    public static void main(String[] args) {

        //because already assign the input is 5 (rows = 5)
        for (int i = 0; i <= 5; i++) {
            for (int j = 0; j < i; j++) {
                //to print #
                System.out.print("#");
            }
            //to enter nextLine
            System.out.println();
        }
    }
}
