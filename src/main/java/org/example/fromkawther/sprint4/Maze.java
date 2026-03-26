package org.example.fromkawther.sprint4;

import java.io.IOException;
import java.nio.file.*;
import java.util.*;

public class Maze {

    public static void main(String[] args) throws IOException, InterruptedException {
        Path mazeFile = Path.of("src/main/java/org/example/fromkawther/sprint4/maze.txt");

        try {
            List<String> lines = Files.readAllLines(mazeFile);
            ArrayList<String> mazeArray = new ArrayList<>(lines);
            int rows = mazeArray.size();
            int cols = mazeArray.get(0).length();
            char[][] mazeArray2D = new char[rows][cols];

            for (int i = 0; i < rows; i++) {
                mazeArray2D[i] = mazeArray.get(i).toCharArray();
            }

            if (onlyOneSymbol(mazeArray2D, mazeArray) && allBordersOnes(mazeArray2D, mazeArray)) {
                int startRow = -1, startCol = -1;
                for (int r = 0; r < rows; r++) {
                    for (int c = 0; c < cols; c++) {
                        if (mazeArray2D[r][c] == '@') {
                            startRow = r;
                            startCol = c;
                        }
                    }
                }

                if (startRow != -1) {
                    Position start = new Position(startRow, startCol);
                    if (symbolMovement(mazeArray2D, start, mazeArray)) {
                        System.out.println("\nMaze Solved!");
                    } else {
                        System.out.println("\nNo path found.");
                    }
                }
            } else {
                System.out.println("INVALID MAZE CONSTRAINTS.");
            }
        } catch (IOException e) {
            System.err.println("ERROR: " + e.getMessage());
        }
    }

    public static boolean symbolMovement(char[][] mazeArray2D, Position start, ArrayList<String> mazeArray) throws InterruptedException {
        int rows = mazeArray.size();
        int cols = mazeArray.get(0).length();
        boolean[][] visited = new boolean[rows][cols];
        Stack<Position> stack = new Stack<>();
        stack.push(start);

        int[][] dirs = {{1, 0}, {0, 1}, {-1, 0}, {0, -1}};

        while (!stack.isEmpty()) {
            Position curr = stack.peek();
            int r = curr.row;
            int c = curr.col;

            if (mazeArray2D[r][c] == 'E') {
                printPath(stack);
                return true;
            }

            visited[r][c] = true;
            char original = mazeArray2D[r][c];
            mazeArray2D[r][c] = '@';

            System.out.print("\033[H\033[2J");
            System.out.flush();
            for (char[] row : mazeArray2D) {
                System.out.println(new String(row));
            }
            Thread.sleep(1000);

            boolean moved = false;
            for (int[] d : dirs) {
                int nr = r + d[0], nc = c + d[1];
                if (nr >= 0 && nr < rows && nc >= 0 && nc < cols &&
                        (mazeArray2D[nr][nc] == '0' || mazeArray2D[nr][nc] == 'E') && !visited[nr][nc]) {
                    stack.push(new Position(nr, nc));
                    moved = true;
                    break;
                }
            }

            if (!moved) {
                mazeArray2D[r][c] = '0';
                stack.pop();
                System.out.print("\033[H\033[2J");
                System.out.flush();
                for (char[] row : mazeArray2D) {
                    System.out.println(new String(row));
                }
                Thread.sleep(1000);
            }
        }
        return false;
    }

    private static void printPath(Stack<Position> stack) {
        System.out.print("Path: ");
        for (int i = 0; i < stack.size(); i++) {
            Position p = stack.get(i);
            System.out.print("(" + p.row + "," + p.col + ")");
            if (i < stack.size() - 1) System.out.print(" -> ");
        }
        System.out.println();
    }

    public static boolean onlyOneSymbol(char[][] maze, ArrayList<String> list) {
        int at = 0, e = 0;
        for (char[] row : maze) {
            for (char c : row) {
                if (c == '@') at++;
                if (c == 'E') e++;
            }
        }
        return at == 1 && e == 1;
    }

    public static boolean allBordersOnes(char[][] maze, ArrayList<String> list) {
        int rows = maze.length;
        int cols = maze[0].length;
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                if (i == 0 || i == rows - 1 || j == 0 || j == cols - 1) {
                    char c = maze[i][j];
                    if (c != '1' && c != '@' && c != 'E') return false;
                }
            }
        }
        return true;
    }
}

class Position {
    int row, col;
    Position(int r, int c) {
        this.row = r;
        this.col = c;
    }
}