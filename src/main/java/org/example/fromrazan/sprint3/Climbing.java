package org.example.fromrazan.sprint3;

import java.util.Scanner;

public class Climbing {
    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter number of rows : ");

        int Numrows = scanner.nextInt();

        for (int i = 1; Numrows >= i; i++) {
            System.out.println("");
            for (int z = 1; z <= i; z++) {
                System.out.print(z + "\t");
            }
        }
    }
}
