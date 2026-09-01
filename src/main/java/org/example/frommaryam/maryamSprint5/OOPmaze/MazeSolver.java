package org.example.frommaryam.maryamSprint5.OOPmaze;

import java.util.Stack;

public class MazeSolver {

    // encapsulation
    private Maze maze;
    private boolean[][] visited;
    private Stack<Position> stack;
    private MazeRenderer renderer;

    public MazeSolver(Maze maze) {
        this.maze = maze;
        this.visited = new boolean[maze.getSize()][maze.getSize()];
        this.stack = new Stack<>();
        this.renderer = new MazeRenderer();
    }

    // abstraction
    public boolean solve() {

        Position start = findStart();
        stack.push(start);

        // using stack (backtracking idea)
        while (!stack.isEmpty()) {

            printStack();

            Position current = stack.pop();
            int r = current.getRow();
            int c = current.getCol();

            System.out.println("moved: " + current);

            if (!visited[r][c]) {

                visited[r][c] = true;

                // check goal
                if (maze.isExit(r, c)) {
                    System.out.println("maze Solved!");
                    System.out.println("found Exit at: " + current);
                    return true;
                }

                // mark current position
                maze.setCell(r, c, '@');
                renderer.render(maze);
                maze.setCell(r, c, '0'); // footprint

                // explore neighbors
                pushIfValid(r, c + 1); // right
                pushIfValid(r + 1, c); // down
                pushIfValid(r - 1, c); // up
                pushIfValid(r, c - 1); // left
            }
        }

        System.out.println("No path found.");
        return false;
    }

    // push only valid moves
    private void pushIfValid(int r, int c) {
        if (maze.isInside(r, c) && !visited[r][c] && maze.isOpen(r, c)) {
            stack.push(new Position(r, c));
        }
    }

    // find starting point
    private Position findStart() {
        for (int i = 0; i < maze.getSize(); i++) {
            for (int j = 0; j < maze.getSize(); j++) {
                if (maze.getCell(i, j) == '@') {
                    return new Position(i, j);
                }
            }
        }
        throw new RuntimeException("start not found");
    }

    // print stack
    private void printStack() {
        System.out.print("stack: ");
        for (Position p : stack) {
            System.out.print(p + " ");
        }
        System.out.println();
    }
}
