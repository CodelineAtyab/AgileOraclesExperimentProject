package org.example.fromalharithalkindi.s5.CLISnakeMovementGameOOP;

import java.util.LinkedList;

public class GameMap {

    private String[][] grid;

    public GameMap(String[][] grid) {
        this.grid = grid;
    }

    public boolean isInside(Position p) {
        return p.row >= 0 && p.row < grid.length && p.col >= 0 && p.col < grid[0].length;
    }

    public boolean isEmpty(Position p) {
        return grid[p.row][p.col].equals("-");
    }

    public void placeSnake(Position p) {
        grid[p.row][p.col] = "o";
    }

    public void clearCell(Position p) {
        grid[p.row][p.col] = "-";
    }

    public String[][] getGrid() {
        return grid;
    }

    public Snake extractSnake() {
        LinkedList<Position> body = new LinkedList<>();

        for (int r = 0; r < grid.length; r++) {
            for (int c = 0; c < grid[r].length; c++) {
                if (grid[r][c].equals("o")) {
                    body.add(new Position(r, c));
                }
            }
        }

        return new Snake(body);
    }
}