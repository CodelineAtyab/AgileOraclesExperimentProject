package org.example.fromatyab;

import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;

public class MazeGameBot {
    public static void main(String[] args) throws InterruptedException {
        char[][] maze = loadAndGetMaze();
        int[] initialPlayerPosition = getPLayerLocation(maze);
        ArrayList<int[]> listOfMoves = new ArrayList<>();

        // Predefined list of moves
        listOfMoves.add(new int[]{9, 2});
        listOfMoves.add(new int[]{8, 2});
        listOfMoves.add(new int[]{7, 2});
        listOfMoves.add(new int[]{6, 2});
        listOfMoves.add(new int[]{5, 2});
        listOfMoves.add(new int[]{4, 2});
        listOfMoves.add(new int[]{4, 3});
        listOfMoves.add(new int[]{4, 4});

        System.out.printf("Location of @ is (%d,%d)\n", initialPlayerPosition[0], initialPlayerPosition[1]);

        System.out.println("Before the change:");
        displayMaze(maze);

        // Processing
        int[] currPlayerPosition = initialPlayerPosition;

        for (int[] currMove: listOfMoves) {
            Thread.sleep(2000);
            currPlayerPosition = makeMove(maze, currPlayerPosition, currMove);

            printEmptyLines();
            displayMaze(maze);
        }
    }

    public static int[] makeMove(char[][] maze, int[] sourcePosition, int[] targetPosition) {
        char valueOnTargetLocation = maze[targetPosition[0]-1][targetPosition[1]-1];

        // Check if target location is valid
        if (valueOnTargetLocation == '0' && valueOnTargetLocation != '-') {
            System.out.println("Found a valid way forward");

            // Mark the source location as tracked
            maze[sourcePosition[0]-1][sourcePosition[1]-1] = '-';

            // Move the @ to the target location
            maze[targetPosition[0]-1][targetPosition[1]-1] = '@';

        }
        else {
            System.out.println("No way forward");
        }

        return new int[]{targetPosition[0], targetPosition[1]};

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
            mazePath = Path.of(MazeGameBot.class.getResource(relativeMazePath).toURI());
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
                    location[0] = row + 1;
                    location[1] = col + 1;
                }
            }
        }
        return location;
    }


    public static void printEmptyLines() {
        for (int count=0; count<18; count++) {
            System.out.println();
        }
    }

    public static final String relativeMazePath = "./data/maze.txt";
}
