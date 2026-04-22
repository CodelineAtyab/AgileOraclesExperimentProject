package org.example.fromyarab.escapeTheMazeOOPEdition;

import java.util.ArrayList;

public class Maze {
    private final ArrayList<ArrayList<String>> grid;
    private Position startPosition;
    private Position exitPosition;

    public Maze(ArrayList<ArrayList<String>> grid, Position start, Position exit) {
        this.grid = grid;
        this.startPosition = start;
        this.exitPosition = exit;
    }

    public String getCell(int row, int col) {
        return grid.get(row).get(col);
    }

    public int getRows() {
        return grid.size();
    }

    public int getCols(int row) {
        return grid.get(row).size();
    }

    public boolean isWall(int row, int col) {
        return grid.get(row).get(col).equals("1");
    }

    public boolean isExit(int row, int col) {
        return grid.get(row).get(col).equals("E");
    }

    public boolean isOpen(int row, int col) {
        return grid.get(row).get(col).equals("0");
    }

    public boolean isValidMove(int row, int col) {
        return isOpen(row, col) || isExit(row, col);
    }

    public boolean inBounds(int row, int col) {
        return row >= 0 && row < getRows() && col >= 0 && col < getCols(row);
    }

    public Position getStartPosition() { return startPosition; }
    public Position getExitPosition() { return exitPosition; }

    public ArrayList<ArrayList<String>> getGrid() { return grid; }
}
