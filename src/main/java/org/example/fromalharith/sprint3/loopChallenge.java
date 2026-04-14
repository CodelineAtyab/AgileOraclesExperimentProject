package org.example.fromalharith.sprint3;

import java.util.Scanner;

public class loopChallenge {
    public static void main(String[] args) {

        Scanner inputObjBuffer = new Scanner(System.in);

        for (int i = 1 ; i < 5 ; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print(j + " ");
            }
            for (int m = i-1; m >= 1; m--) {
                System.out.print(m + " ");
            }
            System.out.println();
        }
    }
}
