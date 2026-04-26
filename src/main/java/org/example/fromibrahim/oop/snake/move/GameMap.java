package org.example.fromibrahim.oop.snake.move;

/*
 * Stores the 2D map grid and provides simple helper methods to read and update it

 # Encapsulation: the grid is private and no other class can touch cells directly
                 Changes only happen through setSnakeCell() and clearSnakeCell()
 # Abstraction:   other classes ask isSnakeCell() or isInsideMap() instead of
                reading raw characters and checking boundaries themselves
 # This class only manage the grid: printing and file saving are elsewhere

 */

public class GameMap {
    private final char[][] map; // ENCAPSULATION: private 2D grid - external code cannot modify cells directly
    private final int rows;
    private final int columns;

    public GameMap(char[][] map) {
        this.map = map;
        this.rows = map.length;
        this.columns = map[0].length;
    }

    // Returns true if this position has a snake segment 'o' on it
    public boolean isSnakeCell(int row, int col) { // ABSTRACTION: checks snake presence without exposing raw grid
        return map[row][col] == 'o';
    }

    // Returns true if the row and col are inside the map boundaries
    public boolean isInsideMap(int row, int col) {
        return row >= 0 && row < rows && col >= 0 && col < columns;
    }

    // Marks a cell as occupied by the snake & puts 'o' at that position
    public void setSnakeCell(int row, int col) {
        map[row][col] = 'o';
    }

    // Marks a cell as empty & puts '-' at that position
    public void clearSnakeCell(int row, int col) {
        map[row][col] = '-';
    }

    // Returns a copy of the map grid for printing or saving
    // The real internal map is never given directly to other classes
    public char[][] getMapCopy() {
        char[][] copy = new char[rows][columns];
        for (int row = 0; row < rows; row++) {
            for (int col = 0; col < columns; col++) {
                copy[row][col] = map[row][col];
            }
        }
        return copy;
    }
    public int getRows() {
        return rows;
    }
    public int getColumns() {
        return columns;
    }
}