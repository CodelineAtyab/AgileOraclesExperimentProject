package org.example.fromsaif.SPRINT5.EscapeTheMazeOOP;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;

public class MazeLoader {
    public Maze loadMaze(String filePath)
            throws IOException {
        Path path = Path.of(filePath);
        List<String> lines = Files.readAllLines(path);

        if (lines.isEmpty()) {
            throw new IllegalArgumentException("Maze file Unavailable.");
        }

        int rows = lines.size();
        int cols = lines.get(0).length();

        if (rows != cols) {
            throw new IllegalArgumentException("Maze must be a valid.");
        }
        for (int i = 0; i < lines.size(); i++) {
            if (lines.get(i).length() != cols) {
                throw new IllegalArgumentException("All maze rows must have the same length.");
            }

            int startCount = 0;
            int exitCount = 0;

            for (int row = 0; row < rows; row++) {
                for (int col = 0; col < cols; col++) {
                    char cell = grid[row][col];

                    if (cell == '@') {
                        startCount++;
                    }

                    if (cell == 'E') {
                        exitCount++;
                    }

                    boolean isBorder = row == 0 || row == rows - 1 || col == 0 || col == cols - 1;

                    if (isBorder) {
                        if (cell != '1' && cell != '@' && cell != 'E') {
                            throw new IllegalArgumentException("Border cells must be '1', '@', or 'E'.");
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
        }

            // Converts file lines into 2D arrays
            char[][] grid = new char[lines.size()][];
            for (int i = 0; i < lines.size(); i++) {
                grid[i] = lines.get(i).toCharArray(); // Convert one text row into one maze row
            }
            return new Maze(grid);
        }
    }

