package org.example.frommaryam.maryamSprint5;

import java.util.Scanner;

public class Sort {

    public static void main(String[] args) {

        try (Scanner input = new Scanner(System.in)) {

            boolean valid = false;

            while (!valid) {

                try {
                    System.out.print("enter how many complaint-priority numbers do you have: ");
                    int numberOfPriority = input.nextInt();

                    int[] arrayOfPriority = new int[numberOfPriority];

                    for (int i = 0; i < numberOfPriority; i++) {
                        int priorityIndex = i + 1;
                        System.out.print("enter the " + priorityIndex + " complaint-priority: ");
                        arrayOfPriority[i] = input.nextInt();
                    }

                    System.out.print("numbers in array are: ");
                    for (int i = 0; i < numberOfPriority; i++) {
                        System.out.print(arrayOfPriority[i] + " ");
                    }
                    System.out.println();

                    System.out.print("choose method [1 for bubble-sort or 2 for selection-sort] enter the number: ");
                    int choice = input.nextInt();

                    if (choice == 1) {
                        System.out.print("bubble sort selected");
                        bubbleSort(arrayOfPriority);
                    } else {
                        System.out.print("selection sort selected");
                        selectionSort(arrayOfPriority);
                    }
                    System.out.println();

                    System.out.print("sorted numbers: ");
                    for (int i = 0; i < numberOfPriority; i++) {
                        System.out.print(arrayOfPriority[i] + " ");
                    }
                    System.out.println();

                    System.out.print("Intern Queue: ");
                    for (int i = 0; i < 3 && i < numberOfPriority; i++) {
                        System.out.print(arrayOfPriority[i] + " ");
                    }

                    valid = true;

                } catch (Exception e) {
                    System.out.println("error please enter integers only");
                    input.nextLine();
                }
            }
        }
    }

    public static void selectionSort(int[] array) {

        if (array == null || array.length == 0) {
            return;
        }

        for (int i = 0; i < array.length - 1; i++) {
            int min = i;

            for (int j = i + 1; j < array.length; j++) {
                if (array[j] < array[min]) {
                    min = j;
                }
            }

            int temp = array[i];
            array[i] = array[min];
            array[min] = temp;
        }
    }

    public static void bubbleSort(int[] array) {

        if (array == null || array.length == 0) {
            return;
        }

        for (int i = 0; i < array.length - 1; i++) {
            for (int j = 0; j < array.length - i - 1; j++) {
                if (array[j] > array[j + 1]) {
                    int temp = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = temp;
                }
            }
        }
    }
}
