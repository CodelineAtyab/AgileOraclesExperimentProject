package org.example.fromahed.sprint5;

import java.util.Scanner;

public class Sort {
    public static void main(String[] args) {
        //must enter at least 3
        if (args.length < 3) {
            System.out.println("Usage: java Sort.java <numbers>");
            return;
        }
        //define the arg
        String algorithm = "selection"; //default

        boolean sortMenuRunning = true;
        Scanner input = new Scanner(System.in);

        //define the array Easiest Complaints
        int[] Complaints = new int[args.length];

        for (int i = 0; i < args.length; i++) {
            Complaints[i] = Integer.parseInt(args[i]);
        }
        //Complaints before sorting:
        System.out.println("Complaints before sorting");
        for (int j = 0; j < Complaints.length; j++) {
            System.out.print(Complaints[j] + " ");
        }
        System.out.println();

        // sorting menu:
        while (sortMenuRunning) {
            System.out.println("chooses sorting algorithm :\n [1] Selection Sort\n [2] Bubble Sort (Press Enter for default)");

            //selection sort as default
            String emptyLine = input.nextLine();
            if (emptyLine.isEmpty()) {
                algorithm = "selection";
                sortMenuRunning = false;
            } else {
                int choice = Integer.parseInt(emptyLine);
                if (choice == 1) {
                    algorithm = "selection";
                    sortMenuRunning = false;
                } else if (choice == 2) {
                    algorithm = "Bubble";
                    sortMenuRunning = false;
                } else {
                    System.out.println("Invalid choice, try again.");
                }
            }
        }
        //sorting part
        if (algorithm.equalsIgnoreCase("bubble")) {
            bubbleSort(Complaints);
        } else {
            selectionSort(Complaints);
        }
        //print all elements
        System.out.println("Sorted Complaints: ");
        for (int k = 0; k < Complaints.length; k++) {
            System.out.print(Complaints[k] + " ");
        }
        System.out.println();
        //first 3 Complaints(intern Queue):
        //m (index) only print first 3 element
        System.out.println("intern Queue: ");
        for (int m = 0; m < 3 && m < Complaints.length; m++) {
            System.out.print(Complaints[m] + " ");
        }
        System.out.println();
    }
    //method for Bubble sort
    public static void bubbleSort(int[] Complaints) {
        for (int i = 0; i < Complaints.length; i++) {
            for (int j = 0; j < Complaints.length - 1; j++) {
                if (Complaints[j] > Complaints[j + 1]) {
                    // Swap
                    int temp = Complaints[j];
                    Complaints[j] = Complaints[j + 1];
                    Complaints[j + 1] = temp;
                }
            }
        }
    }
    //method for selection sort
    public static void selectionSort(int[] Complaints) {
        for (int i = 0; i < Complaints.length - 1; i++) {
            int minIndex = i;
            for (int j = i + 1; j < Complaints.length; j++) {
                if (Complaints[j] < Complaints[minIndex]) {
                    minIndex = j;
                }
            }
            int temp = Complaints[minIndex];
            Complaints[minIndex] = Complaints[i];
            Complaints[i] = temp;
        }
    }
}

