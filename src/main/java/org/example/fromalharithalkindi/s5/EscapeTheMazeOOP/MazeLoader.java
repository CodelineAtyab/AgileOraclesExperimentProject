package org.example.fromalharithalkindi.s5.EscapeTheMazeOOP;


import java.io.File;
import java.util.ArrayList;
import java.util.Scanner;

public class MazeLoader {

    public static Maze load(String path) throws Exception {
        ArrayList<String> lines = new ArrayList<>();
        File file = new File(path);

        if (!file.exists()) {
            throw new Exception("File not found.");
        }

        Scanner scanner = new Scanner(file);
        while (scanner.hasNextLine()) {
            lines.add(scanner.nextLine());
        }

        int n = lines.size();
        char[][] grid = new char[n][n];

        int startCount = 0;
        int exitCount = 0;

        for (int i = 0; i < n; i++) {
            if (lines.get(i).length() != n) {
                throw new Exception("Maze must be n x n.");
            }

            for (int j = 0; j < n; j++) {
                char ch = lines.get(i).charAt(j);
                grid[i][j] = ch;

                if (ch == '@') startCount++;
                if (ch == 'E') exitCount++;
            }
        }

        if (startCount != 1 || exitCount != 1) {
            throw new Exception("Maze must contain exactly one start and one exit.");
        }

        return new Maze(grid);
    }
}