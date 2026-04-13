package org.example.fromtibyan.sprint5.internqueuesorteroop;

public class InputParser {
    public static int[] parse(String input) {
        if (!input.contains(",")) {
            System.err.println("Invalid input format. Please enter integers separated by commas.");
            return null;
        } else {
            String[] parts = input.split(",");
            int[] priorities = new int[parts.length];
            for (int i = 0; i < parts.length; i++) {
                priorities[i] = Integer.parseInt(parts[i].trim());// convert to array
            }
            return priorities;
        }
    }
}
