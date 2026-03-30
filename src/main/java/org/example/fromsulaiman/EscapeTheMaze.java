package org.example.fromsulaiman;

import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Stack;

public class EscapeTheMaze {
    static class Point {
        int row;
        int col;

        Point(int r, int c) {
            row = r;
            col = c;
        }
    }
    public static void main(String[] args) {
        Path mazePath = null;
        char[][] maze = null;

        try {
            mazePath = Path.of(
                    EscapeTheMaze.class.getResource("./maze/maze.txt").toURI());
        } catch (URISyntaxException e) {
            throw new RuntimeException(e);
        }

        try {
            String fileContent = Files.readString(mazePath);
            String[] linesOfFile = fileContent.split("\\R");

            int rows = linesOfFile.length;
            int cols = linesOfFile[0].length();

            maze = new char[rows][cols];

            for (int i = 0; i < rows; i++) {
                if (linesOfFile[i].length() != cols) {
                    System.out.println("Error: Maze is not rectangular.");
                    return;
                }

                char[] rowChars = linesOfFile[i].toCharArray();

                for (int j = 0; j < cols; j++) {
                    char c = rowChars[j];

                    if (c != '0' && c != '1' && c != '@' && c != 'E') {
                        System.out.println("Error: Invalid character '" + c + "' in maze.");
                        return;
                    }

                    maze[i][j] = c;
                }
            }

        } catch (IOException e) {
            System.out.println("Error reading file.");
            return;
        }

        Point start = null;

        for (int i = 0; i < maze.length; i++) {
            for (int j = 0; j < maze[0].length; j++) {
                if (maze[i][j] == '@') {
                    start = new Point(i, j);
                }
            }
        }

        if (start == null) {
            System.out.println("Start not found");
            return;
        }

        Stack<Point> stack = new Stack<>();
        boolean[][] visited = new boolean[maze.length][maze[0].length];

        stack.push(start);
        visited[start.row][start.col] = true;

        int[] dr = {-1, 1, 0, 0};
        int[] dc = {0, 0, -1, 1};

        boolean found = false;

        int rows = maze.length;
        int cols = maze[0].length;

        while (!stack.isEmpty()) {

            Point current = stack.peek();

            animate(maze, stack);
            if (maze[current.row][current.col] == 'E') {
                found = true;
                break;
            }

            boolean moved = false;

            for (int i = 0; i < 4; i++) {
                int newRow = current.row + dr[i];
                int newCol = current.col + dc[i];

                if (newRow >= 0 && newRow < rows &&
                        newCol >= 0 && newCol < cols &&
                        !visited[newRow][newCol] &&
                        (maze[newRow][newCol] == '0' || maze[newRow][newCol] == 'E')) {

                    stack.push(new Point(newRow, newCol));
                    visited[newRow][newCol] = true;
                    moved = true;
                    break;
                }
            }
            if (!moved) {
                stack.pop();
            }
        }
        if (found) {
            System.out.println("Maze Solved!!!!!!!!!!");

            for (Point p : stack) {
                System.out.println("(" + (p.row + 1) + ", " + (p.col + 1) + ")");
            }
        } else {
            System.out.println("No path found");
        }
    }
    public static void printMaze(char[][] maze, Point current) {
        for (int i = 0; i < maze.length; i++) {
            for (int j = 0; j < maze[0].length; j++) {
                if (i == current.row && j == current.col) {
                    System.out.print("@");
                } else {
                    System.out.print(maze[i][j]);
                }
            }
            System.out.println();
        }
    }
    public static void animate(char[][] maze, Stack<Point> stack) {
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }

        Point current = stack.peek();

        for (int i = 0; i < maze.length; i++) {
            for (int j = 0; j < maze[0].length; j++) {
                if (i == current.row && j == current.col) {
                    System.out.print("@");
                } else {
                    System.out.print(maze[i][j]);
                }
            }
            System.out.println();
        }

        System.out.println("\nPath:");

        for (Point p : stack) {
            System.out.println("(" + (p.row + 1) + ", " + (p.col + 1) + ")");
        }

        System.out.println("\n-----------------------------\n");
    }
}


