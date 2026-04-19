package org.example.fromsafaalmaamari.sprint5;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.io.InputStream;

public class MazeLoader {
    public static Maze loadFromFile(Path path) throws IOException {
        String content = Files.readString(path);
        String[] lines = content.split("\\R");

        char[][] grid = new char[lines.length][lines[0].length()];

        for (int row = 0; row < lines.length; row++) {
            grid[row] = lines[row].toCharArray();
        }
        Maze maze = new Maze(grid);

        if (!isValidMaze(maze)) {
            throw new IllegalArgumentException("Invalid maze!");
        }
        return maze;
    }
    private static boolean isValidMaze(Maze maze) {
        int rows = maze.getRows();
        int cols = maze.getCols();

        int countStart = 0;
        int countExit = 0;

        for (int row = 0; row < rows; row++) {
            for (int col = 0; col < cols; col++) {
                if (row == 0 || row == rows - 1 || col == 0 || col == cols - 1) {
                    char cell = maze.getCell(row, col);
                    if (cell == '@') countStart++;
                    else if (cell == 'E') countExit++;
                    else if (cell != '1') return false;
                }
            }
        }
        return countStart == 1 && countExit == 1;
    }
}