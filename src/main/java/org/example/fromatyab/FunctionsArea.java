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
        double res = getThePercentage(num, per);
        double res1 = getThePercentage(1000, 10);
        double res2 = getThePercentage(50, 50);
        double res3 = getThePercentage(10, 100);

        System.out.printf("%f -- %f -- %f -- %f", res, res1, res2, res3);
    }

    public static double getThePercentage(double baseNumber, double percentNumber) {
        double product = baseNumber * percentNumber;
        double result = product / 100;
        return result;
    }
}
