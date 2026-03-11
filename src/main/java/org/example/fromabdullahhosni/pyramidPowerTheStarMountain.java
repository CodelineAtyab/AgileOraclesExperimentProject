package org.example.fromabdullahhosni;

public class pyramidPowerTheStarMountain {
    public static void main(String[] args) {

        int NumberOfRows = 5;
//=================================================================
        for (int i = 1 ; i <= NumberOfRows ; i++){
            for (int j = i ; j <= NumberOfRows - 1; j++ ) {
                System.out.print(" ");
            }
            for (int NumStar = 1 ; NumStar <= 2 * i - 1 ; NumStar++ ){

                System.out.print("*");
            }
            System.out.println();
        }
//==================================================================
    }
}
