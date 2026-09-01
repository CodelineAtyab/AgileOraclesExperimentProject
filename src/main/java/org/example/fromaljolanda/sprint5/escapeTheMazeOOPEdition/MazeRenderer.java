package org.example.fromaljolanda.sprint5.escapeTheMazeOOPEdition;

import java.util.Stack;

public class MazeRenderer {
    public static void print(Maze maze, Stack<Position> stack) {
        int n = maze.getSize();
        boolean[][] path = new boolean[n][n];

        for (Position position : stack) {
            path[position.row][position.col] = true;
        }

        System.out.println();

        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                if (path[i][j]) {
                    System.out.print('@');
                }
                else {
                    System.out.print(maze.get(i, j));
                }
            }
            System.out.println();
        }
        System.out.println();
        System.out.println("----------");
    }
}
