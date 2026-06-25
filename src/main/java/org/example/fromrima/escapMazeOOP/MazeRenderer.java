package org.example.fromrima.escapMazeOOP;
public class MazeRenderer {
    public void animate(Maze maze, int playerRow, int playerCol) throws InterruptedException {
        char[][] grid = maze.getGrid(); //get maze
        System.out.println();
        //print maze line by line
        for (int i = 0; i < maze.getRows(); i++) {
            System.out.print("   ");
            for (int j = 0; j < maze.getCols(); j++) {
                //get player "@" location and print
                if (i == playerRow && j == playerCol) {
                    System.out.print("@ ");
                }
                else if (grid[i][j] == '@') {
                    if (i == 0 || j == 0 || i == maze.getRows() - 1 || j == maze.getCols() - 1)
                        System.out.print("1 ");
                    else
                        System.out.print("0 "); //open path
                } else {
                    System.out.print(grid[i][j] + " ");
                }
            }
            System.out.println();
        }

        Thread.sleep(1000); //pause animation for 1 seconde
    }
    //print the all coordinates
    public void printPath(java.util.Stack<Position> stack) {
        System.out.println("Path:");
        for (Position p : stack) {
            System.out.print("(" + (p.getRow() + 1) + "," + (p.getCol() + 1) + ") ");
        }
        System.out.println();
    }
}