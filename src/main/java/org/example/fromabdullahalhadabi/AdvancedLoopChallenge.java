package org.example.fromabdullahalhadabi;

public class AdvancedLoopChallenge {
    public static void main(String[] args){


        for (int i = 1; i <= 5; i++) {
            for (int s=1; s<=5-i ; s++)
                System.out.print(" ");

            for (int k = 1; k <=2*i-1; k++) {
                System.out.print("*");


            }
            System.out.println();
        }

    }
}
