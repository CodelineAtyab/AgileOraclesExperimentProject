package org.example.frommaryam.maryamSprint3;
public class Loop3 {

//   Runs:
//     *
//    ***
//   *****
//  *******
// *********

    public static void main(String[] args) {
        for (double i = 1,k = 0.5 ; i <= 5; i++,k++) {
            for (int c = 4; c >= i; c--) {
                System.out.print(" ");
            }
            for (double j = 1; j <= k * 2; j++) {
                System.out.print("*");
            }
            System.out.println(" ");
        }
    }

}