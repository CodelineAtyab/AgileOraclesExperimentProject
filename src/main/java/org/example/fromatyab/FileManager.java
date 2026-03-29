package org.example.fromatyab;

import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;

public class FileManager {
    public static void main(String[] args) {
        char[][] maze = loadAndGetMaze();
        int[] initialPlayerPosition = getPLayerLocation(maze);

        System.out.printf("Location of @ is (%d,%d)\n", initialPlayerPosition[0] + 1, initialPlayerPosition[1] + 1);

        System.out.println("Before the change:");
        displayMaze(maze);

        // Processing
        // makeMove(maze, 9, 2);

        System.out.println("After the change:");
        displayMaze(maze);
    }

    public static void displayMaze(char[][] maze) {
        for(int row=0; row < maze.length; row++) {
            for(int col=0; col < maze[row].length; col++) {
                System.out.printf("%c ", maze[row][col]);
            }
            System.out.println();
        }
    }

    public static char[][] loadAndGetMaze() {
        char[][] maze;
        Path mazePath = null;

        try {
            mazePath = Path.of(FileManager.class.getResource(relativeMazePath).toURI());
        } catch (URISyntaxException e) {
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
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return maze;
    }

    public static int[] getPLayerLocation(char[][] maze) {
        int[] location = new int[2];
        for (int row=0; row < maze.length; row++) {
            for (int col=0; col < maze[row].length; col++) {
                if (maze[row][col] == '@') {
                    location[0] = row;
                    location[1] = col;
                }
            }
        }
        return location;
    }

    public static final String relativeMazePath = "./data/maze.txt";
}
