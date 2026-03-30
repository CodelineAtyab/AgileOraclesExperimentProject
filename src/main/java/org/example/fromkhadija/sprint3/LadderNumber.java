package org.example.fromkhadija.sprint3;

public class LadderNumber {
    public static void main(String[] args) {

        for (int r = 1; r <= 5; r++) {

            for (int i = 1; i <= r; i++) {

                System.out.print(i + "\t");
            }
            System.out.println();
        }
    }
}
