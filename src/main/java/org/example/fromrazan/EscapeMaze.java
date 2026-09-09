package org.example.fromrazan;

import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class EscapeMaze {

    public static void main(String[] args) throws InterruptedException {
        char[][] maze = loadAndGetMaze();

        // Validate the maze before doing anything
        if (!validateMaze(maze)) {
            System.out.println("Maze validation failed. Exiting.");
            return;
        }

        int[] initialPlayerPosition = getPLayerLocation(maze);
        int[] exitPosition = getExitLocation(maze);

        System.out.printf("Location of @ is (%d,%d)\n", initialPlayerPosition[0], initialPlayerPosition[1]);
        System.out.printf("Location of E is (%d,%d)\n", exitPosition[0], exitPosition[1]);

        // Compute a real, step-by-step path instead of a hand-written move list
        List<int[]> listOfMoves = solveMaze(maze, initialPlayerPosition, exitPosition);

        if (listOfMoves == null) {
            System.out.println("No path exists between the player and the exit. Exiting.");
            return;
        }

        System.out.println("Before the change:");
        displayMaze(maze);

        // Processing
        int[] currPlayerPosition = initialPlayerPosition;

        for (int[] currMove : listOfMoves) {
            Thread.sleep(200);
            currPlayerPosition = makeMove(maze, currPlayerPosition, currMove);

            printEmptyLines();
            displayMaze(maze);
        }

        if (currPlayerPosition[0] == exitPosition[0] && currPlayerPosition[1] == exitPosition[1]) {
            System.out.println("You escaped the maze!");
        } else {
            System.out.println("Did not reach the exit.");
        }
    }

    public static boolean validateMaze(char[][] maze) {
        if (maze == null || maze.length == 0) {
            System.out.println("Validation error: Maze is empty.");
            return false;
        }

        int playerCount = 0;
        int exitCount = 0;
        int expectedColumns = maze[0].length;

        for (int row = 0; row < maze.length; row++) {
            // Check consistent row length
            if (maze[row].length != expectedColumns) {
                System.out.printf("Validation error: Row %d has inconsistent length.\n", row + 1);
                return false;
            }

            for (int col = 0; col < maze[row].length; col++) {
                char cell = maze[row][col];
                switch (cell) {
                    case '@' -> playerCount++;
                    case 'E' -> exitCount++;
                    case '0', '1' -> { /* valid characters */ }
                    default -> {
                        System.out.printf(
                                "Validation error: Invalid character '%c' at (%d, %d).\n",
                                cell, row + 1, col + 1);
                        return false;
                    }
                }
            }
        }

        if (playerCount != 1) {
            System.out.printf("Validation error: Expected 1 player '@', found %d.\n", playerCount);
            return false;
        }

        if (exitCount != 1) {
            System.out.printf("Validation error: Expected 1 exit 'E', found %d.\n", exitCount);
            return false;
        }

        System.out.println("Maze validation passed.");
        return true;
    }

    public static int[] makeMove(char[][] maze, int[] sourcePosition, int[] targetPosition) {
        int rowDiff = Math.abs(targetPosition[0] - sourcePosition[0]);
        int colDiff = Math.abs(targetPosition[1] - sourcePosition[1]);
        boolean isAdjacentStep = (rowDiff + colDiff) == 1;

        if (!isAdjacentStep) {
            System.out.printf(
                    "Invalid move: (%d,%d) -> (%d,%d) is not a single adjacent step.\n",
                    sourcePosition[0], sourcePosition[1], targetPosition[0], targetPosition[1]);
            return sourcePosition;
        }

        char valueOnTargetLocation = maze[targetPosition[0] - 1][targetPosition[1] - 1];

        // Check if target location is valid (open floor or the exit itself)
        if (valueOnTargetLocation == '0' || valueOnTargetLocation == 'E') {
            System.out.println("Found a valid way forward");

            // Mark the source location as tracked
            maze[sourcePosition[0] - 1][sourcePosition[1] - 1] = '-';

            // Move the player (don't overwrite 'E' so the exit stays visible on the map)
            if (valueOnTargetLocation != 'E') {
                maze[targetPosition[0] - 1][targetPosition[1] - 1] = '@';
            }

            return new int[]{targetPosition[0], targetPosition[1]};

        } else {
            System.out.println("No way forward");

            // stay in the same position
            return sourcePosition;
        }
    }

    public static List<int[]> solveMaze(char[][] maze, int[] start, int[] exit) {
        int rows = maze.length;
        int cols = maze[0].length;

        boolean[][] visited = new boolean[rows][cols];
        Map<String, int[]> cameFrom = new HashMap<>();

        ArrayDeque<int[]> queue = new ArrayDeque<>();
        queue.add(start);
        visited[start[0] - 1][start[1] - 1] = true;

        int[][] directions = {{-1, 0}, {1, 0}, {0, -1}, {0, 1}};
        boolean found = false;

        while (!queue.isEmpty()) {
            int[] current = queue.poll();

            if (current[0] == exit[0] && current[1] == exit[1]) {
                found = true;
                break;
            }

            for (int[] dir : directions) {
                int newRow = current[0] + dir[0];
                int newCol = current[1] + dir[1];

                if (newRow < 1 || newRow > rows || newCol < 1 || newCol > cols) continue;
                if (visited[newRow - 1][newCol - 1]) continue;

                char cell = maze[newRow - 1][newCol - 1];
                if (cell != '0' && cell != 'E') continue;

                visited[newRow - 1][newCol - 1] = true;
                int[] next = {newRow, newCol};
                cameFrom.put(newRow + "," + newCol, current);
                queue.add(next);
            }
        }

        if (!found) {
            return null;
        }

        // Reconstruct path from exit back to start, then reverse it
        List<int[]> path = new ArrayList<>();
        int[] step = exit;
        while (!(step[0] == start[0] && step[1] == start[1])) {
            path.add(step);
            step = cameFrom.get(step[0] + "," + step[1]);
        }
        java.util.Collections.reverse(path);

        return path;
    }

    public static void displayMaze(char[][] maze) {
        for (int row = 0; row < maze.length; row++) {
            for (int col = 0; col < maze[row].length; col++) {
                System.out.printf("%c ", maze[row][col]);
            }
            System.out.println();
        }
    }

    public static char[][] loadAndGetMaze() {
        char[][] maze;
        Path mazePath = null;

        try {
            mazePath = Path.of(EscapeMaze.class.getResource(relativeMazePath).toURI());
        } catch (URISyntaxException e) {
            throw new RuntimeException(e);
        }

        try {
            String fileContent = Files.readString(mazePath);
            String[] linesOfFile = fileContent.split("\\R");

            int lineLength = linesOfFile[0].trim().length();

            maze = new char[linesOfFile.length][lineLength];

            for (int row = 0; row < linesOfFile.length; row++) {
                char[] currRow = linesOfFile[row].toCharArray();

                for (int col = 0; col < currRow.length; col++) {
                    maze[row][col] = currRow[col];
                }
            }

        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return maze;
    }

    public static int[] getPLayerLocation(char[][] maze) {
        int[] location = new int[2];
        for (int row = 0; row < maze.length; row++) {
            for (int col = 0; col < maze[row].length; col++) {
                if (maze[row][col] == '@') {
                    location[0] = row + 1;
                    location[1] = col + 1;
                }
            }
        }
        return location;
    }

    public static int[] getExitLocation(char[][] maze) {
        int[] location = new int[2];
        for (int row = 0; row < maze.length; row++) {
            for (int col = 0; col < maze[row].length; col++) {
                if (maze[row][col] == 'E') {
                    location[0] = row + 1;
                    location[1] = col + 1;
                }
            }
        }
        return location;
    }

    public static void printEmptyLines() {
        for (int count = 0; count < 18; count++) {
            System.out.println();
        }
    }

    public static final String relativeMazePath = "maze.txt";
}