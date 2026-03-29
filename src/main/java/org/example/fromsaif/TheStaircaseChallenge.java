package org.example.fromsaif;

public class TheStaircaseChallenge {
    public static void main(String[] args) {

        for (int row = 1; row <= 6; row++) {
            for (int hash = 1; hash <= row; hash++) {
                System.out.print("#");
            }
            System.out.println();
        }
    }
}
