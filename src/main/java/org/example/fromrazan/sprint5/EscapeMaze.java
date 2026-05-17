package org.example.fromrazan.sprint5;

import java.util.*;
import java.nio.file.*;
import java.io.*;


public class EscapeMaze {

    private char[][] maze;
    private boolean[][] visited;
    private int size;

  public void load(String filepath) throws IOException {
        List<String> lines = Files.readAllLines(Path.of("src/main/java/org/example/fromrazan/sprint5/maze.txt"));

        size = lines.size();
        maze = new char[size][size];
        visited = new boolean[size][size];

        int startCount = 0, exitCount = 0;

        for (int i = 0; i < size; i++) {
            if (lines.get(i).length() != size) {
                throw new RuntimeException("Maze must be n x n");

            }

            for (int k = 0; k < size; k++) {
                char ch = lines.get(i).charAt(k);
                maze[i][k] = ch;

                if (ch == '@') startCount++;
                if (ch == 'E') exitCount++;

            }
        }
        if (startCount != 1 || exitCount != 1) {
            throw new RuntimeException(("Maze must have exactly one @ and one E"));

        }
    }

    public char[][] getMaze() { return maze;}

    public boolean[][] getVisited() { return visited;}

    public int getSize() { return size; }
}


