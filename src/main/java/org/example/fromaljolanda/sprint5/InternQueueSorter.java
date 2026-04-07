package org.example.fromaljolanda.sprint5;

import javax.sound.midi.Soundbank;
import java.util.Arrays;

public class InternQueueSorter {
    public static void main(String[] args) {

        String input = null; // Store the input numbers
        boolean useBubble = false; // Determine whether to use Bubble Sort or not

        if (args.length == 1) {
            input = args[0]; // Use Selection Sort (default)
        }

        else if (args.length == 2 && args[0].equals("--algorithm=bubble")) {
            useBubble = true; // Use Bubble Sort
            input = args[1]; // Store the numbers (should be in args[1])
        }

        else {
            System.out.println("Error.. Enter like this: ");
            System.out.println("--algorithm=bubble 5,3,9,1,4 OR 5,3,9,1,4");
            return;
        }

        // Split the string
        String[] parts = input.split(",");

        // At least 3 numbers
        if (parts.length < 3) {
            System.out.println("Need at least 3 numbers!");
            return;
        }

        // Array to store integers
        int[] arr = new int[parts.length];

        // Convert string values to integers
        try {
            for (int i = 0; i < parts.length; i++) {
                arr[i] = Integer.parseInt(parts[i]);
            }
        }
        catch (Exception e) {
            System.out.println("Invalid input!");
            return;
        }

        // Choose sorting algorithm
        if (useBubble) {
            bubbleSort(arr);
        } else {
            selectionSort(arr);
        }

        // Print sorted array
        System.out.println(Arrays.toString(arr));

        // Print the first 3 smallest numbers
        System.out.println("Intern queue: " + arr[0] + ", " + arr[1] + ", " + arr[2]);


    }
// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    // Selection Sort
    public static void selectionSort(int[] array) {
        int number_of_element = array.length; // Number of element

        for (int i = 0; i < number_of_element - 1; i++) {
            int min_index = i;

            // Find lowest element
            for (int j = i + 1; j < number_of_element; j++) {
                if (array[j] < array[min_index]) {
                    min_index = j;
                }
            }

            // Swapping
            int temp = array[min_index];
            array[min_index] = array[i];
            array[i] = temp;
        }
    }

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    // Bubble Sort
    public static void bubbleSort(int[] array) {
        int number_of_element = array.length;
        for (int i = 0; i < number_of_element - 1; i++) {
            for (int j = 0; j < number_of_element - i - 1; j++) {
                // Swap array[j] and array[j+1]
                if (array[j] > array[j + 1]) {
                    int temp = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = temp;
                }
            }
        }
    }
}
