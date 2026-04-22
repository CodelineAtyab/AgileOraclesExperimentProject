package org.example.fromaljolanda.sprint5.internQueueSorterOOPEdition;

public class InputParser {
    public static int[] parse(String input) {
        String[] tokens = input.split(","); // Parse input string

        // Handle invalid formats (At least 3 numbers)
        if (tokens.length < 3) {
            System.out.println("Error.. At least three integers are required.");
        }

        int[] arr = new int[tokens.length]; // Array to store integers

        for (int i = 0; i < tokens.length; i++) {
            arr[i] = Integer.parseInt(tokens[i]); // Validate integers
        }
        return arr;
    }
}
