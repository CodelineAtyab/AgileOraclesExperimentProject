package org.example.fromsaif.SPRINT5.EscapeTheMazeOOP;

public class Maze {
    // Making the maze grid a part of the maze object itself
    private char[][] grid;

    // Constructor (Public because all the other classes will need to access it)
    public Maze(char[][] grid) {
        this.grid = grid; //store grid inside the maze object
    }

    // Return how many column & rows the maze has
    public int getRows() {
        return grid.length;
    }

    public int getCols() {
        return grid[0].length;
    }

    // Returns the character stored at a given maze position (Start,exit,wall,open path)
    public char getCell(Position position) {
        return grid[position.getRow()][position.getCol()];
    }

    // Helper Checks
    public boolean isInsideBounds(Position position) {
        return position.getRow() >= 0 &&
                position.getRow() < getRows() &&
                position.getCol() >= 0 &&
                position.getCol() < getCols();
    }

    public boolean isWall(Position position) {
        return getCell(position) == '1';
    }

    public boolean isExit(Position position) {
        return getCell(position) == 'E';
    }

    public boolean isOpenPath (Position position){
            return getCell(position) == '0';
        }
    }


