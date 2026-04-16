package org.example.fromsaif.SPRINT5;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;

public class EscapeTheMaze {
    // CLI Argument
    public static void main(String[] args) {
        if (args.length != 1) {
            System.out.println("Error: Please provide the correct file path.");
            return;
        }

        // ===================== Handling command-line arguments ======================
        String mazeFilePath = args[0];
        // Load the file
        try {
            Path path = Path.of(mazeFilePath); // Creates a file path object (path handling)
            List<String> lines = Files.readAllLines(path); // File Reading
            System.out.println("Maze file was read successfully.");
            System.out.println(lines);

            // Converts file lines into 2D arrays
            char[][] maze = new char[lines.size()][];
            for (int i = 0; i < lines.size(); i++) {
                maze[i] = lines.get(i).toCharArray(); // Convert one text row into one maze row
            }

            System.out.println("Maze converted to 2D array successfully.");
            System.out.println("First cell: " + maze[0][0]);
            System.out.println("Second row: " + new String(maze[1]));
            validateMaze(maze);

        } catch (IOException e) {
            System.out.println("Error: file could not be read.");
        } catch (IllegalArgumentException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }

    // Pointer class (Helps locates one position in the maze)
    static class Point {
        int row;
        int col;

        Point(int row, int col) {
            this.row = row;
            this.col = col;
        }
    }

    // =========================== MAZE VALIDATION ===============================

    static void validateMaze(char[][] maze) {
        // Validates if there's columns and rows
        if (maze.length == 0) {
            //throw new : stop the method immediately and report that the input is invalid
            throw new IllegalArgumentException("Can't run: Maze must have at least one row.");
        }
        if (maze[0].length == 0) {
            throw new IllegalArgumentException("Can't run: Maze must have at least one column.");
        }
        // Validate the no. of columns = no. of rows
        int rows = maze.length;
        int cols = maze[0].length;

        if (rows != cols) {
            throw new IllegalArgumentException("Maze must have the same number of rows and columns.");
        }

        int startCount = 0;
        int exitCount = 0;

        // Validate the borders
        for (int row = 0; row < rows; row++) {
            for (int col = 0; col < cols; col++) {
                char cell = maze[row][col];

                if (cell == '@') {
                    startCount++;
                }
                if (cell == 'E') {
                    exitCount++;
                }

                boolean isBorder = row == 0 || row == rows - 1 || col == 0 || col == cols - 1;

                if (isBorder) {

                    // Stops the validation immediately, then reports the error
                    if (cell != '1' && cell != '@' && cell != 'E') {
                        throw new IllegalArgumentException("Border cells must be '1', '@', or 'E'.");

                    }
                }
            }
        }

        if (startCount != 1) {
            throw new IllegalArgumentException("Maze must contain exactly one starting point '@'.");
        }
        if (exitCount != 1) {
            throw new IllegalArgumentException("Maze must contain exactly one exit 'E'.");
        }
    }
}