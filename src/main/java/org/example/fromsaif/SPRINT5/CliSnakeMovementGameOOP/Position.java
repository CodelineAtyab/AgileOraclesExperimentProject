package org.example.fromsaif.SPRINT5.CliSnakeMovementGameOOP;

public class Position {
    int row;
    int col;

    // Creates a new position on the grid
    Position(int row, int col) {
        this.row = row;
        this.col = col;
    }

    public String toFileLine() {
        return row + "," + col;
    }
}
