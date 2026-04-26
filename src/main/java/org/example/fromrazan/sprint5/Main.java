package org.example.fromrazan.sprint5;

public class Main {
    public static void main(String[] args){

        if (args.length != 1){
            System.out.println("Usage: java EscaperMaze maze.txt");
            return;
        }

        try {
            EscapeMaze maze = new EscapeMaze();
            maze.load(args[0]);

            Solver solver = new Solver(maze);

            if (!solver.solve()) {
                System.out.println(("No path found"));
            }

        } catch (Exception e){
            System.out.println("Error :" + e.getMessage());
        }
    }
}
