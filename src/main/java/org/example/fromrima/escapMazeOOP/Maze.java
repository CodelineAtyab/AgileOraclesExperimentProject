package org.example.fromrima.escapMazeOOP;

public class Maze {
    private char[][] grid; //2d array to store maze characters.
    private int rows;
    private int cols;

    public Maze(char[][] grid) { //this constructor receives maze data
        this.grid = grid;//save maze into object
        this.rows = grid.length; //gets number of rows
        this.cols = grid[0].length; //gets number of cols
    }

    public char[][] getGrid() {
        return grid;
    }
    public int getRows() {
        return rows;
    }
    public int getCols() {
        return cols;
    }
    //checks if the cell /part is wall / is Exit / isOpen
    public boolean isWall(int row, int col) {
        return grid[row][col] == '1';
    }

    public boolean isExit(int row, int col) {
        return grid[row][col] == 'E';
    }

    public boolean isOpen(int row, int col) {
        return grid[row][col] == '0';
    }

    public boolean isValidMove(int row, int col, boolean[][] visited) {
        return row >= 0 //inside top
               && col >= 0 //left boundary
               && row < rows //inside bottom
               && col < cols //right boundary
               && (isOpen(row,col)|| isExit(row,col)) && !visited[row][col];
    }

    public Position findStart() {
        for (int i = 0; i < rows; i++) { //for loop through the rows
            for (int j = 0; j < cols; j++) { //for loop through the cols
                if (grid[i][j] == '@') {
                    return new Position(i, j); //start coordinates
                }
            }
        }
        return null; //if not found start
    }
}