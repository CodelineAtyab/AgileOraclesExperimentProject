package org.example.frommariya.sprint6.snakeoop;

import java.util.Objects;

public class Position {
    public int columns;
    public int rows;

    public Position(int columns,int rows){
        this.columns=columns;
        this.rows=rows;
    }

    public int getColumns() {
        return columns;
    }

    public int getRows() {
        return rows;
    }

    public Position movement(Direction dir){
        switch (dir){
            case LEFT:
                return new Position(rows,columns-1);
            case RIGHT:
                return new Position(rows,columns+1);
            case UP:
                return new Position(rows-1,columns);
            case DOWN:
                return new Position(rows+1,columns);
        }

}
