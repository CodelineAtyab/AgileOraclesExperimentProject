package org.example.fromrima.sprintfour;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.*;

public class EscapeMaze {

    static char[][] maze;
    static int rows, cols;

    public static void main(String[] args) throws InterruptedException {
        // Read file
        List<String> lines = readFile();
        // Display file
        System.out.println("Original Maze:\n");
        displayLines(lines);
        // 3Convert to 2D array
        maze = to2DArray(lines);

        // Validate
        if (!validateMaze()) {
            System.out.println("Invalid maze.");
            return;
        }

        // Find the @ start
        int[] start = findStart();

        // solve using stack
        Stack<int[]> path = solve(start);

        // printing the result
        if (path != null) {
            System.out.println("\nMaze Solved!");
            printPath(path);
        } else {
            System.out.println("No path found.");
        }
    }

    //read the mazeFile.txt
    static List<String> readFile() {
        try {
            return Files.readAllLines(Path.of("src/main/java/org/example/fromrima/sprintfour/mazeFile.txt"));
        } catch (IOException e) {
            throw new RuntimeException("Error reading file");
        }
    }

    //display the mazeFile.txt
    static void displayLines(List<String> lines) {
        for (String line : lines) {
            System.out.println(line);
        }
    }

    //convert to 2D Array
    static char[][] to2DArray(List<String> lines) {
        rows = lines.size();
        cols = lines.get(0).length();
        char[][] m = new char[rows][cols];
        for (int i = 0; i < rows; i++) {
            m[i] = lines.get(i).toCharArray();
        }
        return m;
    }

    static boolean validateMaze() {
        int start = 0, end = 0;
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                char c = maze[i][j];
                if (c != '1' && c != '0' && c != '@' && c != 'E')
                    return false;
                if (c == '@') start++;
                if (c == 'E') end++;

                // check the Border using if condition : only 1 allowed
                if (i == 0 || j == 0 || i == rows - 1 || j == cols - 1) {
                    if (c != '1' && c != '@' && c != 'E') return false;
                }
            }
        }
        return start == 1 && end == 1;
    }

    //find-out the @ start char
    static int[] findStart() {
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                if (maze[i][j] == '@')
                    return new int[]{i, j};
            }
        }
        return null;
    }

    //using stack and backtrack
    static Stack<int[]> solve(int[] start) throws InterruptedException {

        Stack<int[]> stack = new Stack<>();
        boolean[][] visited = new boolean[rows][cols];

        stack.push(start);
        visited[start[0]][start[1]] = true;

        while (!stack.isEmpty()) {

            int[] cur = stack.peek();
            int r = cur[0], c = cur[1];

            // Reached exit
            //  r and c they are current coordinates of the top of the stack and check the current cell is exist
            if (maze[r][c] == 'E')
                return stack;

            boolean moved = false;
            //generate list of all 4 possible moves
            int[][] directions = {{r + 1, c}, {r - 1, c}, {r, c + 1}, {r, c - 1}};
            //check the direction move in  the cells.
            for (int[] d : directions) {
                int nr = d[0], nc = d[1];
                if (isValid(nr, nc, visited)) {
                    stack.push(new int[]{nr, nc});
                    visited[nr][nc] = true;
                    animate(nr, nc); // animate only moving @
                    moved = true;
                    break;
                }
            }

            // Backtrack using stack data structure
            if (!moved) {
                stack.pop();
                if (!stack.isEmpty()) {
                    int[] prev = stack.peek();
                    animate(prev[0], prev[1]);
                }
            }
        }

        return null;
    }

    //valid movement
    static boolean isValid(int r, int c, boolean[][] visited) {
        return r >= 0 && c >= 0 &&
                r < rows && c < cols &&
                (maze[r][c] == '0' || maze[r][c] == 'E') &&
                !visited[r][c];
    }

    //animation
    static void animate(int playerRow, int playerCol) throws InterruptedException {
        System.out.println();
        //use a loop because the maze is a 2D array; we need to visit each cell to print it
        for (int i = 0; i < rows; i++) {
            System.out.print("   "); // left margin
            for (int j = 0; j < cols; j++) {
                //ensures only one moving @ is displayed on the maze.
                if (i == playerRow && j == playerCol) {
                    System.out.print("@ "); // moving @
                } else if (maze[i][j] == '@') {
                    // If original @ is on border then print 1
                    if (i == 0 || j == 0 || i == rows - 1 || j == cols - 1)
                        System.out.print("1 ");
                    else
                        System.out.print("0 ");
                } else {
                    System.out.print(maze[i][j] + " ");
                }
            }
            System.out.println();
        }
        Thread.sleep(1000);
    }

    //printing the path
    static void printPath(Stack<int[]> stack) {
        System.out.println("Path:");
        for (int[] p : stack) {
            System.out.print("(" + (p[0] + 1) + "," + (p[1] + 1) + ") ");
        }
        System.out.println();
    }
}