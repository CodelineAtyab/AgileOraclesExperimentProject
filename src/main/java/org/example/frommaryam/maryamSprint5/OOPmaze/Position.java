package org.example.frommaryam.maryamSprint5.OOPmaze;

public class Position {

    // encapsulation
    private int row;
    private int col;

    public Position(int row, int col) {
        this.row = row;
        this.col = col;
    }

    // controlled access
    public int getRow() { return row; }
    public int getCol() { return col; }

    // output
    public String toString() {
        return "(" + row + "," + col + ")";
    }
}