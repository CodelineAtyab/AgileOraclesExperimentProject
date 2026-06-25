package org.example.fromaljolanda.sprint5.escapeTheMazeOOPEdition;

import java.util.Stack;

public class MazeSolver {
    public static void solve(Maze maze) throws InterruptedException {
        int n = maze.getSize();

        Position start = findStart(maze);

        Stack<Position> stack = new Stack<>();
        boolean[][] visited = new boolean[n][n];

        stack.push(start);
        visited[start.row][start.col] = true;

        while (!stack.isEmpty()) {

            Position curr = stack.peek();

            MazeRenderer.print(maze, stack);
            Thread.sleep(1000);

            if (maze.get(curr.row, curr.col) == 'E') {
                System.out.println("Maze solved!");
                printPath(stack);
                System.out.println("Found an Exit at: (" + (curr.row+1) + "," + (curr.col+1) + ")");
                return;
            }

            int r = curr.row;
            int c = curr.col;
            boolean moved = false;

            // Try Right
            if (!moved && maze.isValidMove(r, c + 1, visited)) {
                stack.push(new Position(r, c + 1));
                visited[r][c + 1] = true;
                moved = true;
            }

            // Try Left
            if (!moved && maze.isValidMove(r, c - 1, visited)) {
                stack.push(new Position(r, c - 1));
                visited[r][c - 1] = true;
                moved = true;
            }

            // Try Down
            if (!moved && maze.isValidMove(r + 1, c, visited)) {
                stack.push(new Position(r + 1, c));
                visited[r + 1][c] = true;
                moved = true;
            }

            // Try Up
            if (!moved && maze.isValidMove(r - 1, c, visited)) {
                stack.push(new Position(r - 1, c));
                visited[r - 1][c] = true;
                moved = true;
            }

            if (!moved) {
                stack.pop(); // backtrack
            }
        }

        System.out.println("No path found.");
    }

    private static Position findStart(Maze maze) {
        int n = maze.getSize();
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                if (maze.get(i, j) == '@') {
                    return new Position(i, j);
                }
            }
        }
        throw new RuntimeException("Start not found!");
    }

    private static void printPath(Stack<Position> stack) {
        System.out.print("Path: ");
        for (int i = 0; i < stack.size(); i++) {
            Position position = stack.get(i);
            System.out.print("(" + (position.row + 1) + "," + (position.col + 1) + ")");
            if (i != stack.size() - 1) {
                System.out.print(" -> ");
            }
        }
        System.out.println();
    }
}
