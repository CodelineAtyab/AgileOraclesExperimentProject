package org.example.fromalharith.snakeoop;

import java.io.*;
import java.util.*;

public class MapLoader {

    public static GameMap load(String path, Snake snake) throws Exception {
        List<String> lines = new ArrayList<>();

        try (BufferedReader br = new BufferedReader(new FileReader(path))) {
            String line;
            while ((line = br.readLine()) != null) {
                lines.add(line.replace(" ", ""));
            }
        }

        int rows = lines.size();
        int cols = lines.get(0).length();

        char[][] grid = new char[rows][cols];

        for (int i = 0; i < rows; i++) {
            grid[i] = lines.get(i).toCharArray();
        }

        // init snake from map
        for (int r = 0; r < rows; r++) {
            for (int c = 0; c < cols; c++) {
                if (grid[r][c] == 'o') {
                    snake.add(new Position(r, c));
                }
            }
        }

        return new GameMap(grid);
    }
}