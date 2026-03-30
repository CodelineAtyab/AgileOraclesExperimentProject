package org.example.fromabdullahhosni;

public class TheStaircaseChallenge {
    public static void main(String[] args) {

        int rowsExample = 5;
        //============================================================
        System.out.println("Step Up: The Staircase Challenge");

        for (int rows = 0; rows <= rowsExample; rows++){
            for (int columns = 1 ; columns <= rows  ; columns++){
                System.out.print("#");
            }
            System.out.println();
        }

//
//==============================================================

    }
}
