package org.example.fromyarab.snakeGameOOPEdition;

import java.util.ArrayList;
import java.util.List;

public class GameMap {
    public static final String EMPTY_CELL = "-";
    public static final String SNAKE_CELL = "o";

    private final int rows;
    private final int columns;
    private final String[][] grid;

    public GameMap(int rows, int columns) {
        this.rows = rows;
        this.columns = columns;
        this.grid = new String[rows][columns];
        initializeEmpty();
    }

    public GameMap(String[][] grid) {
        this.rows = grid.length;
        this.columns = grid[0].length;
        this.grid = grid;
    }

    private void initializeEmpty() {
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < columns; j++) {
                grid[i][j] = EMPTY_CELL;
            }
        }
    }

    public int getRows() {
        return rows;
    }

    public int getColumns() {
        return columns;
    }

    public boolean isValidPosition(Position pos) {
        return pos.getRow() >= 0 && pos.getRow() < rows
                && pos.getColumn() >= 0 && pos.getColumn() < columns;
    }

    public boolean isEmpty(Position pos) {
        return isValidPosition(pos) && EMPTY_CELL.equals(grid[pos.getRow()][pos.getColumn()]);
    }

    public boolean isWall(Position pos) {
        return !isValidPosition(pos);
    }

    public String getCell(Position pos) {
        if (!isValidPosition(pos)) return null;
        return grid[pos.getRow()][pos.getColumn()];
    }

    public void setCell(Position pos, String value) {
        if (isValidPosition(pos)) {
            grid[pos.getRow()][pos.getColumn()] = value;
        }
    }

    public void placeSnake(List<Position> snakePositions) {
        clearAll();
        for (Position pos : snakePositions) {
            setCell(pos, SNAKE_CELL);
        }
    }

    public void clearCell(Position pos) {
        setCell(pos, EMPTY_CELL);
    }

    public void clearAll() {
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < columns; j++) {
                grid[i][j] = EMPTY_CELL;
            }
        }
    }

    public GameMap copy() {
        String[][] newGrid = new String[rows][columns];
        for (int i = 0; i < rows; i++) {
            System.arraycopy(grid[i], 0, newGrid[i], 0, columns);
        }
        return new GameMap(newGrid);
    }

    public List<List<String>> toList() {
        List<List<String>> result = new ArrayList<>();
        for (int i = 0; i < rows; i++) {
            List<String> row = new ArrayList<>();
            for (int j = 0; j < columns; j++) {
                row.add(grid[i][j]);
            }
            result.add(row);
        }
        return result;
    }

    public String[][] toArray() {
        String[][] copy = new String[rows][columns];
        for (int i = 0; i < rows; i++) {
            System.arraycopy(grid[i], 0, copy[i], 0, columns);
        }
        return copy;
    }
}