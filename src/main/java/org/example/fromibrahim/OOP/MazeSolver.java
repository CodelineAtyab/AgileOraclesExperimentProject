package org.example.fromibrahim.OOP;

public class MazeSolver {

    // Store the maze object
    private Maze maze;
    // Keep track of visited positions
    private boolean[][] visited;


    public MazeSolver(Maze maze) {
        this.maze = maze;
        // Create visited array with the same maze size
        visited = new boolean[maze.getGrid().length][maze.getGrid()[0].length];
    }

    // Public method to start solving from the start position
    public boolean solve() {
        Position start = maze.getStart();
        // Start solving from start row and column
        return searchExit(start.getRow(), start.getCol());
    }


    private boolean searchExit(int row, int col) {
        // 1. Check if position is outside maze
        if (row < 0 || row >= maze.getGrid().length || col < 0 || col >= maze.getGrid()[0].length) {
            return false;
        }

        // 2. Check if cell is a wall
        if (maze.getGrid()[row][col] == '1') {
            return false;
        }

        // 3. Check if already visited
        if (visited[row][col]) {
            return false;
        }

        // 4. Check if exit found
        if (maze.getGrid()[row][col] == 'E') {
            return true;
        }

        // Mark current cell as visited
        visited[row][col] = true;

        // Check all 4 directions
        // up
        if (searchExit(row - 1, col)) {
            return true;
        }
        // down
        if (searchExit(row + 1, col)) {
            return true;
        }
        // left
        if (searchExit(row, col - 1)) {
            return true;
        }
        // right
        if (searchExit(row, col + 1)) {
            return true;
        }

        // If none of the directions worked, return false
        return false;
    }
}
