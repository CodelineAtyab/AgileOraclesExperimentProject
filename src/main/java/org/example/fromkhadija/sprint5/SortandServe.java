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
        boolean running = true;
        while (running) {
            System.out.println("\nPress:\n 1.Selection Sort");
            int userInput = sc.nextInt();

            if (userInput == 1) {
                selectionSort(ComplainPriorityNumber);
            }
        }
    }

    //*****************************************(Selection Sort)*****************************************

    public static void selectionSort(int[] ComplainPriorityNumber) {
        System.out.println("*******************selectionSort*******************");

        for (int currIter = 0; currIter < ComplainPriorityNumber.length - 1; currIter++) {

            int minPriorityNum = currIter;

            for (int i = currIter + 1; i < ComplainPriorityNumber.length; i++) {
                if (ComplainPriorityNumber[i] < ComplainPriorityNumber[minPriorityNum]) {
                    minPriorityNum = i;
                }
            }
            // Swapping
            int temp = ComplainPriorityNumber[currIter];
            ComplainPriorityNumber[currIter] = ComplainPriorityNumber[minPriorityNum];
            ComplainPriorityNumber[minPriorityNum] = temp;
        }

        System.out.println();
        System.out.println();

        System.out.print(" The Complain Priority Number After Sorting: ");

        System.out.println();
        System.out.println();
        // After Sorting:
        for (int i = 0; i < ComplainPriorityNumber.length; i++) {
            System.out.print(" " + ComplainPriorityNumber[i] + " ");
        }

        System.out.println();
        System.out.println();

        //List The Lowest Three Numbers:
        System.out.println("The lowest Three Numbers: ");
        for (int i = 0; i < 3; i++) {

            System.out.print(" " + ComplainPriorityNumber[i] + " ");
        }

    }
}

