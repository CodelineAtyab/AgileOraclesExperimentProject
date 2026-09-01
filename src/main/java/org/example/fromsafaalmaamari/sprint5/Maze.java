package org.example.fromsafaalmaamari.sprint5;

public class Maze {
    private char[][] grid;

    public Maze(char[][] grid) {
        this.grid = grid;
    }

    public int getRows() {
        return grid.length;
    }

    public int getCols() {
        return grid[0].length;
    }

    public char getCell(int row, int col) {
        return grid[row][col];
    }

    public void setCell(int row, int col, char value) {
        grid[row][col] = value;
    }

    public boolean isWall(int row, int col) {
        return grid[row][col] == '1';
    }

    public boolean isExit(int row, int col) {
        return grid[row][col] == 'E';
    }

    public boolean isStart(int row, int col) {
        return grid[row][col] == '@';
    }

    public boolean isValidMove(int row, int col, boolean[][] visited) {
        return row >= 0 && row < getRows() &&
                col >= 0 && col < getCols() &&
                !isWall(row, col) &&
                !visited[row][col];
    }
}