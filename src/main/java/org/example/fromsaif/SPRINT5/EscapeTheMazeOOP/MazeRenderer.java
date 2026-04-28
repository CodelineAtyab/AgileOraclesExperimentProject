package org.example.fromsaif.SPRINT5.EscapeTheMazeOOP;


public class MazeRenderer {
    public void drawMaze(Maze maze) {
        for (int row = 0; row < maze.getRows(); row++) {
            for (int col = 0; col < maze.getCols(); col++) {
                Position position = new Position(row, col);
                System.out.print(maze.getCell(position));
            }
            System.out.println();
        }
    }

    public void clearConsole() {
        for (int i = 0; i < 30; i++) {
            System.out.println();
        }
    }

    public void drawMaze(Maze maze, Position current) {
        for (int row = 0; row < maze.getRows(); row++) {
            for (int col = 0; col < maze.getCols(); col++) {
                Position position = new Position(row, col);

                if (row == current.getRow() && col == current.getCol()) {
                    System.out.print('@');
                } else if (maze.getCell(position) == '@') {
                    System.out.print('0');
                } else {
                    System.out.print(maze.getCell(position));
                }
            }
            System.out.println();
        }
    }
}