package org.example.formabdulmajeed.MazeOOPEdition;

import org.w3c.dom.ls.LSOutput;

import java.util.ArrayList;

public class MazeApp {
    public static void main(String[] args) throws MazeException {
        Maze maze;
        maze = MazeLoader.loadMaze();

        MazeRenderer renderer = new MazeRenderer(1000);
        MazeSolver solver = new MazeSolver(maze, renderer);
        boolean solved = solver.solve();
        System.out.println();
        if (solved) {
            printSolution(solver);
        } else {
            System.out.println("no path");
        }

        printSolution(solver);
    }


        private static void printSolution (MazeSolver solver){
            ArrayList<Postion> path = (ArrayList<Postion>) solver.getSolutionPath();
            Postion exit = solver.getExitFound();

            System.out.println("==================================================");
            System.out.println("Maze Solved!");
            System.out.println("==================================================");
            System.out.println();

            // Print every position in the path separated by arrows
            System.out.print("Path: ");
            for (int i = 0; i < path.size(); i++) {
                System.out.print(path.get(i));
                if (i < path.size() - 1) {
                    System.out.print(" -> ");
                }
            }
            System.out.println();
            System.out.println();

            System.out.println("Found an Exit at: (Row " + exit.getRow()
                    + ", Column " + exit.getCol() + ")");
            System.out.println("Total steps in path: " + (path.size() - 1));
            System.out.println();
        }
        private static void sleep ( int ms){
            try {
                Thread.sleep(ms);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        }
    }
