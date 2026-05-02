package org.example.fromsaif.SPRINT5.CliSnakeMovementGameOOP;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;

public class FilePersistence {
    // Converts the 2D char grid into lines of text that can be saved in map.txt.
    private List<String> convertGridToLines(char[][] grid) {
        List<String> lines = new ArrayList<>();

        for (int row = 0; row < grid.length; row++) {
            StringBuilder line = new StringBuilder();

            for (int col = 0; col < grid[row].length; col++) {
                line.append(grid[row][col]);
                // Keep the required file format: characters separated by spaces.
                if (col < grid[row].length - 1) {
                    line.append(" ");
                }
            }
            lines.add(line.toString());
        }
        return lines;
    }
}
