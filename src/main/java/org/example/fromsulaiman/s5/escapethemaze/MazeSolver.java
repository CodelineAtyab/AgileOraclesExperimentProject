package org.example.fromsulaiman.s5.escapethemaze;

import java.util.Stack;

public class MazeSolver {

    private Maze maze;
    private boolean[][] visited;
    private Stack<Position> stack = new Stack<>();

    public MazeSolver(Maze maze) {
        this.maze = maze;
        this.visited = new boolean[maze.getSize()][maze.getSize()];
    }

    public boolean solve(Position start) throws InterruptedException {

        stack.push(start);

        while (!stack.isEmpty()) {
            Position current = stack.peek();

            int r = current.row;
            int c = current.col;

            if (maze.isExit(r, c)) {
                return true;
            }

            visited[r][c] = true;

            MazeRenderer.clear();
            maze.setCell(r, c, '@');
            MazeRenderer.render(maze);
            Thread.sleep(1000);

            // Try 4 directions
            if (move(r - 1, c)) continue;
            if (move(r + 1, c)) continue;
            if (move(r, c - 1)) continue;
            if (move(r, c + 1)) continue;

            // backtrack
            stack.pop();
        }

        return false;
    }

    private boolean move(int r, int c) {
        if (maze.isValidMove(r, c) && !visited[r][c]) {
            stack.push(new Position(r, c));
            return true;
        }
        return false;
    }

    public Stack<Position> getPath() {
        return stack;
    }
}
