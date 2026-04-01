package org.example.fromabdullahhosni;

import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.Queue;

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

        //print the board rows and columns
        for (int row = 0 ;row<array2d.length ;row++){
            for (int col = 0 ;col< array2d[0].length ;col++){
                System.out.printf("%s", array2d[row][col]); //2d array is printing
            }
            System.out.println();
        }

//
//
//        // declaring snake position
//        // position is having {x,y}
//        int rowPosition = 7; //row is presenting x.
//        int[] colPosition = {5,6,7,8,9}; //col is presenting y.
//
//
//
//        Queue<int[]> queue = new LinkedList<>();
//
////        for (int col: colPosition) {
////            queue.add(new int[]{rowPosition, col});
////            System.out.println(queue);
////        }
//
//        for (int col: colPosition){
//            queue.add(new int[]{rowPosition,col});
//        }
//        for (int[] position: queue){
//            System.out.println(Arrays.toString(position));
//        }
//        System.out.println();
////        array2d
//        //moving right
    }
}
