package org.example.fromsulaiman.s5.InternQueueSorter;

import java.util.Scanner;


public class InternQueueSorter {
    public static void main(String[] args) {
        String algorithm = "selection";
        String rawInput = null;

        // Parse command-line arguments
        for (String arg : args) {
            if (arg.startsWith("--algorithm=")) {
                algorithm = arg.substring("--algorithm=".length()).toLowerCase();
            } else {
                rawInput = arg;
            }
        }


        // Fall back to STDIN if no inline list was given
        if (rawInput == null || rawInput.isBlank()) {
            Scanner scanner = new Scanner(System.in);
            if (scanner.hasNextLine()) rawInput = scanner.nextLine().trim();
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


        // ── Sort using chosen algorithm ───────────────────────────────────
        switch (algorithm) {
            case "bubble":
                bubbleSort(priorities);
                break;
            case "selection":
                selectionSort(priorities);
                break;
            default:
                System.err.println("Error: Unknown algorithm '" + algorithm + "'. Use 'selection' or 'bubble'.");
                System.exit(1);
            }

        // ── Print results ─────────────────────────────────────────────────
        System.out.println("Sorted list:  " + arrayToString(priorities));
        System.out.println("Intern queue: " + priorities[0] + ", " + priorities[1] + ", " + priorities[2]);
        }
    static void selectionSort(int[] arr) {
        int n = arr.length;
        for (int sortedBoundary = 0; sortedBoundary < n - 1; sortedBoundary++) {
            int minIndex = sortedBoundary;
            for (int scanner = sortedBoundary + 1; scanner < n; scanner++) {
                if (arr[scanner] < arr[minIndex]) minIndex = scanner;
            }
            if (minIndex != sortedBoundary) {
                int temp = arr[sortedBoundary];
                arr[sortedBoundary] = arr[minIndex];
                arr[minIndex] = temp;
                }
            }
        }
    static void bubbleSort(int[] arr) {
        int n = arr.length;

        for (int pass = 0; pass < n - 1; pass++) {
            boolean swapped = false;

            // Each pass only needs to reach (n - 1 - pass) because the last `pass` elements are already in their final sorted positions
            for (int cursor = 0; cursor < n - 1 - pass; cursor++) {
                if (arr[cursor] > arr[cursor + 1]) {
                    int temp = arr[cursor];
                    arr[cursor] = arr[cursor + 1];
                    arr[cursor + 1] = temp;
                    swapped = true;
                }
            }

            // No swaps this pass → already sorted, stop immediately
            if (!swapped) break;
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





