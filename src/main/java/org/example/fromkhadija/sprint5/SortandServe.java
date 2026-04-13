package org.example.fromkhadija.sprint5;


import java.util.Scanner;


public class SortandServe {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.println("The Complaint Priority Numbers Before Sorting: ");

        if (args.length >= 3) {
            System.out.println("You must Enter al least 3 Complain Priority Number");
            return;
        }

        int[] complainPriorityNumber = new int[args.length];
        for (int i = 0; i < args.length; i++) {
            complainPriorityNumber[i] = Integer.parseInt(args[i]);
            System.out.print(" " + complainPriorityNumber[i] + " ");
        }

        boolean running = true;
        while (running) {
            System.out.println("\nPress:\n 1.Selection Sort\n 2.Bubble Sort\n 0.Exist..");
            int userInput = sc.nextInt();
            if (userInput == 0) {
                System.out.println("Existing...");
                running = false;
            } else if (userInput == 2) {
                bubbleSort(complainPriorityNumber);
            } else {
                if ((userInput != 0) || (userInput != 2)) { //if user dose not enter either 0 , 2 will be default is --> Selection Sort

                    selectionSort(complainPriorityNumber);
                }

            }
        }

        System.out.println();
    }


    //*****************************************(Selection Sort)*****************************************

    public static void selectionSort(int[] complainPriorityNumber) {
        System.out.println("*******************selectionSort*******************");

        for (int currIter = 0; currIter < complainPriorityNumber.length - 1; currIter++) {

            int minPriorityNum = currIter;

            for (int i = currIter + 1; i < complainPriorityNumber.length; i++) {
                if (complainPriorityNumber[i] < complainPriorityNumber[minPriorityNum]) {
                    minPriorityNum = i;
                }
            }
            // Swapping
            int temp = complainPriorityNumber[currIter];
            complainPriorityNumber[currIter] = complainPriorityNumber[minPriorityNum];
            complainPriorityNumber[minPriorityNum] = temp;
        }

        System.out.println();
        System.out.println();
        System.out.print(" The Complain Priority Number After Sorting: ");
        System.out.println();
        System.out.println();

        // After Sorting:
        for (int i = 0; i < complainPriorityNumber.length; i++) {
            System.out.print(" " + complainPriorityNumber[i] + " ");
        }

        System.out.println();
        System.out.println();

        //List The Lowest Three Numbers:
        System.out.println("The lowest Three Numbers: ");
        for (int i = 0; i < 3; i++) {
            System.out.print(" " + complainPriorityNumber[i] + " ");
        }

    }

    //*****************************************(Bubble Sort)*****************************************

    public static void bubbleSort(int[] complainPriorityNumber) {

        System.out.println("*******************BubbleSort*******************");

        for (int i = 0; i < complainPriorityNumber.length; i++) {
            for (int j = 0; j < complainPriorityNumber.length - 1; j++) {
                if (complainPriorityNumber[j] > complainPriorityNumber[j + 1]) {

                    //Swap:
                    int temp = complainPriorityNumber[j];
                    complainPriorityNumber[j] = complainPriorityNumber[j + 1];
                    complainPriorityNumber[j + 1] = temp;
                }
            }
        }

        //The Result After Sorting:
        System.out.println();
        System.out.println();
        System.out.println(" The Complain Priority Number After Sorting: ");
        System.out.println();
        for (int i = 0; i < complainPriorityNumber.length; i++) {
            System.out.print(" " + complainPriorityNumber[i] + " ");
        }
        System.out.println();
        System.out.println();

        //List The Lowest Three Numbers:
        System.out.println("The lowest Three Numbers: ");
        for (int i = 0; i < 3; i++) {
            System.out.print(" " + complainPriorityNumber[i] + " ");
        }

    }
}



