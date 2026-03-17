package org.example.fromkawther.erp;

public class Taskloop33 {
        public static void main (String[] args) {

            int lines = 5;
            for (int i = 1; i <= lines; i++) {
                for (int j = i; j < lines; j++) {
                    System.out.print(" ");
                }
                for (int r = 1; r <= (2 * i - 1); r++) {
                    System.out.print("*");
                }
                System.out.println();
            }
        }}


