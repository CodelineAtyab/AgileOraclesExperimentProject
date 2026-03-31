package org.example.fromabdullahhosni;

public class SnakeGame {
    public static void main(String[] args) {

        //--------------------------------------------
        // STEP 1 - TAKING INPUT .CMD COMMAND LINE .
        //--------------------------------------------
        try {
            if (args.length > 0){
                for (String input : args){
                    System.out.println(input);
                }
            }
        }
        catch (Exception e){
            System.out.println("Invalid Direction");
        }
    }
}
