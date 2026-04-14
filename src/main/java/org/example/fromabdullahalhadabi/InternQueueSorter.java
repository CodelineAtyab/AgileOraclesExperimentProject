/*
package org.example.fromabdullahalhadabi;
import java.util.Arrays;
import java.util.Scanner;

public class InternQueueSorter {

    public static void selectionSort(int[] arr) {
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


    public static void bubbleSort(int[] arr) {
        for (int i = 0; i < arr.length - 1; i++) {

            for (int j = 0; j < arr.length - 1 - i; j++) {

                if (arr[j] > arr[j + 1]) {

                    int temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                }
            }
        }
    }


    public static void main(String[] args) {


            String input;

            if (args.length > 0) {  // if you want to use the CLI
                input = args[0];
            } else {
                // fallback للـ Scanner
                Scanner sc = new Scanner(System.in);
                System.out.print("Enter numbers: ");
                input = sc.nextLine();
            }

            String[] parts = input.split(",");

            if (parts.length < 3) {
                System.out.println("You must enter at least 3 numbers.");
                return;
            }

            int[] numbers = new int[parts.length];

            for (int i = 0; i < parts.length; i++) {
                numbers[i] = Integer.parseInt(parts[i].trim());
            }

            String algorithm = "selection";

            if (args.length > 1 && args[1].contains("bubble")) {
                algorithm = "bubble";
            }

            if (algorithm.equals("bubble")) {
                bubbleSort(numbers);
            } else {
                selectionSort(numbers);
            }

            System.out.println(Arrays.toString(numbers));

            System.out.print("Intern queue: ");
            for (int i = 0; i < 3; i++) {
                System.out.print(numbers[i] + " ");
            }
        }
    }
 */
