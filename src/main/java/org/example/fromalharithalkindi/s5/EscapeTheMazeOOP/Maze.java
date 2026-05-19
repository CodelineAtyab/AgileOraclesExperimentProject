package org.example.fromalharithalkindi.s5.EscapeTheMazeOOP;

public class Maze {
    private char[][] grid;
    private int size;

    public Maze(char[][] grid) {
        this.grid = grid;
        this.size = grid.length;
    }

    public char[][] getGrid() {
        return grid;
    }

    public int getSize() {
        return size;
    }

    public boolean isWall(int r, int c) {
        return grid[r][c] == '1';
    }

    public boolean isExit(int r, int c) {
        return grid[r][c] == 'E';
    }

    public boolean isValidMove(int r, int c) {
        return r >= 0 && r < size && c >= 0 && c < size && !isWall(r, c);
    }
}

