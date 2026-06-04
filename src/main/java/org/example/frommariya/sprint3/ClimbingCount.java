package org.example.frommariya.sprint3;

import java.util.Scanner;

public class ClimbingCount {
    public static void main(String[] args) {
        Scanner sca = new Scanner(System.in);

        System.out.println("Enter Num of Rows: ");

        int NumRows = sca.nextInt();

        for (int j = 1; NumRows >= j; j++) { //outer for rows
            System.out.println("");
            for (int i = 1; i <= j; i++) { //inner for columns
                System.out.print(i+"\t");
            }
        }
    }
}
