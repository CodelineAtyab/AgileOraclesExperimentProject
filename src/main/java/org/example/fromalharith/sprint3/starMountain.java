package org.example.fromalharith.sprint3;

public class starMountain {
    public static void main(String[] args) {

        int Rows=5;
        for (int i = 1 ; i <= Rows ; i++) {
            for (int j = i; j <= Rows; j++) {
                System.out.print(" ");
            }
            for (int star = 1; star <= 2 * i - 1; star++) {
                System.out.print("*");
            }
            System.out.println("");
        }

        }

    }
