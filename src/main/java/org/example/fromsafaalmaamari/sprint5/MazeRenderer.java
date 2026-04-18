package org.example.fromsafaalmaamari.sprint5;

public class MazeRenderer {
    public static void render(Maze maze) {
        System.out.println();

        for (int row = 0; row < maze.getRows(); row++) {
            for (int col = 0; col < maze.getCols(); col++) {
                System.out.print(maze.getCell(row, col) + " ");
            }
            System.out.println();
        }
    }
}

