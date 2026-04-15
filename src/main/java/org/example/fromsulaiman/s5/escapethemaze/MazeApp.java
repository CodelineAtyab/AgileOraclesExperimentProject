package org.example.fromsulaiman.s5.escapethemaze;

import java.util.Stack;

public class MazeApp {
    public static void main(String[] args) {

      if (args.length == 0){
          System.out.println("Usage: java MazeAPP maze.txt");
          return;
      }

      Maze maze;

      // load maze
        try {
            maze =MazeLoader.load(args[0]);
        }catch (Exception e){
            System.out.println("Error loading maze: "+e.getMessage());
            return;
        }

        // find the start '@'
        Position start = findStart(maze);

        // create solver
        MazeSolver solver = new MazeSolver(maze);

        try{
            boolean solved =solver.solve(start);

            if (solved) {
                System.out.println("\n Maze Solved");

                Stack<Position> path = solver.getPath();

                System.out.print("Path: ");
                for (int i = 0; i < path.size(); i++) {
                    System.out.print(path.get(i));
                    if (i < path.size() - 1) {
                        System.out.print(" → ");
                    }
                }

                Position end = path.peek();
                System.out.println("\n Found an exit at: " + end);

            }
            else {
                System.out.println("No Path found");
            }
            }catch (InterruptedException e){
            System.out.println("Execution interrupted.");
        }
    }
    private static Position findStart(Maze maze) {
        for (int i = 0; i < maze.getSize(); i++) {
            for (int j = 0; j < maze.getSize(); j++) {
                if (maze.getCell(i, j) == '@') {
                    return new Position(i, j);
                }
            }
        }

        throw new RuntimeException("Start '@' not found in maze");
    }

}
