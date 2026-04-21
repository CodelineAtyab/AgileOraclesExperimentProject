package org.example.fromibrahim.OOP;

public class Maze {

    // Storing maze
    private char[][] grid;
    private Position start;
    private Position exit;

    public Maze(char[][] grid, Position start, Position exit) {
        this.grid = grid;
        this.start = start;
        this.exit = exit;
    }

    //  Allowing access to the grid
    public char[][] getGrid() {
        return grid;
    }

    public Position getStart() {
        return start;
    }

    public Position getExit() {
        return exit;
    }

    public int getRows() {
        return grid.length;
    }

    public int getCols() {
        return grid[0].length;
    }

    //  Checks if position is inside the maze
    public boolean isInsideBounds(int row, int col) {
        return row >= 0 && row < getRows() && col >= 0 && col < getCols();
    }

    //  Checks if position is wall
    public boolean isWall(int row, int col) {
        return grid[row][col] == '1';
    }

    //  Checks if it is the exit
    public boolean isExit(int row, int col) {
        return grid[row][col] == 'E';
    }

    //  Checks if it is a free path
    public boolean isOpen(int row, int col) {
        return grid[row][col] == '0';
    }

    //  Movement rule condition
    public boolean isValidMove(int row, int col) {
        return isInsideBounds(row, col) && (isOpen(row, col) || isExit(row, col));
    }

    public char getCell(int row, int col) {
        return grid[row][col];
    }

    //  Update cell (used for animation)
    public void setCell(int row, int col, char value) {
        grid[row][col] = value;
    }

    public void printMaze() {

        // Loop through rows
        for (int r = 0; r < grid.length; r++) {

            // Loop through columns
            for (int c = 0; c < grid[r].length; c++) {

                // Print each character with space
                System.out.print(grid[r][c] + " ");
            }

            // Move to next line after each row
            System.out.println();
        }
    }
}