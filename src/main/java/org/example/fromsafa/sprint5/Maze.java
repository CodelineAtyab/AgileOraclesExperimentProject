package org.example.fromsafa.sprint5;

public class Maze {

    char[][] grid;

    public Maze(char[][] grid) {
        this.grid = grid;
    }

    public Position findStart() {
        for (int i = 0; i < grid.length; i++) {
            for (int j = 0; j < grid[i].length; j++) {
                if (grid[i][j] == '@') {
                    return new Position(i, j);
                }
            }
        }
        return null;
    }

    public boolean isExit(int row, int col) {
        return grid[row][col] == 'E';
    }

    public boolean isValidMove(int row, int col, boolean[][] visited) {
        if (row < 0 || col < 0 || row >= grid.length || col >= grid[row].length) {
            return false;
        }

        if (grid[row][col] == '1' || visited[row][col]) {
            return false;
        }

        return true;
    }

    public void printMaze() {
        for (int i = 0; i < grid.length; i++) {
            for (int j = 0; j < grid[i].length; j++) {
                System.out.print(grid[i][j] + " ");
            }
            System.out.println();
        }
    }
}