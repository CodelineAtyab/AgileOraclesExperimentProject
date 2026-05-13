package org.example.fromrima.escapMazeOOP;

import java.util.Stack;

public class MazeSolver {
    private Maze maze;
    private MazeRenderer renderer;

    public MazeSolver(Maze maze, MazeRenderer renderer) {
        this.maze = maze;
        this.renderer = renderer;
    }

    public Stack<Position> solve(Position start) throws InterruptedException {
        Stack<Position> stack = new Stack<>(); //store path
        boolean[][] visited = new boolean[maze.getRows()][maze.getCols()]; //to prevent revisited
        stack.push(start);
        visited[start.getRow()][start.getCol()] = true;
        while (!stack.isEmpty()) {
            //get the current position without remove it
            Position cur = stack.peek();
            int r = cur.getRow();
            int c = cur.getCol();
            //if reach the exit , print/return the solution path
            if (maze.isExit(r, c))
                return stack;
            boolean moved = false;
            int[][] directions = {
                    {r + 1, c},
                    {r - 1, c},
                    {r, c + 1},
                    {r, c - 1}
            };
            for (int[] direction : directions) {
                int newRow = direction[0], newCol = direction[1];

                if (maze.isValidMove(newRow, newCol, visited)) {
                    Position next = new Position(newRow, newCol);
                    stack.push(next);
                    visited[newRow][newCol] = true; //mark it as visited
                    renderer.animate(maze, newRow, newCol); //display player '@' in new position (animation)
                    moved = true;
                    break;
                }
            }
            if (!moved) {
                stack.pop();
                if (!stack.isEmpty()) {
                    Position prev = stack.peek();
                    renderer.animate(maze, prev.getRow(), prev.getCol());
                }
            }
        }
        return null;
    }
}