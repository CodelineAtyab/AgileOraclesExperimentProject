package org.example.fromsulaiman.s5.SnakeOPP;

import java.util.List;


  // Stores map grid data and offers helper operations for cells.
public class GameMap {
    public static final char EMPTY = '-';
    public static final char SNAKE = 'o';
    public static final char HEAD = 'H';
    public static final char TAIL = 'T';
    public static final char FOOD = '*';

    private final char[][] grid;

    public GameMap(int rows, int cols) {
        grid = new char[rows][cols];
        fillWithEmpty();
    }

    public int getRows() {
        return grid.length;
    }

    public int getCols() {
        return grid[0].length;
    }

    public char[][] getGrid() {
        return grid;
    }

    public void fillWithEmpty() {
        for (int row = 0; row < getRows(); row++) {
            for (int col = 0; col < getCols(); col++) {
                grid[row][col] = EMPTY;
            }
        }
    }

    public boolean isWall(Position position) {
        return position.getRow() < 0 || position.getRow() >= getRows()
                || position.getCol() < 0 || position.getCol() >= getCols();
    }

    public boolean isEmpty(Position position) {
        if (isWall(position)) {
            return false;
        }
        return grid[position.getRow()][position.getCol()] == EMPTY;
    }

    public char getCell(Position position) {
        if (isWall(position)) {
            throw new IllegalArgumentException("Position is outside the map.");
        }
        return grid[position.getRow()][position.getCol()];
    }

    public void clearCell(Position position) {
        if (!isWall(position)) {
            grid[position.getRow()][position.getCol()] = EMPTY;
        }
    }

    public void placeFood(Position position) {
        if (isWall(position)) {
            throw new IllegalArgumentException("Cannot place food outside the map.");
        }
        if (!isEmpty(position)) {
            throw new IllegalArgumentException("Cannot place food on a non-empty cell.");
        }
        grid[position.getRow()][position.getCol()] = FOOD;
    }


    // Draws snake on the map with T=tail, o=body, H=head.

    public void placeSnake(List<Position> body) {
        fillWithEmpty();
        for (int i = 0; i < body.size(); i++) {
            Position position = body.get(i);
            if (!isWall(position)) {
                if (i == 0) {
                    grid[position.getRow()][position.getCol()] = TAIL;
                } else if (i == body.size() - 1) {
                    grid[position.getRow()][position.getCol()] = HEAD;
                } else {
                    grid[position.getRow()][position.getCol()] = SNAKE;
                }
            }
        }
    }
}
