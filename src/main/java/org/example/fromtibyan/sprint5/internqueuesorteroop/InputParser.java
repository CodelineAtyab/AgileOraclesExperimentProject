package org.example.fromtibyan.sprint5.internqueuesorteroop;

public class InputParser {
    public static int[] parse(String input) {
        if (input == null || input.isEmpty()) {
            System.err.println("Input cannot be empty.");
            return null;
        }
        String[] parts = input.split(",");
        int[] priorities = new int[parts.length];
        for (int i = 0; i < parts.length; i++) {
            String trimmed = parts[i].trim();// if string without commas is not integer
            if (!isInteger(trimmed)) {
                System.err.println("input is not an integer.");
                return null;
            }
            priorities[i] = Integer.parseInt(trimmed);
        }
        return priorities;
    }

    public static boolean isInteger(String value) {
        try {
            Integer.parseInt(value);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
}