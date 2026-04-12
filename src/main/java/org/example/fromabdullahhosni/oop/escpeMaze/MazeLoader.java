package org.example.fromabdullahhosni.oop.escpeMaze;

import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;

public class MazeLoader {

    Path mazePath = null;
    char array2d[][] = null;

    public char[][] loadMaze(){
        try {
            mazePath = Path.of(MazeLoader.class.getResource("./data/maze.txt").toURI());
        } catch (
                URISyntaxException e) {
            throw new RuntimeException(e);
        }

        try {
            String fileContent = Files.readString(mazePath);
            String[] linesOfFile = fileContent.split("\n");
            int lineLength = linesOfFile[0].length();

            array2d = new char[linesOfFile.length][lineLength];  // Load it in 2D Array or Array of Arrays

            for (int row = 0; row < linesOfFile.length; row++) {
                char[] currRow = linesOfFile[row].toCharArray();
                // System.out.printf("%s\n", linesOfFile[row]);

                for (int col = 0; col < currRow.length; col++) {
                    array2d[row][col] = currRow[col];
                }
            }
        } catch (
                IOException e) {
            throw new RuntimeException(e);
        }

        return array2d;
    }



//    int rows = array2d.length;                                     // total rows of the maze
//    int cols = array2d[0].length;
//
//        for (int row = 0; row < 10; row++) {
//        for (int col = 0; col < 10; col++) {
//            System.out.printf("%c ", array2d[row][col]);
//        }
//        System.out.println();
//    }

}
