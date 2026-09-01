package org.example.fromaljolanda.sprint5.escapeTheMazeOOPEdition;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.List;

public class MazeLoader {
    public static Maze load(String path) throws IOException {
        List<String> lines = Files.readAllLines(new File(path).toPath());
        int n = lines.size();
        char[][] maze = new char[n][n];

        for (int i = 0; i < n; i++) {
            maze[i] = lines.get(i).toCharArray();
        }

        if (!validate(maze)) {
            throw new RuntimeException("Invalid maze format!");
        }

        return new Maze(maze);
    }

    private static boolean validate(char[][] maze) {
        int n = maze.length;
        int start = 0;
        int end = 0;

        for (int i = 0; i < n; i++) {
            if (maze[i].length != n) {
                return false;
            }

            for (int j = 0; j < n; j++) {
                char c = maze[i][j];

                if (c == '@') {
                    start++;
                }
                if (c == 'E') {
                    end++;
                }

                if (i == 0 || j == 0 || i == n - 1 || j == n - 1) {
                    if (c != '1' && c != '@' && c != 'E') {
                        return false;
                    }
                }
            }
        }
        return start == 1 && end == 1;
    }
}
