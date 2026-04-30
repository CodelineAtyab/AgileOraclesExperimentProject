package org.example.fromalharith.oopmaze;

import java.util.Stack;

public class MazeSolver {

    private final Maze maze;
    private final boolean[][] visited;
    private final Stack stack;

    public MazeSolver(Maze maze) {
        this.maze = maze;
        this.visited = new boolean[maze.getRows()][maze.getCols()];
        this.stack = new Stack();
    }

    public boolean solve(MazeRenderer renderer) {

        Position start = maze.findStart();
        if (start == null) {
            System.out.println("No start found!");
            return false;
        }

        stack.push(start);

        // Show initial state
        renderer.render(maze, start);
        renderer.delay();

        while (!stack.isEmpty()) {

            Position current = (Position) stack.peek();
            int r = current.getRow();
            int c = current.getCol();

            visited[r][c] = true;

            renderer.render(maze, current);
            renderer.delay();

            if (maze.isExit(r, c)) {
                System.out.println("Goal reached!");
                return true;
            }

            if (move(r, c + 1)) continue;
            if (move(r + 1, c)) continue;
            if (move(r, c - 1)) continue;
            if (move(r - 1, c)) continue;

            stack.pop();
        }

        return false;
    }

    private boolean move(int r, int c) {
        if (maze.isValidMove(r, c, visited)) {
            stack.push(new Position(r, c));
            return true;
        }
        return false;
    }
}