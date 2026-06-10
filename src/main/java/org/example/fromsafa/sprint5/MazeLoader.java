package org.example.fromsafa.sprint5;

import java.nio.file.Files;
import java.nio.file.Path;

public class MazeLoader {

    public static Maze load(String filePath) throws Exception {

        Path path = Path.of(filePath);
        String content = Files.readString(path);
        String[] lines = content.split("\\R");

        char[][] grid = new char[lines.length][lines[0].length()];

        for (int i = 0; i < lines.length; i++) {
            grid[i] = lines[i].toCharArray();
        }

        return new Maze(grid);
    }
}
