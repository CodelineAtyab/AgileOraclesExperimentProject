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
    // Get stored position (- or o)
    public char getCell(Position position) {
        return grid[position.row][position.col];
    }
    // Updates one cell on the map.
    public void setCell(Position position, char value) {
        grid[position.row][position.col] = value;
    }
    // Check if this cell is empty.
    public boolean isEmpty(Position position) {
        return isInside(position) && getCell(position) == '-';
    }
    // Check if this cell currently has part of the snake.
    public boolean isSnake(Position position) {
        return isInside(position) && getCell(position) == 'o';
    }
    // Places the snake character on the map.
    public void placeSnake(Position position) {
        setCell(position, 'o');
    }
    // Clears a cell and turns it back into an empty cell.
    public void clearCell(Position position) {
        setCell(position, '-');
    }

}
