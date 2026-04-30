package org.example.fromsaif.SPRINT5.CliSnakeMovementGameOOP;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;

public class MapLoader {

    private static final int MINIMUM_SIZE = 15;

    // Reads map.txt, converts it into a 2D char grid, validates it,
    // then returns a GameMap object.
    public GameMap loadMap(Path mapPath) throws IOException {
        // Read all lines from the map file.
        // Each line represents one row in the grid.
        List<String> lines = Files.readAllLines(mapPath);

        // Convert the text lines into a 2D char array.
        char[][] grid = convertLinesToGrid(lines);

        // Validate that the map follows the minimum required size.
        validateMapSize(grid);

        // Wrap the grid inside a GameMap object.
        return new GameMap(grid);
    }

    // Converts the file lines into a 2D array.
    private char[][] convertLinesToGrid(List<String> lines) {
        char[][] grid = new char[lines.size()][];

        for (int row = 0; row < lines.size(); row++) {
            String line = lines.get(row);

            // The map file uses spaces between characters.
            String[] parts = line.split(" ");

            grid[row] = new char[parts.length];

            for (int col = 0; col < parts.length; col++) {
                grid[row][col] = parts[col].charAt(0);
            }
        }
        return grid;
    }
    // Checks that the map is at least 15x15.
    private void validateMapSize(char[][] grid) {
        if (grid.length < MINIMUM_SIZE || grid[0].length < MINIMUM_SIZE) {
            throw new IllegalArgumentException("Invalid map: map size must be at least 15x15.");
        }
    }
}
