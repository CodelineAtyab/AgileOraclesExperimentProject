package org.example.fromsafaalmaamari.sprint5;
import java.util.Arrays;
import java.util.Scanner;

public class InternQueueSorter {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter an array or comma-separated list of Complaint-priority numbers: ");
        String userList = sc.nextLine();
        String[] priorityList = userList.trim().split("[,\\s]+");

        if (priorityList.length < 3) {
            System.out.println("Error: you should at least entered 3 numbers! ");
            return;
        }
        int[] priorityNumbers = new int[priorityList.length];

        for (int i = 0; i < priorityList.length; i++) {
            try {
                priorityNumbers[i] = Integer.parseInt(priorityList[i]);
            } catch (NumberFormatException e) {
                System.out.println("Error: input must be integers!");
                return;
            }
        }
        System.out.println("Select --algorithm=[bubble|selection]..default [selection]");
        String userSelection = sc.nextLine().toLowerCase();

        if (userSelection.equals("bubble")) {
            bubbleSort(priorityNumbers);
            System.out.println("bubble sort used...");
        } else {
            selectionSort(priorityNumbers);
            System.out.println("selection sort used..");
        }
        // print the sorted Array
        System.out.print("fully sorted list:");
        System.out.println(Arrays.toString(priorityNumbers));
        //print lowest three priority
        System.out.print("Intern queue: ");
        for (int i = 0; i < 3; i++) {
            System.out.print(priorityNumbers[i] + " ");
        }
    }
    public static void bubbleSort(int[] priorityNumbers) {
        for (int i = 0; i < priorityNumbers.length; i++) {
            for (int j = 0; j < priorityNumbers.length - 1; j++) {
                if (priorityNumbers[j] > priorityNumbers[j + 1]) {
                    // swap both
                    int temp = priorityNumbers[j];
                    priorityNumbers[j] = priorityNumbers[j + 1];
                    priorityNumbers[j + 1] = temp;
                }
            }
        }
    }
    public static void selectionSort(int[] priorityNumbers) {
        for (int i = 0; i < priorityNumbers.length - 1; i++) {
            int minPriority = i;
            for (int j = i + 1; j < priorityNumbers.length; j++) {
                if (priorityNumbers[j] < priorityNumbers[minPriority]) {
                    minPriority = j;
                }
            }
            int temp = priorityNumbers[minPriority];
            priorityNumbers[minPriority] = priorityNumbers[i];
            priorityNumbers[i] = temp;
        }
    }
}