package org.example.fromalharith.oopmaze;

public class Maze {
    private final char[][] grid;
    private final int rows;
    private final int cols;

    public Maze(char[][] grid) {
        this.grid = grid;
        this.rows = grid.length;
        this.cols = grid[0].length;
    }

    public int getRows() { return rows; }
    public int getCols() { return cols; }

    public char get(int r, int c) {
        return grid[r][c];
    }

    public void set(int r, int c, char value) {
        grid[r][c] = value;
    }

    public boolean isInside(int r, int c) {
        return r >= 0 && r < rows && c >= 0 && c < cols;
    }

    public boolean isExit(int r, int c) {
        return grid[r][c] == 'E';
    }

    public boolean isPath(int r, int c) {
        return grid[r][c] == '0' || grid[r][c] == 'E';
    }

    public boolean isValidMove(int r, int c, boolean[][] visited) {
        return isInside(r, c) && !visited[r][c] && isPath(r, c);
    }

    public Position findStart() {
        for (int r = 0; r < rows; r++) {
            for (int c = 0; c < cols; c++) {
                if (grid[r][c] == '@') {
                    grid[r][c] = '0';
                    return new Position(r, c);
                }
            }
        }
        return null;
    }
}