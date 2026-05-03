package org.example.formabdulmajeed.MazeOOPEdition;

public class Postion {
    private int row;
    private int col;

    public Postion(int row, int col) {
        this.row = row;
        this.col = col;
    }

    public int getRow() {
        return row;
    }

    public int getCol() {
        return col;
    }

    public static int[] getPostion(char[][] maze){
        int[] location = new int[2];
        for (int row = 0; row < maze.length; row++) {
            for (int col = 0; col < maze[row].length; col++) {
                if (maze[row][col] == '@') {
                    location[0] = row + 1;
                    location[1] = col + 1;
                }
            }
        }
        return location;
    }
    @Override
    public String toString() {
        return "(" + row + "," + col + ")";
    }
}

