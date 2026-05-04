package org.example.fromsaif.SPRINT4.EscapeTheMaze;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;
import java.util.Stack;

public class EscapeTheMaze {
    // CLI Argument
    public static void main(String[] args) {
        if (args.length != 1) {
            System.out.println("Error: Please provide the correct file path.");
            return;
        }

        // ===================== Handling command-line arguments ======================
        String mazeFilePath = args[0];
        // Load the file
        try {

            Path path = Path.of(mazeFilePath); // Creates a file path object (path handling)
            List<String> lines = Files.readAllLines(path); // File Reading
            //System.out.println(lines);

            // Converts file lines into 2D arrays
            char[][] maze = new char[lines.size()][];
            for (int i = 0; i < lines.size(); i++) {
                maze[i] = lines.get(i).toCharArray(); // Convert one text row into one maze row
            }

            //System.out.println("Maze converted to 2D array successfully.");

            validateMaze(maze);
            drawMaze(maze);

            // Finding the starting point
            Point start = findStart(maze);
            System.out.println("Starting Point: (" + (start.row + 1) + ", " + (start.col + 1) + ")");

            // Initial Stack Setup
            boolean[][] visited = new boolean[maze.length][maze[0].length];
            Stack<Point> stack = new Stack<>();

            stack.push(start); // Puts the starting position onto the stack
            visited[start.row][start.col] = true;

            while (!stack.isEmpty()) {
                Point current = stack.peek();
                char[][] displayMaze = copyMaze(maze);
                displayMaze[start.row][start.col] = '0';
                displayMaze[current.row][current.col] = '@';

                clearConsole();
                drawMaze(displayMaze);
                System.out.println("Maze Path:");
                for (int i = 0; i < stack.size(); i++) {
                    Point point = stack.get(i);
                    System.out.println("(" + (point.row + 1) + ", " + (point.col + 1) + ")");
                }
                Thread.sleep(1000);


                if (maze[current.row][current.col] == 'E') {
                    return;
                }

                Point next = getNextMove(maze, visited, current);
                if (next != null) {
                    stack.push(next); // Adds the next position to the current stack
                    visited[next.row][next.col] = true;
                } else {
                    stack.pop(); // Dead end or can't move forward, go backwards
                }
            }
            System.out.println("Path not found");

            // Helper method to check if move is valid or not


        } catch (IOException e) {
            System.out.println("Error: file could not be read.");
        } catch (IllegalArgumentException e) {
            System.out.println("Error: " + e.getMessage());
        } catch (InterruptedException e) {
            System.out.println("Animation was interrupted.");
        }
    }

    // Pointer class (Helps locates one position in the maze)
    static class Point {
        int row;
        int col;

        Point(int row, int col) {
            this.row = row;
            this.col = col;
        }
    }

    //============================ FINDING THE STARTING POINT =======================
    static Point findStart(char[][] maze) {
        for (int row = 0; row < maze.length; row++) {
            for (int col = 0; col < maze[row].length; col++) {
                if (maze[row][col] == '@') {
                    return new Point(row, col);
                }
            }
        }
        throw new IllegalArgumentException("Maze must contain '@' as the starting point.");
    }

    //============================== Movement logic ===================================
    static boolean isValidMove(char[][] maze, boolean[][] visited, int row, int col) {
        if (row < 0 || row >= maze.length || col < 0 || col >= maze[0].length) {
            return false;
        }
        if (visited[row][col]) {
            return false;
        }
        char cell = maze[row][col];
        return cell == '0' || cell == 'E';
    }

    //===================== Helper method to find the next move ========================
    static Point getNextMove(char[][] maze, boolean[][] visited, Point current) {
        int row = current.row;
        int col = current.col;

        if (isValidMove(maze, visited, row, col + 1)) {
            return new Point(row, col + 1);
        }
        if (isValidMove(maze, visited, row + 1, col)) {
            return new Point(row + 1, col);
        }
        if (isValidMove(maze, visited, row, col - 1)) {
            return new Point(row, col - 1);
        }
        if (isValidMove(maze, visited, row - 1, col)) {
            return new Point(row - 1, col);
        }
        return null;
    }

    // =========================== Draw initial maze grid ============================
    // Helper method to print the maze
    static void drawMaze(char[][] maze) {
        for (int row = 0; row < maze.length; row++) {
            for (int col = 0; col < maze[row].length; col++) {
                System.out.print(maze[row][col]);
            }
            System.out.println();
        }

    }

    //===================== Draw maze grid after each position move ===================
    static void clearConsole() {
        for (int i = 0; i < 30; i++) {
            System.out.println();
        }
    }

    static char[][] copyMaze(char[][] maze) {
        char[][] copy = new char[maze.length][maze[0].length];

        for (int row = 0; row < maze.length; row++) {
            for (int col = 0; col < maze[row].length; col++) {
                copy[row][col] = maze[row][col];
            }
        }
        return copy;
    }

    // =========================== MAZE VALIDATION ====================================
    static void validateMaze(char[][] maze) {
        // Validates if there's columns and rows
        if (maze.length == 0) {
            //throw new : stop the method immediately and report that the input is invalid
            throw new IllegalArgumentException("Can't run: Maze must have at least one row.");
        }
        if (maze[0].length == 0) {
            throw new IllegalArgumentException("Can't run: Maze must have at least one column.");
        }
        // Validate the no. of columns = no. of rows
        int rows = maze.length;
        int cols = maze[0].length;

        if (rows != cols) {
            throw new IllegalArgumentException("Maze must have the same number of rows and columns.");
        }

        int startCount = 0;
        int exitCount = 0;

        // Validate the borders
        for (int row = 0; row < rows; row++) {
            for (int col = 0; col < cols; col++) {
                char cell = maze[row][col];

                if (cell == '@') {
                    startCount++;
                }
                if (cell == 'E') {
                    exitCount++;
                }

                boolean isBorder = row == 0 || row == rows - 1 || col == 0 || col == cols - 1;

                if (isBorder) {

                    // Stops the validation immediately, then reports the error
                    if (cell != '1' && cell != '@' && cell != 'E') {
                        throw new IllegalArgumentException("Border cells must be '1', '@', or 'E'.");

                    }
                }
            }
        }

        if (startCount != 1) {
            throw new IllegalArgumentException("Maze must contain exactly one starting point '@'.");
        }
        if (exitCount != 1) {
            throw new IllegalArgumentException("Maze must contain exactly one exit 'E'.");
        }
    }
}