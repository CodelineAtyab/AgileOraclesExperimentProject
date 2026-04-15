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

        // Validate the borders
        for (int row = 0; row < rows; row++) {
            for (int col = 0; col < cols; col++) {
                boolean isBorder = row == 0 || row == rows - 1 || col == 0 || col == cols - 1;

                if (isBorder) {
                    char cell = maze[row][col];

                    // Stops the validation immediately, then reports the error
                    if (cell != '1' && cell != '@' && cell != 'E') {
                        throw new IllegalArgumentException("Border cells must be '1', '@', or 'E'.");

                    }
                }
            }
        }
    }
}