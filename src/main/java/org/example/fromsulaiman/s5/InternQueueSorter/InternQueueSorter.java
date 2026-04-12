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
        // ── Parse and validate minimum three items ────────────────────────
        int[] priorities = parseInput(rawInput);

        if (priorities.length < 3) {
            System.err.println("Error: Please provide at least 3 priority numbers.");
            System.exit(1);
        }

        System.out.println("Parsed " + priorities.length + " priorities successfully.");


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
}