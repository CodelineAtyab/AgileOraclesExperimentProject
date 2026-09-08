package org.example.fromalharith;
import java.util.*;

public class Sort {

    public static void main(String[] args) {

        if (args.length < 2) {
            return;
        }

        String algorithm = args[0].toLowerCase();

        int n = args.length - 1;
        int[] arr = new int[n];

        // Convert input
        try {
            for (int i = 0; i < n; i++) {
                arr[i] = Integer.parseInt(args[i + 1]);
            }
        } catch (Exception e) {
            System.out.println("Invalid numbers!");
            return;
        }

        // Selection Sort
        if (algorithm.equals("selection")) {

            for (int i = 0; i < arr.length - 1; i++) {
                int minIndex = i;

                for (int j = i + 1; j < arr.length; j++) {
                    if (arr[j] < arr[minIndex]) {
                        minIndex = j;
                    }
                }

                int temp = arr[i];
                arr[i] = arr[minIndex];
                arr[minIndex] = temp;
            }

        }
        // Bubble Sort
        else if (algorithm.equals("bubble")) {

            for (int i = 0; i < arr.length - 1; i++) {
                for (int j = 0; j < arr.length - i - 1; j++) {
                    if (arr[j] > arr[j + 1]) {
                        int temp = arr[j];
                        arr[j] = arr[j + 1];
                        arr[j + 1] = temp;
                    }
                }
            }

        } else {
            System.out.println("Use only 'bubble' or 'selection'");
            return;
        }

        // Print full sorted array
        for (int num : arr) {
            System.out.print(num + " ");
        }

        // Print smallest 3
        System.out.println("");
        int limit = Math.min(3, arr.length);

        for (int i = 0; i < limit; i++) {
            System.out.print(arr[i] + " ");
        }
        System.out.println("\nAlgorithm used: " + algorithm + " Sort");
    }
}