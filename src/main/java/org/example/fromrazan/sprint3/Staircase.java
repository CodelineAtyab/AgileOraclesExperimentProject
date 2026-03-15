package org.example.fromrazan.sprint3;

public class Staircase {

    public static void main (String[] args){

        int nurow = 6;

        for (int r = 1; r <= nurow; r++){
            for(int z = 1; z < nurow; z++){
                System.out.print(" ");
            }
            for(int n = 1; n <= (1 * r - 1 ); n++){
                System.out.print("#");

            }
            System.out.println();
        }
    }
}
