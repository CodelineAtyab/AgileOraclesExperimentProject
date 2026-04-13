package org.example.fromsaif.SPRINT5;
import java.util.Scanner;
import java.util.Arrays;


public class SortAndServe {
    public static void main(String[] args) {

        // Default sorting method
        // Store the complaint list as raw text before converting it into numbers
        String algorithm = "selection";
        String rawInput = "";

        // Check each command-line argument to find the algorithm flag or input list
        for (String argument : args) {
            // If the argument contains the algorithm flag, extract the chosen sorting method
            if (argument.startsWith("--algorithm=")) {
                algorithm = argument.substring("--algorithm=".length());
            } else {
                rawInput = argument;
            }
        }
        // Read numbers as standard input
        if (rawInput.isEmpty()) {
            Scanner scanner = new Scanner(System.in);
            System.out.println("Enter complaint priority numbers separated by commas:");

            if (scanner.hasNextLine()) {
                rawInput = scanner.nextLine();
            }
            scanner.close();
        }


        String[] parts = rawInput.split(","); //(Separates values by a comma)
        int[] numbers = new int[parts.length]; //Create a new array of integers

        for (int i = 0; i < parts.length; i++) {
            String currentPart = parts[i].trim(); //Removes spaces between the numbers (Useless but makes output look cleaner)
            try {
                numbers[i] = Integer.parseInt(currentPart); // Converts line into integer
            } catch (NumberFormatException e) {
                System.out.println("Invalid Input, Please provide integers with commas in between them");
                return;
            }
        }

        // Check if user has given at least 3 integers (Validation)
        if (numbers.length < 3) {
            System.out.println("Please provide at least three integers.");
            return;
        }
        // Algorithm decision block
        if (algorithm.equals("selection")) {
            selectionSort(numbers);
        } else if (algorithm.equals("bubble")) {
            bubbleSort(numbers);
        } else {
            System.out.println("Invalid: Use Selection or Bubble algorithm");
            return;
        }

        System.out.println(Arrays.toString(numbers));
        System.out.println("Intern queue: " + numbers[0] + ", " + numbers[1] + ", " + numbers[2]);

    }



    // Bubble Sort algorithm
    public static void bubbleSort(int[] numbers) {
        int temporaryValue;

        for (int i = numbers.length; i > 0; i--) {
            for (int j = 0; j < i - 1; j++) {
                if (numbers[j] > numbers[j + 1]) {
                    temporaryValue = numbers[j];
                    numbers[j] = numbers[j + 1];
                    numbers[j + 1] = temporaryValue;
                }
            }
        }
    }


    // Selection Sort algorithm

    public static void selectionSort(int[] numbers) {
        int smallestIndex;
        int temporaryValue;

        for (int i = 0; i < numbers.length - 1; i++) {
            smallestIndex = i;

            for (int j = i + 1; j < numbers.length; j++) // Finds the smallest value
                if (numbers[j] < numbers[smallestIndex]) {
                    smallestIndex = j;
                }

            if (smallestIndex != i) { // Swaps the smallest value in the correct position
                temporaryValue = numbers[i];
                numbers[i] = numbers[smallestIndex];
                numbers[smallestIndex] = temporaryValue;
            }

        }
    }
}

