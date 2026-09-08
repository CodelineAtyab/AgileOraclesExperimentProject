package org.example.fromahed.sprintA5;

public class Maze {

    private char[][] grid;

    public Maze(char[][] grid) {
        this.grid = grid;
    }

    public char[][] getGrid() {
        return grid;
    }

    public void set(int row, int col, char value) {
        grid[row][col] = value;
    }

    public int getRows() {
        return grid.length;
    }

    public int getCols() {
        return grid[0].length;
    }

    public boolean isValidMove(int row, int col) {
        return row >= 0 && row < getRows() && col >= 0 && col < getCols();
    }

    public boolean isWalkable(int row, int col) {
        return grid[row][col] == '0' || grid[row][col] == 'E';
    }

    public boolean isWall(int row, int col) {
        return grid[row][col] == '1';
    }

    public boolean isExit(int row, int col) {
        return grid[row][col] == 'E';
    }
}

