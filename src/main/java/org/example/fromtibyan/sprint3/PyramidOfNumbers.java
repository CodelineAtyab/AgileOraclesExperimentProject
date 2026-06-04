package org.example.fromtibyan.sprint3;

import java.util.Scanner;

public class PyramidOfNumbers {
    public static void main(String[] args) {
        Scanner userInput = new Scanner(System.in);
        System.out.println("PALINDROMIC TRIANGLE");
        System.out.print("Enter number of rows: ");
        int row = userInput.nextInt();

        for (int i = 1; i<=row;i++){
            for (int j =1; j<=i;j++){
                System.out.print(j);
            }
            for (int k=i-1; k>=1;k--){
                System.out.print(k);
            }
            System.out.println();
        }
    }
}
