package org.example.fromatyab;

import java.util.Scanner;

public class FunctionsArea {
    public static void main(String[] args) {
        //Declare
        Scanner inpBuffObj = new Scanner(System.in);

        // Input
        int num = Integer.parseInt(inpBuffObj.nextLine());
        int per = Integer.parseInt(inpBuffObj.nextLine());

        // Calculate the Percentage
        double res = getThePercentage(num, per);  // Calling the function/method
        double res1 = getThePercentage(1000, 10);
        double res2 = getThePercentage(50, 50);
        double res3 = getThePercentage(10, 100);

        System.out.printf("%f -- %f -- %f -- %f", res, res1, res2, res3);
    }

    // Method Declaration
    public static double getThePercentage(double baseNumber, double percentNumber) {
        double product = baseNumber * percentNumber;
        double result = product / 100;
        return result;
    }

    // A method that doesn't accept any arguments and returns
    public int getTheLuckyNumber() {
        return 5;
    }

    public static void showTheMessage(String message) {
        System.out.printf("HERE IS THE MESSAGE!: %s", message);
    }

}
