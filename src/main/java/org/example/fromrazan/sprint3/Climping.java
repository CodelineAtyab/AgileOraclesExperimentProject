package org.example.fromrazan.sprint3;

import java.util.Scanner;

public class Climping {
    public static void main(String [] args){

        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter number of rows : ");

        int Numrow = scanner.nextInt();


        for (int i = 1; Numrow >= i ; i++){
            System.out.println();
            for( int z = 1 ; z<= i; z++){
                System.out.print( z + "\t");

            }
        }

    }
}
