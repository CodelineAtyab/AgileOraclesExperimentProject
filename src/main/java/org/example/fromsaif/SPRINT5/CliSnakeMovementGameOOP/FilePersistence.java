package org.example.fromsaif.SPRINT5.CliSnakeMovementGameOOP;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;

public class FilePersistence {

    // Saves the current game map back into map.txt after a valid snake move.
    public void saveMap(GameMap gameMap, Path mapPath) throws IOException {
        // Convert the GameMap grid into text lines using the same map.txt format.
        List<String> lines = convertGridToLines(gameMap.getGrid());
        // Write the updated lines back into the map file.
        Files.write(mapPath, lines);
    }

    // Saves the snake body order from tail to head
    public void saveSnakeState(Snake snake, Path snakeStatePath) throws IOException {
        List<String> lines = new ArrayList<>();
        for (Position part : snake.getBody()) {
            lines.add(part.toFileLine());
        }
        Files.write(snakeStatePath, lines);
    }

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
