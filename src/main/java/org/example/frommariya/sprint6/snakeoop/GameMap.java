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
    public boolean isEmpty(){

    }

    public boolean isSnakeBody(){

    }

    public boolean isValidPosition(){

    }

    public void placeSnake(){

    }

    public void clearCells(){

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
    }




}
