package org.example.fromibrahim.OOP;

public class Maze {

    private final char[][] grid;
    private final int rows;
    private final int columns;

    private Position start;
    private Position exit;

    public Maze(char[][] grid) {
        this.grid = grid;
        this.rows = grid.length;
        this.columns = grid[0].length;
        locateStartAndExit();
    }

    // Scans the grid to find and store the start '@' and exit 'E' positions
    private void locateStartAndExit() {
        for (int row = 0; row < rows; row++) {
            for (int col = 0; col < columns; col++) {
                if (grid[row][col] == '@') {
                    start = new Position(row, col);
                }
                if (grid[row][col] == 'E') {
                    exit = new Position(row, col);
                }
            }
        }
    }

    // Returns true if the cell at (row, col) is a wall '1'
    public boolean isWall(int row, int col) {
        return grid[row][col] == '1';
    }

    // Returns true if the cell at (row, col) is the exit 'E'
    public boolean isExit(int row, int col) {
        return grid[row][col] == 'E';
    }

    // Returns true if (row, col) is within grid bounds and is walkable ('0' or 'E')
    public boolean isValidMove(int row, int col) {
        if (row < 0 || row >= rows || col < 0 || col >= columns) {
            return false;
        }
        return grid[row][col] == '0' || grid[row][col] == 'E';
    }

    // Marks the given position as the current player location '@' in the grid.
    // The Maze owns this mutation no outside class writes directly to the grid.
    // If current cell is not exit, then show @
    public void markVisited(Position position) {
        if (!isExit(position.getRow(), position.getCol())) {
            grid[position.getRow()][position.getCol()] = '@';
        }
    }

    // Returns a copy of the grid for display purposes.
    // Abstraction: the renderer never touches the internal grid directly.
    public char[][] toDisplayGrid() {
        char[][] copy = new char[rows][columns];
        for (int row = 0; row < rows; row++) {
            for (int col = 0; col < columns; col++) {
                copy[row][col] = grid[row][col];
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

    public Position getStart() {
        return start;
    }

    public Position getExit() {
        return exit;
    }
}