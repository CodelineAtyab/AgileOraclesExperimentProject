package org.example.fromyarab.escapeTheMazeOOPEdition;

import java.util.ArrayList;
import java.util.Stack;
import java.util.concurrent.TimeUnit;

public class MazeSolver {

    private final Maze maze;
    private final MazeRenderer renderer;
    private final Stack<Position> backTrack;
    private final ArrayList<Position> visited;
    private Position currentPosition;
    private int steps;

    public MazeSolver(Maze maze, MazeRenderer renderer) {
        this.maze = maze;
        this.renderer = renderer;
        this.backTrack = new Stack<>();
        this.visited = new ArrayList<>();
        this.steps = 0;
        this.currentPosition = maze.getStartPosition();
        this.visited.add(currentPosition);
    }

    public void solve() throws InterruptedException {
        boolean exit = false;

        while (!exit) {
            Position next = getNextMove();

            if (next != null) {
                renderer.render(maze, currentPosition, steps);
                System.out.println("\nNext Move: -> " + next);
                backTrack.push(currentPosition);
                visited.add(currentPosition);
                currentPosition = next;
            } else if (!backTrack.isEmpty()) {
                renderer.render(maze, currentPosition, steps);
                System.out.println("\nBacktracking (Pop)");
                visited.add(currentPosition);
                currentPosition = backTrack.pop();
            }

            if (maze.isExit(currentPosition.getRow(), currentPosition.getCol()) || backTrack.isEmpty() && next == null) {
                exit = true;
            }

            steps++;
            TimeUnit.SECONDS.sleep(1);
        }

        // final render
        renderer.render(maze, currentPosition, steps);

        if (maze.isExit(currentPosition.getRow(), currentPosition.getCol())) {
            // rebuild path from visited (only forward path via backtrack content + current)
            ArrayList<Position> path = new ArrayList<>(backTrack);
            path.add(currentPosition);
            renderer.printSolved(path, currentPosition);
        } else {
            renderer.printNoPath();
        }
    }

    private Position getNextMove() {
        int row = currentPosition.getRow();
        int col = currentPosition.getCol();

        // from upper border
        if (row == 0) {
            if (maze.isValidMove(row + 1, col)) return new Position(row + 1, col);
            return null;
        }
        // from lower border
        if (row == maze.getRows() - 1) {
            if (maze.isValidMove(row - 1, col)) return new Position(row - 1, col);
            return null;
        }
        // from left border
        if (col == 0) {
            if (maze.isValidMove(row, col + 1)) return new Position(row, col + 1);
            return null;
        }
        // from right border
        if (col == maze.getCols(1) - 1) {
            if (maze.isValidMove(row, col - 1)) return new Position(row, col - 1);
            return null;
        }

        // inside maze — try Down, Right, Up, Left
        int[][] directions = {{1, 0}, {0, 1}, {-1, 0}, {0, -1}};
        for (int[] d : directions) {
            int nr = row + d[0];
            int nc = col + d[1];
            Position candidate = new Position(nr, nc);
            if (!visited.contains(candidate) && maze.isValidMove(nr, nc)) {
                return candidate;
            }
        }

        return null;
    }
}