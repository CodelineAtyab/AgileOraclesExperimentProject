package org.example.fromkhadija.bounstask;

public class InputParser {
    public static int [] parse(String input) {

        try{

            String[] parts = input.trim().split("[,\\s]+");
            int [] numbers = new int[parts.length];

            for (int i = 0; i < parts.length; i++) {
                numbers[i] = Integer.parseInt(parts[i]);
            }
            return numbers;
        }

        catch(Exception e){
            throw new IllegalArgumentException("ERROR: Invalid input format!!");
        }
    }
}
