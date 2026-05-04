package org.example.fromkhadija.sprint5;
//Stores the 2D grid
//Provides helper methods (isWall, isExit, isValidMove, etc.)
public class Maze {

    //Encapsulation--> private grid
    private final char[][] grid;

    public Maze(char[][] grid) {
        this.grid = grid;
    }

    public char[][] getGrid() {
        return grid;
    }

    public boolean isWall(int r, int c) {
        return grid[r][c] == '1';
    }

    public boolean isExit(int r, int c) {
        return grid[r][c] == 'E';
    }

    //check if the movement is in valid place or not
    public boolean isValidMove(int r, int c) {

        if (r < 0 || r >= grid.length ||
                c < 0 || c >= grid[0].length) {
            return false;
        }

        return !isWall(r, c);
    }

    public Position findStart() {

        for (int r = 0; r < grid.length; r++) {
            for (int c = 0; c < grid[r].length; c++) {
                if (grid[r][c] == '@') {
                    return new Position(r, c);
                }
            }
        }
        // Ensures the maze is valid
        throw new IllegalStateException("Maze not found");
    }
}
