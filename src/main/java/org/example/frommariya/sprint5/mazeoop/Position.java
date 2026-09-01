package org.example.frommariya.sprint5.mazeoop;

public class Position {
    public static int rows;
    public static int columns;

    public Position(int rows, int columns){
        this.rows = rows;
        this.columns = columns;
    }

    @Override
    public String toString(){
        return "(" +rows+ "," +columns+ ")";
    }

    @Override
    public boolean equals(Object object){
        if(this==object)
            return true;
        if(!(object instanceof Position))
            return false;
        Position position = (Position) object;
        return rows == position.rows && columns ==position.columns;
    }
}
