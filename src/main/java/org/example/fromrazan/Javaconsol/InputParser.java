package org.example.fromrazan.Javaconsol;

public class InputParser {

    public static int[] parse(String input) {

        if (input == null || input.trim().isEmpty()) {
            throw new IllegalArgumentException("THE INPUT IS EMPTY : ");
        }

        String[] parts = input.split(",");
        int[] numbers = new int[parts.length];

        for (int i = 0; i < parts.length; i++) {

            try {
                numbers[i] = Integer.parseInt(parts[i].trim());
            } catch (NumberFormatException e) {
                throw new IllegalArgumentException(" THE VALUE IS INCORRECT" + parts[i]);
            }
        }

        return numbers;

    }
}
