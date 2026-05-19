package org.example.fromalharith.snakeoop;

public class Position {
    public int row, col;

    public Position(int r, int c) {
        this.row = r;
        this.col = c;
    }

    public boolean equals(Position p) {
        return this.row == p.row && this.col == p.col;
    }
}