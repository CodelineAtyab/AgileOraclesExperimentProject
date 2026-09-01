package org.example.fromsulaiman.s5.InternQueueSortOPP.util;

public class InputParser {

    // parse() = the one public method — give it a String, get back an int[]
    public int[] parse(String input) {

        // CHECK 1: is the input empty or null? ──────────────────────────
        if (input == null || input.trim().isEmpty()) {
            throw new IllegalArgumentException(
                    "ERROR: No input provided.\n" +
                            "       Example: 5,3,9,1,4"
            );
        }
        // .trim()  = removes spaces from start and end
        // .split() = breaks the string at every comma → gives us a String[]
        //   "5,3,9,1,4".split(",")  →  ["5", "3", "9", "1", "4"]

        String[] tokens = input.trim().split(",");

        // CHECK 2: do we have at least 3 numbers? ───────────────────────
        if (tokens.length < 3) {
            throw new IllegalArgumentException(
                    "ERROR: Need at least 3 values. You gave: " + tokens.length + ".\n" +
                            "       Example: 5,3,9,1,4"
            );
        }

        // CONVERT each String token into an int ─────────────────────────
        int[] numbers = new int[tokens.length];  // make room for the result

        for (int i = 0; i < tokens.length; i++) {

            String token = tokens[i].trim(); // remove any spaces around this value

            // CHECK 3: is this token completely empty? (e.g. "5,,3")
            if (token.isEmpty()) {
                throw new IllegalArgumentException(
                        "ERROR: Empty value at position " + (i + 1) + ".\n" +
                                "       Check for double commas."
                );
            }

            // CHECK 4: is it actually a number?
            try {
                numbers[i] = Integer.parseInt(token); // "5" → 5
            } catch (NumberFormatException e) {
                // parseInt throws this if the string isn't a number
                throw new IllegalArgumentException(
                        "ERROR: \"" + token + "\" at position " + (i + 1) +
                                " is not a valid integer.\n" +
                                "       Only whole numbers accepted."
                );
            }
        }

        return numbers; // return the int[]
    }
}