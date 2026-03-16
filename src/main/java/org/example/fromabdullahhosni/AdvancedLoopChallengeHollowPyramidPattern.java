package org.example.fromabdullahhosni;

public class AdvancedLoopChallengeHollowPyramidPattern {
    public static void main(String[] args) {

        int numOfRows = 6;
//===============================================================
    //  outer loop
        for (int i = 0 ; i <= numOfRows ; i++){
//            inner loop
            for (int j = i - 1  ; j < numOfRows; j++ ){
                System.out.print(" ");
            }


            for (int x = 1 ; x <=(2 * i -1) ; x++) {

                // Seprating the middle part of pyramid
                if (x==1 || x == (2 * i -1) || i==numOfRows  ){
                    System.out.print("*");
                }
                else {
                    System.out.print(" ");
                }

            }
            System.out.println();
        }
    }
}
