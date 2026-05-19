package org.example.fromahed.sprintA5;

public class Position {

    private int row;
    private int col;
    private Position parent;

    public Position(int row, int col) {
        this.row = row;
        this.col = col;
    }

    public Position(int row, int col, Position parent) {
        this.row = row;
        this.col = col;
        this.parent = parent;
    }

    public int getRow() {
        return row;
    }

    public int getCol() {
        return col;
    }

    public Position getParent() {
        return parent;
    }
}


