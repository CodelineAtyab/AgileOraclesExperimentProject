package org.example.fromsulaiman.s5.escapethemaze;

public class Position {
    public int row;
    public int col;

    public Position(int row,int col){
        this.row = row;
        this.col = col;
    }

    @Override
    public String toString(){
        return "("+ row + "," + col + ")";
    }
}
