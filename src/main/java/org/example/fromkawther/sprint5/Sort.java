package org.example.fromkawther.sprint5;
import java.util.Scanner;
public class Sort {
public static void main (String[] args) {
    String inputData = "";
    String algorithm = "selection"; // Default algorithm

    // 1. Check Command line  arguments
    for (String arg : args) {
        if (arg.startsWith("--algorithm=")) {
            algorithm = arg.split("=")[1].toLowerCase();
        } else {
            inputData = arg;
        }
    }
    // 2- read from standard Input if no data in arguments :
    if (inputData.isEmpty()) {
        Scanner scanner = new Scanner(System.in);
        if (scanner.hasNextLine()) {
            inputData = scanner.nextLine();
        }
    }
            try {
                // convert string input to Integer Array :

                String[] parts = inputData.split(",");
                if (parts.length < 3) {
                    System.out.println("Error: Please provide at least 3 numbers.");
                    return;
                }
                int[] numbers = new int[parts.length];
                for (int i = 0; i < parts.length; i++) {
                    numbers[i] = Integer.parseInt(parts[i].trim());
                }
                // 4- choose sorting method :
                if (algorithm.equals("bubble")) {
                    bubbleSort(numbers);
                } else {
                    selectionSort(numbers);
                }
               // 5 : print result and sorted list :
                for (int i = 0; i < numbers.length; i++) {
                    System.out.print(numbers[i] + (i == numbers.length - 1 ? "" : ","));
                }
                System.out.println();
              // intern gueue (the first 3 num):
                System.out.print("Intern queue: ");
                for (int i = 0; i < 3; i++) {
                    System.out.print(numbers[i] + (i == 2 ? "" : ","));
                }
                System.out.println();

            } catch (Exception e) {
                System.out.println("Error: not correct input >> but the numbers separated by commas.");
            }
        }
        // selection sort method :
        public static void selectionSort(int[] arr) {
            int n = arr.length;
            for (int i = 0; i < n - 1; i++) { // smallest  num
                int minIdx = i;
                for (int j = i + 1; j < n; j++) {
                    if (arr[j] < arr[minIdx]) {
                        minIdx = j; // found  the small num
                    }
                }
                // swap using temp variable :
                int temp = arr[minIdx];
                arr[minIdx] = arr[i];
                arr[i] = temp;
            }
        }
            // bubble sort method :
        public static void bubbleSort(int[] arr) {
            int n = arr.length;
            for (int i = 0; i < n - 1; i++) {
                for (int j = 0; j < n - i - 1; j++) {
                    if (arr[j] > arr[j + 1]) {
                        // Swap
                        int temp = arr[j];
                        arr[j] = arr[j + 1];
                        arr[j + 1] = temp;
                    }
                }
            }
        }
        }
