package org.example.fromabdullahhosni.draft;

import org.example.fromatyab.FileManager;

import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;

public class escapethemaze {
    public static void main(String[] args) {
        Path mazePath = null;
        char maze[][] = null;

        try {
            mazePath = Path.of(FileManager.class.getResource("./data/maze.txt").toURI());
        }
        catch (URISyntaxException e ){
            throw new RuntimeException(e);
        }

        try {
            String fileContent = Files.readString(mazePath);
            String[] linesOfFile = fileContent.split("\n");
            int lineLength = linesOfFile[0].length();

            maze = new char[linesOfFile.length][lineLength];  // Load it in 2D Array or Array of Arrays

            for (int row=0; row<linesOfFile.length; row++) {
                char[] currRow = linesOfFile[row].toCharArray();
                // System.out.printf("%s\n", linesOfFile[row]);

                for (int col=0; col<currRow.length; col++) {
                    maze[row][col] = currRow[col];
                }
            }
        }
        catch (IOException e){
            throw new RuntimeException(e);
        }

        for(int row=0; row<10; row++) {
            for(int col=0; col<10; col++) {
                System.out.printf("%c ", maze[row][col]);
            }
            System.out.println();
        }

        // Declarning starting && exit positions .
        // pointer position.
        // each position will have the and (row,column) coordnates.
        int startRow = 0;
        int startColumn = 0;    //start

        int exitRow = 0;
        int exitcolum = 0;      //exit


        for (int row = 0; row < maze.length; row++) {
            for (int col = 0; col < maze[row].length; col++) {
                if (maze[row][col] == '@') {
                    startRow = row;                 // found start row
                    startColumn = col;                 // found start col
                }
                if (maze[row][col] == 'E') {
                    exitRow = row;                  // found exit row
                    exitcolum = col;                  // found exit col
                }
            }
        }

    }
}
