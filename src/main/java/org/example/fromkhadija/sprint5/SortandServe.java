package org.example.fromkhadija.sprint5;

import java.util.Scanner;

public class SortandServe {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.println("The Complaint Priority Numbers Before Sorting: ");

        int[] ComplainPriorityNumber = new int[args.length];
        for (int i = 0; i < args.length; i++) {
            ComplainPriorityNumber[i] = Integer.parseInt(args[i]);
            System.out.print(" " + ComplainPriorityNumber[i] + " ");
        }

    }
}
