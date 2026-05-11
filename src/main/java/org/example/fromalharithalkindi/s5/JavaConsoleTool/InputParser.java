package org.example.fromalharithalkindi.s5.JavaConsoleTool;

public class InputParser {
    public int[] parse(String input) {
        if (input == null || input.trim().isEmpty()) {
            System.err.println("Error: Input is empty.");
            System.exit(1);
        }

        String[] parts = input.trim().split(",");
        int[] numbers = new int[parts.length];

        for (int i = 0; i < parts.length; i++) {
            try {
                numbers[i] = Integer.parseInt(parts[i].trim());
            } catch (NumberFormatException e) {
                System.err.println("Error: Invalid value '" + parts[i].trim() + "' — all values must be integers.");
                System.exit(1);
            }
        }

        return numbers;
    }
}
