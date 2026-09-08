package org.example.fromrima.snakegame;

import java.util.Objects;

public class Position {
    public final int row;
    public final int col;

    public Position(int row, int col) {
        this.row = row;
        this.col = col;
    }
    //convert object to readable string
    @Override
    public String toString() {
        return "[" + row + "," + col + "]";
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj){
            return true;
        }
        if (!(obj instanceof Position)){
            return false;
        }
        Position position = (Position) obj;
        return row == position.row && col == position.col;
    }
    // Generates a hash code based on row and col (used in HashSet).
    @Override
    public int hashCode() {
        return Objects.hash(row, col);

    }
}