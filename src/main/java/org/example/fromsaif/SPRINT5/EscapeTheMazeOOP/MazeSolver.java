package org.example.fromsaif.SPRINT5.EscapeTheMazeOOP;

import java.util.Stack;

public class MazeSolver {
    private Maze maze;
    private MazeRenderer renderer;
    private boolean[][] visited;
    private Stack<Position> stack;

    public MazeSolver(Maze maze, MazeRenderer renderer) {
        this.maze = maze;
        this.renderer = renderer;
        this.visited = new boolean[maze.getRows()][maze.getCols()];
        this.stack = new Stack<>();
    }

    public boolean solve() {
        Position start = findStart();
        stack.push(start);
        visited[start.getRow()][start.getCol()] = true;

        while (!stack.isEmpty()) {
            Position current = stack.peek();

            if (maze.isExit(current)) {
                return true;
            }

            Position next = getNextMove(current);

            if (next != null) {
                stack.push(next);
                visited[next.getRow()][next.getCol()] = true;
            } else {
                stack.pop();
            }
        }
        return false;
    }

    private Position getNextMove(Position current) {
        int row = current.getRow();
        int col = current.getCol();

        Position up = new Position(row - 1, col);
        if (maze.isInsideBounds(up) &&
                !visited[up.getRow()][up.getCol()] &&
                (maze.isOpenPath(up) || maze.isExit(up))) {
            return up;
        }
        Position down = new Position(row + 1, col);
        if (maze.isInsideBounds(down) &&
                !visited[down.getRow()][down.getCol()] &&
                (maze.isOpenPath(down) || maze.isExit(down))) {
            return down;
        }
        Position left = new Position(row, col - 1);
        if (maze.isInsideBounds(left) &&
                !visited[left.getRow()][left.getCol()] &&
                (maze.isOpenPath(left) || maze.isExit(left))) {
            return left;
        }
        Position right = new Position(row, col + 1);
        if (maze.isInsideBounds(right) &&
                !visited[right.getRow()][right.getCol()] &&
                (maze.isOpenPath(right) || maze.isExit(right))) {
            return right;
        }
        return null;
    }

    private Position findStart() {
        for (int row = 0; row < maze.getRows(); row++) {
            for (int col = 0; col < maze.getCols(); col++) {
                Position position = new Position(row, col);

                if (maze.getCell(position) == '@') {
                    return position;
                }
            }
        }
        throw new IllegalArgumentException("Maze must contain a starting point.");
    }
}

