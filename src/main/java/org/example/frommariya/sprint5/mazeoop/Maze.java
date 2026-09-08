package org.example.frommariya.sprint5.mazeoop;

public class Maze {
    public static Position startMaze;
    public static Position exitMaze;
    public static char[][] mazeGrid;
    public static int rows;
    public static int columns;

    public Maze(char[][] mazeGrid,Position startMaze,Position exitMaze){
        this.mazeGrid = mazeGrid;
        this.rows = mazeGrid.length;
        this.columns = mazeGrid[0].length;
        this.startMaze = startMaze;
        this.exitMaze = exitMaze;

        }

    public static boolean isValidMove(int x,int y){
        return x >=0 && x<rows
                && y>=0 && y< columns
                && mazeGrid[x][y] != '1';
    }

    public boolean isExit(Position position){
        return position.equals(exitMaze);

    }

    public static int getRows(){
        return rows;
    }

    public static int getColumns(){
        return columns;
    }

    public static char getCellPosition(int x, int y){
        return mazeGrid[x][y];
    }

    public static Position getStartMaze(){
        return startMaze;
    }

    public static Position getExitMaze(){
        return exitMaze;
    }

}
