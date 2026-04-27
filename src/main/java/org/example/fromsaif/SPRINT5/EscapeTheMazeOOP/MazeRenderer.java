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
}