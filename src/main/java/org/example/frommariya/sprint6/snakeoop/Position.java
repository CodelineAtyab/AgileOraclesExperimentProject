package org.example.frommariya.sprint6.snakeoop;

import java.util.Objects;

public class Position {
    public int columns;
    public int rows;

    public Position(int rows,int columns){
        this.columns=columns;
        this.rows=rows;
    }

    public int getColumns() {
        return columns;
    }

    public int getRows() {
        return rows;
    }

    public Position movement(Direction dir) {
        switch (dir) {
            case LEFT:
                return new Position(rows, columns - 1);
            case RIGHT:
                return new Position(rows, columns + 1);
            case UP:
                return new Position(rows - 1, columns);
            case DOWN:
                return new Position(rows + 1, columns);
            default:
                return this;
        }
    }

    @Override
    public boolean equals(Object object){
        if (this==object)
            return true;
        if(object==null || getClass()!= object.getClass())
            return false;
        Position position=(Position) object;
        return rows==position.rows&&columns==position.columns;
    }

    @Override
    public int hashCode(){
        return Objects.hash(rows,columns);
    }

    @Override
    public String toString(){
        return "(" +rows+ "," +columns+ ")";
    }
}
