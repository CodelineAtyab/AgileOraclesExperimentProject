package org.example.fromsafaalmaamari.sprint3;

public class PyramidOfNumbers {
    public static void main(String[] args) {
        for (int i = 1; i <= 4; i++) {
            int p=1;
            for (int j = 1; j < i ; j++) {
                System.out.print(p++);
            }
            for (int s = 1; s <= i ; s++) {
                System.out.print(p--);
            }
            System.out.println();
        }
    }
}
