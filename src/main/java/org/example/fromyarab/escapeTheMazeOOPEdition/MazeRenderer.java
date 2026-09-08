package org.example.fromyarab.escapeTheMazeOOPEdition;

import java.util.ArrayList;

public class MazeRenderer {

    public void render(Maze maze, Position current, int steps) {
        // clear console
        for (int i = 0; i < 50; i++) {
            System.out.println();
        }

        System.out.println("Number of Steps: " + steps);
        System.out.println("Current Position is: " + current);

        ArrayList<ArrayList<String>> grid = maze.getGrid();
        for (int i = 0; i < grid.size(); i++) {
            for (int j = 0; j < grid.get(i).size(); j++) {
                if (current.getRow() == i && current.getCol() == j) {
                    System.out.print("@");
                } else {
                    System.out.print(grid.get(i).get(j));
                }
            }
            System.out.println();
        }
    }

    public void printSolved(ArrayList<Position> path, Position exit) {
        System.out.println("\nCongratulation >> Maze Solved!");
        System.out.print("Path: ");
        StringBuilder sb = new StringBuilder();
        for (Position p : path) {
            sb.append(p).append(" -> ");
        }
        sb.append("(E)");
        System.out.println(sb);
        System.out.println("Found an Exit at: " + exit);
    }

    public void printNoPath() {
        System.out.println("\nNo path found!");
    }
}