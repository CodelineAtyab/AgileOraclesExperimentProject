package org.example.fromalharith.snakeoop;

import java.util.Arrays;

public class GameMap {
    private char[][] grid;

    public GameMap(char[][] g) {
        this.grid = g;
    }

    public boolean isWall(int r, int c) {
        return r < 0 || r >= grid.length || c < 0 || c >= grid[0].length;
    }

    public void clear() {
        for (char[] row : grid) {
            Arrays.fill(row, '-');
        }
    }

    public void placeSnake(Snake s) {
        clear();
        for (Position p : s.getBody()) {
            grid[p.row][p.col] = 'o';
        }
    }

    public char[][] getGrid() {
        return grid;
    }
}