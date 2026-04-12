package org.example.fromsulaiman.s5.InternQueueSorter;

import java.util.Scanner;


public class InternQueueSorter {
    public static void main(String[] args) {
        String rawInput = null;

        // Read from command line argument
        for (String arg : args) {
            if (!arg.startsWith("--")) {
                rawInput = arg;
            }
        }

        // Fall back to STDIN if no inline list was given
        if (rawInput == null || rawInput.isBlank()) {
            Scanner scanner = new Scanner(System.in);
            if (scanner.hasNextLine()) {
                rawInput = scanner.nextLine().trim();
            }
        }

        // Validate that we actually received some input
        if (rawInput == null || rawInput.isBlank()) {
            System.err.println("Error: No priority numbers provided.");
            System.err.println("Usage: java InternQueueSorter [--algorithm=selection|bubble] <n1,n2,...>");
            System.exit(1);
        }
        // Parse and validate minimum three items
        int[] priorities = parseInput(rawInput);

        if (priorities.length < 3) {
            System.err.println("Error: Please provide at least 3 priority numbers.");
            System.exit(1);
        }


        if (priorities.length < 3) {
            System.err.println("Error: Please provide at least 3 priority numbers.");
            System.exit(1);
        }

        // Test selectionSort
        selectionSort(priorities);
        System.out.println("Sorted (selection): " + arrayToString(priorities));

    }

    static void selectionSort(int[] arr) {
        int n = arr.length;

        for (int sortedBoundary = 0; sortedBoundary < n - 1; sortedBoundary++) {

            int minIndex = sortedBoundary; // assume first unsorted item is min

            // Search for a smaller value in the remaining unsorted portion
            for (int scanner = sortedBoundary + 1; scanner < n; scanner++) {
                if (arr[scanner] < arr[minIndex]) {
                    minIndex = scanner;
                }
            }

            // Swap the found minimum into the sorted boundary position
            if (minIndex != sortedBoundary) {
                int temp = arr[sortedBoundary];
                arr[sortedBoundary] = arr[minIndex];
                arr[minIndex] = temp;
            }
        }
    }
    static int[] parseInput(String rawInput) {
        String[] tokens = rawInput.split(",");
        int[] result = new int[tokens.length];

        for (int i = 0; i < tokens.length; i++) {
            String token = tokens[i].trim();
            try {
                result[i] = Integer.parseInt(token);
            } catch (NumberFormatException e) {
                System.err.println("Error: '" + token + "' is not a valid integer.");
                System.exit(1);
            }
        }
        return result;
    }
    static String arrayToString(int[] arr) {
        StringBuilder sb = new StringBuilder("[");
        for (int i = 0; i < arr.length; i++) {
            sb.append(arr[i]);
            if (i < arr.length - 1) sb.append(", ");
        }
        sb.append("]");
        return sb.toString();
    }
}
