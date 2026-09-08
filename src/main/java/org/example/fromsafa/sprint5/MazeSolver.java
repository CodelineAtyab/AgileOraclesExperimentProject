package org.example.fromsafa.sprint5;

import java.util.Stack;

public class MazeSolver {

    private final Maze maze;

    public MazeSolver(Maze maze) {
        this.maze = maze;
    }

    public boolean solve() {

        Position start = maze.findStart();

        if (start == null) {
            return false;
        }

        Stack<Position> stack = new Stack<>();

        boolean[][] visited = new boolean[maze.grid.length][];
        for (int i = 0; i < maze.grid.length; i++) {
            visited[i] = new boolean[maze.grid[i].length];
        }

        stack.push(start);

        while (!stack.isEmpty()) {

            Position current = stack.pop();
            int row = current.row;
            int col = current.col;

            if (!maze.isValidMove(row, col, visited)) {
                continue;
            }

            visited[row][col] = true;

            if (maze.grid[row][col]== '0'){
                maze.grid[row][col]='*';
            }

            if (maze.isExit(row, col)) {
                return true;
            }

            stack.push(new Position(row, col + 1));
            stack.push(new Position(row, col - 1));
            stack.push(new Position(row + 1, col));
            stack.push(new Position(row - 1, col));
        }

        return false;
    }
}