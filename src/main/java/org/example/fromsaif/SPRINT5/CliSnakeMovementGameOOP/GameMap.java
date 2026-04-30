package org.example.fromsaif.SPRINT5.CliSnakeMovementGameOOP;

public class GameMap {

    // Stored 2D array grid
    private char[][] grid;

    // Creates a GameMap object using an existing grid
    public GameMap(char[][] grid) {
        this.grid = grid;
    }
    // Returns the number of rows in the map
    public int getRows() {
        return grid.length;
    }
    //Returns the number of columns in the map
    public int getCols() {
        return grid[0].length;
    }
    // Returns the full grid
    public char[][] getGrid() {
        return grid;
    }
    // Position/Boundry Validation
    public boolean isInside(Position position) {
        int row = position.row;
        int col = position.col;

        return row >= 0 && row < getRows()
                && col >= 0 && col < getCols();

    }
}
