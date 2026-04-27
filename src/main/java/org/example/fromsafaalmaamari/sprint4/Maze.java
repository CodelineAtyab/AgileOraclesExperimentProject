package org.example.fromsafaalmaamari.sprint4;
import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Stack;

public class Maze {
    public static void main(String[] args) throws InterruptedException {
        Path mazePath = null;
        char[][] maze;

        try {
            mazePath = Path.of(Maze.class.getResource("/org/example/fromsafaalmaamari/sprint4/m.txt").toURI());
        } catch (URISyntaxException e) {
            throw new RuntimeException(e);
        }

        try {
            String fileContent = Files.readString(mazePath);
            String[] linesOfFile = fileContent.split("\\R");
            int lineLength = linesOfFile[0].length();

            maze = new char[linesOfFile.length][lineLength];  // Load it in 2D Array or Array of Arrays

            for (int row = 0; row < linesOfFile.length; row++) {
                char[] currRow = linesOfFile[row].toCharArray();
                //System.out.printf("%s\n", linesOfFile[row]);
                for (int col = 0; col < currRow.length; col++) {
                    maze[row][col] = currRow[col];
                }
            }
        } catch (IOException e) {
            System.out.println("error file not found!");
            return;
        }
        for (int row = 0; row < maze.length; row++) {
            for (int col = 0; col < maze[row].length; col++) {
                System.out.print(maze[row][col] + " ");
            }
            System.out.println();
        }
        printMaze(maze);

        //find start point
        int startRow = 0, startCol = 0;
        for (int r = 0; r < maze.length; r++) {
            for (int c = 0; c < maze[0].length; c++) {
                if (maze[r][c] == '@') {
                    startRow = r;
                    startCol = c;
                }
            }
        }
        hasPathWithBacktracking(maze, startRow, startCol);
    }
    public static boolean isValidMaze(char[][] maze) {
        int rows = maze.length;
        int cols = maze[0].length;
        int countStart = 0;
        int countExit = 0;

        for (int row = 0; row < rows; row++) {
            for (int col = 0; col < cols; col++) {
                if (row == 0 || row == rows - 1 || col == 0 || col == cols - 1) {

                    char cell = maze[row][col];
                    if (cell == '@') {
                        countStart++;
                    } else if (cell == 'E') {
                        countExit++;
                    } else if (cell != '1') {
                        return false;
                    }
                }
            }
        }
        return countStart == 1 && countExit == 1;
    }
    public static boolean hasPathWithBacktracking(char[][] maze, int startRow, int startCol) throws InterruptedException {
        Stack<int[]> stack = new Stack<>();
        boolean[][] visited = new boolean[maze.length][maze[0].length];

        stack.push(new int[]{startRow, startCol});
        //right, down, left, up
        int[][] directions = {{0, 1}, {1, 0}, {0, -1}, {-1, 0}};

        while (!stack.isEmpty()) {
            int[] current = stack.peek();
            int r = current[0];
            int c = current[1];

            if (maze[r][c] == 'E') {
                System.out.println("Maze solved!");
                return true;
            }
            visited[r][c] = true;
            boolean foundNextStep = false;

            for (int[] dir : directions) {
                int nextR = r + dir[0];
                int nextC = c + dir[1];

                if (nextR >= 0 && nextR < maze.length &&
                        nextC >= 0 && nextC < maze[0].length &&
                        maze[nextR][nextC] != '1' &&
                        !visited[nextR][nextC]) {

                    // change current location to '-'
                    if (maze[r][c] != '@') maze[r][c] = '-';
                    else maze[r][c] = '-';

                    // put @ in the new location if not 'E'
                    if (maze[nextR][nextC] != 'E') maze[nextR][nextC] = '@';

                    stack.push(new int[]{nextR, nextC});
                    printMaze(maze);
                    Thread.sleep(1000);
                    foundNextStep = true;
                    break;
                }
            }
            if (!foundNextStep) {
                stack.pop();

                if (!stack.isEmpty()) {
                    int[] prev = stack.peek();

                    if (maze[r][c] != 'E') maze[r][c] = '-';

                    // put @ if not '-' or 'E'
                    if (maze[prev[0]][prev[1]] != 'E') {
                        maze[prev[0]][prev[1]] = '@';
                    }
                    printMaze(maze);
                    Thread.sleep(1000);
                }
            }
        }
        System.out.println("No path found....!");
        return false;
    }
    public static void printMaze(char[][] maze) {
        System.out.println("\n ");
        for (int row = 0; row < maze.length; row++) {
            for (int col = 0; col < maze[row].length; col++) {
                System.out.print(maze[row][col] + " ");
            }
            // print:
            System.out.println();
        }
    }
}



