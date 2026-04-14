package org.example.fromabdullahhosni.oop.escpeMaze;

import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;

public class MazeLoader {

    private static Path mazePath = null;
    private static char[][] array2d = null;    //oop attributes

    //------------------------------------------------------------------------------------
    // method to Load maze.txt
    public static char[][] loadMaze(){
        try {
            mazePath = Path.of(MazeLoader.class.getResource("./maze.txt").toURI());
        } catch (
                URISyntaxException e) {
            throw new RuntimeException(e);
        }

        try {
            String fileContent = Files.readString(mazePath);
            String[] linesOfFile = fileContent.split("\\r?\\n");
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

    //---------------------------------------
    // oop methods to reuse varraibles in other classes
    public static char[][] getArray2d() {
        return array2d;
    }



}



//        int rows = array2d.length;                                     // total rows of the maze
//        int cols = array2d[0].length;
//
//        for (int row = 0; row < 10; row++) {
//        for (int col = 0; col < 10; col++) {
//            System.out.printf("%c ", array2d[row][col]);
//        }
//        System.out.println();
//    }

//}
