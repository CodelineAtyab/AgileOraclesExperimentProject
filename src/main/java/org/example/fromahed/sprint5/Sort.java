package org.example.fromahed.sprint5;

import java.util.Scanner;

public class Sort {
    public static void main(String[] args) {

        //must enter at least 3
        if (args.length < 3) {
            System.out.println("Usage: java Sort.java <numbers>");
            return;
        }

        String algorithm = "selection"; //default

        boolean sortMenuRunning = true;
        Scanner input = new Scanner(System.in);

        //define the array Easiest Complaints
        int[] complaints = new int[args.length];

        for (int i = 0; i < args.length; i++) {
            try {
                complaints[i] = Integer.parseInt(args[i]);
            } catch (NumberFormatException e) {
                System.out.print("Invalid num: " + args[i]);
            }
        }

        //Complaints before sorting:
        System.out.println("Complaints before sorting");
        for (int j = 0; j < complaints.length; j++) {
            System.out.print(complaints[j] + " ");
        }
        System.out.println();

        // sorting menu:
        while (sortMenuRunning) {
            System.out.println("chooses sorting algorithm :\n [1] Selection Sort\n [2] Bubble Sort (Press Enter for default)");

            String emptyLine = input.nextLine();

            //selection sort as default
            if (emptyLine.isEmpty()) {
                algorithm = "selection";
                sortMenuRunning = false;
            } else {
                try {
                    int choice = Integer.parseInt(emptyLine);

                    if (choice == 1) {
                        algorithm = "selection";
                        sortMenuRunning = false;
                    } else if (choice == 2) {
                        algorithm = "bubble";
                        sortMenuRunning = false;
                    } else {
                        System.out.println("Invalid choice, try again.");
                    }

                } catch (NumberFormatException e) {
                    System.out.println("Invalid choice.");
                }
            }
        }

        //sorting part
        if (algorithm.equalsIgnoreCase("bubble")) {
            bubbleSort(complaints);
        } else {
            selectionSort(complaints);
        }

        //print all elements
        System.out.println("Sorted Complaints: ");
        for (int k = 0; k < complaints.length; k++) {
            System.out.print(complaints[k] + " ");
        }
        System.out.println();

        //first 3 Complaints(intern Queue):
        //m (index) only print first 3 element
        System.out.println("intern Queue: ");
        for (int m = 0; m < 3 && m < complaints.length; m++) {
            System.out.print(complaints[m] + " ");
        }
        System.out.println();
    }

    //method for Bubble sort
    public static void bubbleSort(int[] complaints) {
        for (int i = 0; i < complaints.length; i++) {
            for (int j = 0; j < complaints.length - 1; j++) {
                if (complaints[j] > complaints[j + 1]) {
                    // Swap
                    int temp = complaints[j];
                    complaints[j] = complaints[j + 1];
                    complaints[j + 1] = temp;
                }
            }
        }
    }

    //method for selection sort
    public static void selectionSort(int[] complaints) {
        for (int i = 0; i < complaints.length - 1; i++) {
            int minIndex = i;

            for (int j = i + 1; j < complaints.length; j++) {
                if (complaints[j] < complaints[minIndex]) {
                    minIndex = j;
                }
            }

            int temp = complaints[minIndex];
            complaints[minIndex] = complaints[i];
            complaints[i] = temp;
        }
    }
}

