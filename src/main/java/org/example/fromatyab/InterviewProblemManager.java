package org.example.fromatyab;

import java.util.Scanner;

public class InterviewProblemManager {

    /**
     * This method is the entry point of the application.
     * This is going to run some pattern related implementations.
     * @param args: External Arguments
     */
    public static void main(String[] args) {
        /**
         * Input: 3
         * Output:
         *   *
         *  ***
         * *****
         *
         * Input: 5
         * Output:
         *     *
         *    ***
         *   *****
         *  *******
         * *********
         */
        Scanner inputObjBuffer = new Scanner(System.in);

        System.out.println("Enter Number of Rows: ");
        int numOfRows = Integer.parseInt(inputObjBuffer.nextLine());



        int colCounter = 1;
        for (int currRow=0; currRow < numOfRows; currRow = currRow + 1) {
            // Print the spaces
            for (int i=0; i< ((numOfRows-1) - currRow); i++) {
                System.out.print(" ");
            }

            // Printing the star
            for (int i=0 ;i<colCounter; i++) {
                System.out.print("*");
            }
            colCounter += 2;
            System.out.println();
        }

        for (int currRow=0; currRow < numOfRows; currRow++) {

            // Print the spaces
            for (int i=0; i< ((numOfRows-1) - currRow); i++) {
                System.out.print(" ");
            }

            String currNumStrRepr = "";
            for (int currCol=0; currCol<currRow+1; currCol++) {
                currNumStrRepr += Integer.toString(1);
            }
            int toPrint = Integer.parseInt(currNumStrRepr);
            System.out.println(toPrint * toPrint);
        }



    }
}
