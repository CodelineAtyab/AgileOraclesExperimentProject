package org.example.fromkhadija.sprint5;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class MazeLoader {
    //1. Receives file path from the user (CLI argument)
    public static Maze load(String path) throws IOException {

        Path filePath = Paths.get(path);
        //2. Checks if the file exists
        if (!Files.exists(filePath)) {
            throw new IOException("File not found: " + filePath);
        }
        // 3. Reads the file content
        String content = Files.readString(filePath);
        // 4. Splits the file into lines (rows of the maze)
        String[] lines = content.split("\\R");

        // 5. Converts the text into a 2D char[][] grid
        char[][] grid = new char[lines.length][lines.length];

        boolean start = false;
        boolean exit = false;

        for (int i = 0; i < lines.length; i++) {

            if (lines[i].length() != lines.length) {
                throw new IllegalArgumentException("Maze must be n x n");
            }

            for (int j = 0; j < lines[i].length(); j++) {

                char c = lines[i].charAt(j);

                // 6. Validates the maze:
                //Must contain exactly one start @
                //Must contain exactly one exit E
                if (c == '@') start = true;
                if (c == 'E') exit = true;

                grid[i][j] = c;
            }
        }

        if (!start || !exit) {
            throw new IllegalArgumentException("Maze must contain @ and E");
        }
        // 7. Returns a Maze object containing the grid
        return new Maze(grid);
    }
}