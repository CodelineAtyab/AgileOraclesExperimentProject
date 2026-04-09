package org.example.fromtibyan.sprint5.escapemazeoop;

public class Position {
    int row, col;
    Position(int r, int c) {
        row = r;
        col = c;
    }
    public int getRowPosition(){
        return this.row;
    }
    public int getColumnPosition(){
        return this.col;
    }
}
