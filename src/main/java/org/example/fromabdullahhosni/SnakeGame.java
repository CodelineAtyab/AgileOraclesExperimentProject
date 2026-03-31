package org.example.fromabdullahhosni;

import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;

public class SnakeGame {
    public static void main(String[] args) {

        //--------------------------------------------
        // STEP 1 - TAKING INPUT .CMD COMMAND LINE .
        //--------------------------------------------
        try {
            if (args.length > 0) {
                for (String input : args) {
                    System.out.println(input);
                }
            }
        } catch (Exception e) {
            System.out.println("Invalid Direction");
        }

        //--------------------------------------------
        // STEP 2 - Loading 2d Array Game board .
        //--------------------------------------------
        Path boardPath = null;
        char array2d[][] = null;

        try {
            boardPath = Path.of(SnakeGame.class.getResource("./data/board.txt").toURI());
        }
        catch (URISyntaxException e) {
            System.out.println("Cannot load Game");
            throw new RuntimeException(e);
        }

        try {
            String pathContent = Files.readString(boardPath);
            String[] splitContent = pathContent.split("\n");
            int SplitLength = splitContent[0].length();

            array2d = new char[splitContent.length][SplitLength];  // Load it in 2D Array or Array of Arrays

            for (int row = 0; row < splitContent.length; row++) {
                char[] currRow = splitContent[row].toCharArray();
                // System.out.printf("%s\n", linesOfFile[row]);

                for (int col = 0; col < currRow.length; col++) {
                    array2d[row][col] = currRow[col];
                }
            }

        }
        catch (Exception e){
            System.out.println("Cannot Initelize Game board");
            throw new RuntimeException(e);
        }
    }
}
