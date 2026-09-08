package org.example.fromaljolanda.sprint5.escapeTheMazeOOPEdition;

public class Maze {
    private char[][] grid;
    private int size;

    public Maze(char[][] grid) {
        this.grid = grid;
        this.size = grid.length;
    }

    public int getSize() {
        return size;
    }

    public char get(int r, int c) {
        return grid[r][c];
    }

    public boolean isValidMove(int r, int c, boolean[][] visited) {
        return r >= 0 && c >= 0 && r < size && c < size
                && !visited[r][c]
                && (grid[r][c] == '0' || grid[r][c] == 'E');
    }

    public char[][] getGrid() {
        return grid;
    }
}
