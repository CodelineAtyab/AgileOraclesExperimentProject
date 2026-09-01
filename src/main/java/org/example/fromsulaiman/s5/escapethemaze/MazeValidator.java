package org.example.fromsulaiman.s5.escapethemaze;

import java.io.IOException;

public class MazeValidator {

    public static void validate(char[][] grid) throws IOException {
        if (grid == null || grid.length == 0) {
            throw new IOException("Maze is empty.");
        }

        int n = grid.length;

        for (int i = 0; i < n; i++) {
            if (grid[i] == null || grid[i].length != n) {
                throw new IOException("Maze must be n x n: row " + i + " length is wrong.");
            }
            for (int j = 0; j < n; j++) {
                char ch = grid[i][j];
                if (ch != '0' && ch != '1' && ch != '@' && ch != 'E') {
                    throw new IOException("Invalid character at (" + i + "," + j + "): '" + ch + "'");
                }
            }
        }

        int atCount = 0;
        int eCount = 0;
        int atRow = -1;
        int atCol = -1;
        int eRow = -1;
        int eCol = -1;

        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                if (grid[i][j] == '@') {
                    atCount++;
                    atRow = i;
                    atCol = j;
                } else if (grid[i][j] == 'E') {
                    eCount++;
                    eRow = i;
                    eCol = j;
                }
            }
        }

        if (atCount != 1) {
            throw new IOException("Maze must have exactly one start '@'. Found: " + atCount);
        }
        if (eCount != 1) {
            throw new IOException("Maze must have exactly one exit 'E'. Found: " + eCount);
        }

        if (!onBorder(atRow, atCol, n)) {
            throw new IOException("Start '@' must be on the border of the maze.");
        }
        if (!onBorder(eRow, eCol, n)) {
            throw new IOException("Exit 'E' must be on the border of the maze.");
        }

        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                if (!isBorder(i, j, n)) {
                    continue;
                }
                char ch = grid[i][j];
                if (ch != '1' && ch != '@' && ch != 'E') {
                    throw new IOException("Border cell at (" + i + "," + j + ") must be wall '1', '@', or 'E'.");
                }
            }
        }
    }

    private static boolean isBorder(int row, int col, int n) {
        return row == 0 || row == n - 1 || col == 0 || col == n - 1;
    }

    private static boolean onBorder(int row, int col, int n) {
        return isBorder(row, col, n);
    }
}
