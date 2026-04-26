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
    public boolean equals(Objects objects){
        if (this==objects)
            return true;
        if(objects==null || getClass()!= objects.getClass())
            return false;
        Position position=(Position) objects;
        return rows==position.rows&&columns==position.columns;
    }


}
