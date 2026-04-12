package org.example.fromsulaiman.s5.InternQueueSorter;


public class InternQueueSorter {
    public static void main(String[] args) {

        int[] result = parseInput("5,3,9,1,4");
        System.out.print("Parsed: ");
        for (int n : result) System.out.print(n + " ");
        System.out.println();

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