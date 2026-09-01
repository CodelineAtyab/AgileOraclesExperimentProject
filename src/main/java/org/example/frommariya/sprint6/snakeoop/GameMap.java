package org.example.frommariya.sprint6.snakeoop;

import java.util.ArrayList;
import java.util.List;

public class GameMap {
    public int rows;
    public int columns;
    public char Empty ='-';
    public char Snake_Body ='o';
    public char[][] grid;

    public GameMap(int rows,int columns){
        this.columns=columns;
        this.rows=rows;
        this.grid=new char[rows][columns];
        initEmptyMap();
    }

    public void initEmptyMap(){
        for(int x=0;x<rows;x++){
            for(int y=0;y<columns;y++){
                grid[x][y] = Empty;
            }
        }
    }

    public void setC(Position position, char val){
        if(isValidPosition(position)){
            grid[position.getRows()][position.getColumns()] =val;
        }
    }

    public char getC(Position position){
        if(isValidPosition(position)){
            return grid[position.getRows()][position.getColumns()];
        }
        return '\0';
    }
    public boolean isEmpty(Position position){
        return isValidPosition(position) && grid[position.getRows()][position.getColumns()] ==Empty;

    }

    public boolean isSnakeBody(Position position){
        return isValidPosition(position) &&
                grid[position.getRows()][position.getColumns()]==Snake_Body;
    }

    public boolean isValidPosition(Position position){
        return position.getRows() >=0 && position.getRows() <rows && position.getColumns() >= 0 && position.getColumns() <columns;

    }

    public void placeSnake(Position position){
        setC(position,Snake_Body);

    }

    public void clearCells(Position position){
        setC(position,Empty);

    }

    public int getRows(){
        return rows;
    }

    public int getColumns(){
        return columns;
    }

    public char[][] getGrid(){
        return grid;
    }

    public List<Position> getSnakePosition(){
        List<Position> positions =new ArrayList<>();
        for(int x=0;x<rows;x++){
            for(int y=0;y<columns;y++){
                if(grid[x][y]==Snake_Body){
                    positions.add(
                            new Position(x,y));
                }
            }
        }
        return positions;
    }




}
