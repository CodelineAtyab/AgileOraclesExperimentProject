package org.example.fromrima.escapMazeOOP;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;

public class MazeLoader {
    //reads all maze lines
    public Maze load(String filePath) {
        List<String> lines = readFile(filePath);
        displayLines(lines); //print the maze
        //convert text lines into 2D char array
        char[][] grid = to2DArray(lines);
        if (!validate(grid)) {
            throw new RuntimeException("Invalid maze.");
        }

        return new Maze(grid); //create new maze obj
    }

    private List<String> readFile(String filePath) {
        try {
            return Files.readAllLines(Path.of(filePath));
        } catch (IOException e) {
            throw new RuntimeException("Error reading file");
        }
    }

    private void displayLines(List<String> lines) {
        System.out.println("Original Maze:\n");
        for (String line : lines) {
            System.out.println(line);
        }
    }

    //creates 2d maze array
    private char[][] to2DArray(List<String> lines) {
        int rows = lines.size();
        int cols = lines.get(0).length();
        char[][] grid = new char[rows][cols];

        for (int i = 0; i < rows; i++) {
            grid[i] = lines.get(i).toCharArray(); //convert line to char
        }
        return grid;
    }

    private boolean validate(char[][] maze) {
        int rows = maze.length;
        int cols = maze[0].length;
        int start = 0, end = 0;
        for (int i = 0; i < rows; i++) {
            if (maze[i].length != cols) {
                return false;
            }
            for (int j = 0; j < cols; j++) {
                char character = maze[i][j];
                //check the invalid characters
                if (character != '1' && character != '0' && character != '@' && character != 'E') {
                    return false;
                }
                if (character == '@') {
                    start++;
                }
                if (character == 'E') {
                    end++;
                }
                if (i == 0 || j == 0 || i == rows - 1 || j == cols - 1) {
                    if (character != '1' && character != '@' && character != 'E') {
                        return false;
                    }
                }
            }
        }
        //must one @ and one E in the grid
        return start == 1 && end == 1;
    }
}