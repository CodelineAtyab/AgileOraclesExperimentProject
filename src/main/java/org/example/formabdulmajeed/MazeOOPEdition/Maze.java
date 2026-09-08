package org.example.formabdulmajeed.MazeOOPEdition;

public class Maze {
    public static final char WALL       = '1';
    public static final char OPEN       = '0';
    public static final char START      = '@';
    public static final char EXIT       = 'E';
    public static final char VISITED    = '.';
    private char[][] maze;
    private int rows;
    private int cols;
    private Postion startPosition;


    public Maze(char[][] maze) {
        this.maze = maze;
        this.rows = maze.length;
        this.cols = maze[0].length;
        this.startPosition = findChar(START);
    }
    public boolean isWall(int row, int col) {
        return maze[row][col] == 1;
    }
    public boolean isExit(int row, int col) {
        return maze[row][col] == 'E';
    }
    public boolean isValidMove(int row, int col) {
        boolean inBounds = (row >= 0 && row < maze.length && col >= 0 && col < maze[0].length);
        if (!inBounds) return false;
        return maze[row][col] != '1';
    }
    public char getCell(int row, int col) {
        return maze[row][col];
    }
    void setCell(int row, int col, char value) {
        maze[row][col] = value;
    }

    public int getRows() {
        return maze.length;
    }

    public int getCols() {
        return maze[0].length;
    }
    public Postion getStartPosition(){ return startPosition; }
//    private Postion getPostion(char target){
//        //int[] location = new int[2];
//        for (int row = 0; row < maze.length; row++) {
//            for (int col = 0; col < maze[row].length; col++) {
//                if (maze[row][col] == '@') {
//                    //location[0] = row + 1;
//                    //location[1] = col + 1;
//                    return new Postion();
//                }
//            }
//        }
//        //return location;
//    }
    private Postion findChar(char target) {
        for (int r = 0; r < rows; r++) {
            for (int c = 0; c < cols; c++) {
                if (maze[r][c] == target) {
                    return new Postion(r, c);
                }
            }
        }
        throw new IllegalStateException("Character '" + target + "' not found in grid.");
    }
}
