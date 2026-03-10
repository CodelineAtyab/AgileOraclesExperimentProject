package org.example.fromrazan.Sprint3;

import java.util.Scanner;

public class Star {
    public static void main(String[] args) {

        int row = 5;

        for (int i = 1; i <= row; i++) {

            for (int j = i; j < row; j++) {
                System.out.print(" ");

            }
                for (int c = 1; c <= (2 * i - 1); c++) {
                    System.out.print("*");

                }
                System.out.println();

            }

        }
    }

