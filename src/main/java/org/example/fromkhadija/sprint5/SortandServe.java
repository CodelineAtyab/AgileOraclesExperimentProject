package org.example.fromkhadija.sprint5;

import java.util.Scanner;

public class SortandServe {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.println("The Complaint Priority Numbers Before Sorting: ");

        int[] complainPriorityNumbers = new int[args.length];
        for (int i = 0; i < args.length; i++) {
            complainPriorityNumbers[i] = Integer.parseInt(args[i]);
            System.out.print(" " + complainPriorityNumbers[i] + " ");
        }
        boolean running = true;
        while (running) {
            System.out.println("\nPress:\n 1.Selection Sort\n 2.Bubble Sort\n 0.Exist..");
            int userInput = sc.nextInt();
            if (userInput == 1) {
                selectionSort(complainPriorityNumbers);
            } else if (userInput == 2) {
                bubbleSort(complainPriorityNumbers);
            } else if (userInput == 0) {
                running = false;
                System.out.println("Existing...");}
        }

        System.out.println();
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

    //*****************************************(Bubble Sort)*****************************************

    public static void bubbleSort(int[] ComplainPriorityNumber) {

        System.out.println("*******************BubbleSort*******************");


        for (int i = 0; i < ComplainPriorityNumber.length; i++) {
            for (int j = 0; j < ComplainPriorityNumber.length - 1; j++) {
                if (ComplainPriorityNumber[j] > ComplainPriorityNumber[j + 1]) {
                    //Swap:
                    int temp = ComplainPriorityNumber[j];
                    ComplainPriorityNumber[j] = ComplainPriorityNumber[j + 1];
                    ComplainPriorityNumber[j + 1] = temp;
                }
            }
        }

        //The Result After Sorting:
        System.out.println();
        System.out.println();
        System.out.println(" The Complain Priority Number After Sorting: ");
        System.out.println();
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



