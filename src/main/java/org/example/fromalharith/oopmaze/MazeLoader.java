package org.example.fromalharith.oopmaze;

import java.io.*;
import java.util.*;

public class MazeLoader {

    public Maze load(String path) throws IOException {
        List<char[]> lines = new ArrayList<>();

        try (BufferedReader br = new BufferedReader(new FileReader(path))) {
            String line;

            while ((line = br.readLine()) != null) {
                if (!line.trim().isEmpty()) {
                    lines.add(line.toCharArray());
                }
            }
        }

        validate(lines);
        char[][] grid = lines.toArray(new char[0][]);
        return new Maze(grid);
    }

    private void validate(List<char[]> lines) {
        if (lines.isEmpty()) {
            throw new IllegalArgumentException("Maze is empty");
        }

        int cols = lines.get(0).length;
        int start = 0, exit = 0;

        for (char[] row : lines) {
            if (row.length != cols) {
                throw new IllegalArgumentException("Maze must be rectangular");
            }

            for (char c : row) {
                if (c == '@') start++;
                if (c == 'E') exit++;
            }
        }

        if (start != 1) {
            throw new IllegalArgumentException("Maze must have exactly one '@'");
        }

        if (exit == 0) {
            throw new IllegalArgumentException("Maze must have at least one 'E'");
        }
    }
}