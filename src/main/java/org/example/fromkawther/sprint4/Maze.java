package org.example.fromkawther.sprint4;

import java.io.IOException;
import java.nio.file.*;
import java.util.*;

public class Maze {
    public static void main(String[] args) throws IOException, InterruptedException {

        // identify the path of txt file to run the maze:
        Path mazeFile = Path.of("src/main/java/org/example/fromkawther/sprint4/maze.txt");

        try {
            // Read lines:
            List<String> lines = Files.readAllLines(mazeFile);
            int rows = lines.size();
            int cols = lines.get(0).length();

            // Create a char:
            char[][] maze = new char[rows][cols];

            // change string into char:
            for (int i = 0; i < rows; i++) {
                maze[i] = lines.get(i).toCharArray();
            }

            // check the maze:
            if (isValid(maze)) {
                solve(maze);
            } else {
                System.out.println("Invalid Maze");
            }

        } catch (IOException e) {
            System.out.println("ERROR");
        }
    }

    public static void solve(char[][] maze) throws InterruptedException {
        int rows = maze.length;
        int cols = maze[0].length;
        int startR = -1, startC = -1;

        // loop:
        for (int r = 0; r < rows; r++) {
            for (int c = 0; c < cols; c++) {
                if (maze[r][c] == '@') {
                    startR = r;
                    startC = c;
                }
            }
        }

        // Backtracking:
        Stack<Position> stack = new Stack<>();
        // track:
        boolean[][] visited = new boolean[rows][cols];

        // Push:
        stack.push(new Position(startR, startC));

        //  directions:
        int[] dr = {1, 0, -1, 0};
        int[] dc = {0, 1, 0, -1};

        while (!stack.isEmpty()) {
            // found current position:
            Position current = stack.peek();
            int r = current.row;
            int c = current.col;

            // Check if the current cell is the exit 'E'
            if (maze[r][c] == 'E') {
                draw(maze);
                System.out.println("Maze Solved!");
                printPath(stack);
                return;
            }

            // point the current cell as visited
            visited[r][c] = true;
            // Update
            maze[r][c] = '@';

            // Animation delay:
            draw(maze);
            Thread.sleep(1000);

            boolean moved = false;
            // Attempt to move in each of the 4 possible directions
            for (int i = 0; i < 4; i++) {
                int nextR = r + dr[i];
                int nextC = c + dc[i];

                // Check :
                if (nextR >= 0 && nextR < rows && nextC >= 0 && nextC < cols &&
                        (maze[nextR][nextC] == '0' || maze[nextR][nextC] == 'E') &&
                        !visited[nextR][nextC]) {

                    // Move forward: push new position to stack and mark as moved
                    stack.push(new Position(nextR, nextC));
                    moved = true;
                    break;
                }
            }

            //  backtrack by removing the current cell from stack
            if (!moved) {
                // Change :
                maze[r][c] = '0';
                stack.pop();
                draw(maze);
                Thread.sleep(1000);
            }
        }
        System.out.println("No path found.");
    }

    //  "clear" the console using empty lines and redraw:
    public static void draw(char[][] maze) {
        for (int i = 0; i < 50; i++) {
            System.out.println();
        }
        for (int i = 0; i < maze.length; i++) {
            System.out.println(new String(maze[i]));
        }
    }

    // Function to print the sequence of coordinates that form the last solution
    public static void printPath(Stack<Position> stack) {
        System.out.print("Path: ");
        for (int i = 0; i < stack.size(); i++) {
            Position p = stack.get(i);
            System.out.print("(" + p.row + "," + p.col + ")");
            if (i < stack.size() - 1) System.out.print(" -> ");
        }
        System.out.println();
    }

    // Function to validate maze rules to check :
    public static boolean isValid(char[][] maze) {
        int rows = maze.length;
        int cols = maze[0].length;
        int at = 0, e = 0;

        for (int r = 0; r < rows; r++) {
            for (int c = 0; c < cols; c++) {
                if (maze[r][c] == '@') at++;
                if (maze[r][c] == 'E') e++;

                // make sure the border cells are walls '1' unless they are '@' or 'E'
                if (r == 0 || r == rows - 1 || c == 0 || c == cols - 1) {
                    if (maze[r][c] != '1' && maze[r][c] != '@' && maze[r][c] != 'E') {
                        return false;
                    }
                }
            }
        }
        // Return
        return at == 1 && e == 1;
    }
}

// Help class to store  (Row and Column)
class Position {
    int row;
    int col;

    public Position(int r, int c) {
        this.row = r;
        this.col = c;
    }
}