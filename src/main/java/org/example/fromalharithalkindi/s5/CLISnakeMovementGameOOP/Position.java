package org.example.fromalharithalkindi.s5.CLISnakeMovementGameOOP;

public class Position {

    int row;
    int col;

    public Position(int row, int col) {
        this.row = row;
        this.col = col;
    }

    public Position move(String d) {

        if (d.equalsIgnoreCase("up")) return new Position(row - 1, col);
        if (d.equalsIgnoreCase("down")) return new Position(row + 1, col);
        if (d.equalsIgnoreCase("left")) return new Position(row, col - 1);
        return new Position(row, col + 1);
    }
}
