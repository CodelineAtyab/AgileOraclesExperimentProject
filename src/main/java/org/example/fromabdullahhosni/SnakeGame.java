package org.example.fromabdullahhosni;

public class SnakeGame {
    public static void main(String[] args) {


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
