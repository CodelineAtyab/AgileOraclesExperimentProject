package org.example.fromibrahim.OOP;
import java.util.Stack;

public class MazeSolver {

    private final Maze maze;
    private final MazeRenderer renderer;

    // Stack to store the current path during traversal
    private final Stack<Position> stack = new Stack<>();

    // 2D boolean array to remember which cells have been visited
    private final boolean[][] visited;

    public MazeSolver(Maze maze, MazeRenderer renderer) {
        this.maze = maze;
        this.renderer = renderer;
        this.visited = new boolean[maze.getRows()][maze.getColumns()];
    }

    // Runs the solving algorithm and returns true if the exit was reached
    public boolean solve() {

        Position start = maze.getStart();
        Position exit = maze.getExit();

        //  Pushes the start position into the stack @
        stack.push(start);
        //  Marks the start cell as visited
        visited[start.getRow()][start.getCol()] = true; // @

        //  This variable will become true if we reach the exit
        boolean found = false;

        //  Start Solving the Maze
        while (!stack.isEmpty()) {

            //  Looks at the top position in the stack
            Position current = stack.peek();

            //  If current cell is not exit, then show @
            //  Marking is handled by Maze — the solver never writes raw chars to the grid
            maze.markVisited(current);

            //  Print maze and wait
            renderer.draw();
            renderer.delay(1000);

            //  Check if exit reached
            if (current.getRow() == exit.getRow() && current.getCol() == exit.getCol()) {
                found = true;
                break;
            }

            // Try to move in one direction; stop as soon as a valid move is found
            boolean movedPath = tryMove(current.getRow() - 1, current.getCol())  // Up
                    || tryMove(current.getRow(), current.getCol() + 1)   // Right
                    || tryMove(current.getRow() + 1, current.getCol())   // Down
                    || tryMove(current.getRow(), current.getCol() - 1);  // Left

            //  Backtracking: Remove the current position from the stack
            if (!movedPath) {
                stack.pop();
            }
        }

        return found;
    }

    // Attempts to move to (row, col). Returns true and pushes the position if valid and unvisited.
    private boolean tryMove(int row, int col) {
        if (maze.isValidMove(row, col) && !visited[row][col]) {
            //  Move there by adding the new position to the stack
            stack.push(new Position(row, col));
            //  Mark it visited
            visited[row][col] = true;
            return true;
        }
        return false;
    }
}