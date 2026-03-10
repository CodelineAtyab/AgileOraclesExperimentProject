package org.example.fromrazan.Sprint3;

public class Pyramid {
    public static void main(String[] args) {
        int rows = 4;
        for (int i = 1; i <= rows; i++) {
            for (int b = 1; b <=i; b++) {
                System.out.print(b);
            }
                for (int k = i - 1; k >= 1; k--) {
                    System.out.print(k);
                }
                System.out.println();
            }
        }
    }


