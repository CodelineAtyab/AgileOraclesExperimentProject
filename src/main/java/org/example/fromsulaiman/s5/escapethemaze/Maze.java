package org.example.fromsulaiman.s5.escapethemaze;

public class Maze {
    private char[][] grid;
    private  int size;

    public Maze(char[][]grid){
        this.grid =grid;
        this.size =grid.length;
    }

    public int getSize(){
        return size;
    }

    public char getCell(int row ,int col){
        return grid[row][col];
    }

    public void setCell(int row,int col,char value){
        grid[row][col] = value;
    }

    public boolean isWall(int row,int col){
        return grid[row][col] == '1';
    }

    public boolean isExit(int row, int col){
        return grid[row][col] == 'E';
    }

    public boolean isValidMove(int row, int col){
        return row >= 0 && col >= 0 && row < size && col < size && !isWall(row,col);
    }

    public char[][] getGrid(){
        return grid;
    }

    public void markCurrent(int row, int col) {
        grid[row][col] = '@';
    }

    public void clearCell(int row, int col) {
        grid[row][col] = '0';
    }

}
