package org.example.fromkhadija;

import java.util.Scanner;

public class FunctionArea {
    public static void Main(String[] args) {
        //Declaration
        Scanner input = new Scanner(System.in);

        //Input
        System.out.println("Enter NUM");
        int num = Integer.parseInt(input.nextLine());
        System.out.println(num);
        System.out.println("Enter PER");
        int per = Integer.parseInt(input.nextLine());
        System.out.println(per);


        // Calculate the Percentage
        double res = getPersentage(num, per);
        double res1 = getPersentage(1000, 10);

        //function
    }
    public static double getPersentage(double baseNumber, double percentNumber){

        double result = baseNumber * percentNumber / 100;

        return result;
        }






    }

