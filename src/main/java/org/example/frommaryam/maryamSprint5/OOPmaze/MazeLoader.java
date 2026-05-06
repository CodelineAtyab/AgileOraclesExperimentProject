package org.example.frommaryam.maryamSprint5.OOPmaze;

import java.nio.file.*;
import java.io.IOException;
import java.util.List;

public class MazeLoader {

    // SRP
    public static Maze load(String file) throws IOException {

        List<String> lines = Files.readAllLines(Path.of(file));

        int n = lines.size();
        char[][] grid = new char[n][n];

        int startCount = 0; // count of @
        int exitCount = 0;  // count of E

        for (int i = 0; i < n; i++) {

            if (lines.get(i).length() != n) {
                throw new RuntimeException("maze error size validation");
            }

            for (int j = 0; j < n; j++) {

                char c = lines.get(i).charAt(j);
                grid[i][j] = c;

                if (c == '@') startCount++;
                if (c == 'E') exitCount++;

                // border validation
                if (i == 0 || i == n - 1 || j == 0 || j == n - 1) {
                    if (c != '1' && c != '@' && c != 'E') {
                        throw new RuntimeException("invalid border");
                    }
                }
            }
        }

        // must have exactly one start and one exit
        if (startCount != 1 || exitCount != 1) {
            throw new RuntimeException("must have one @ and one E");
        }

        return new Maze(grid);
    }
}
