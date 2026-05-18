package org.example.fromibrahim.oop.snake.move;

public class Position {
    private final int row; // ENCAPSULATION: private - immutable once created
    private final int col; // ENCAPSULATION: private - immutable once created

    public Position(int row, int col) {
        this.row = row;
        this.col = col;
    }
    public int getRow() {
        return row;
    }
    public int getCol() {
        return col;
    }
}