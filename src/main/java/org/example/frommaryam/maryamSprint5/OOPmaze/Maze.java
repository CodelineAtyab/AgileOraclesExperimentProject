package org.example.frommaryam.maryamSprint5.OOPmaze;

public class Maze {

    // encapsulation
    private char[][] grid;
    private int size;

    public Maze(char[][] grid) {
        this.grid = grid;
        this.size = grid.length;
    }

    public int getSize() {
        return size;
    }

    // abstraction
    public char getCell(int r, int c) {
        return grid[r][c];
    }

    public void setCell(int r, int c, char value) {
        grid[r][c] = value;
    }

    // helper methods for movement rules
    public boolean isWall(int r, int c) {
        return grid[r][c] == '1';
    }

    public boolean isExit(int r, int c) {
        return grid[r][c] == 'E';
    }

    public boolean isOpen(int r, int c) {
        return grid[r][c] == '-' || grid[r][c] == 'E';
    }

    public boolean isInside(int r, int c) {
        return r >= 0 && r < size && c >= 0 && c < size;
    }

    public char[][] getGrid() {
        return grid;
    }
}

