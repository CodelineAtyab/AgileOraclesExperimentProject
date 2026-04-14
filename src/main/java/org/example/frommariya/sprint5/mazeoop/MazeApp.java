package org.example.frommariya.sprint5.mazeoop;

public class MazeApp {
    public static void main(String[] args){
        if(args.length <1){
            System.out.println("CMD Command should be: java MazeApp <filename>");
            return;
        }
        try {
            Maze mazeOop = MazeLoader.load(args[0]); //Maze referes to Maze.java
            MazeSolver solve = new MazeSolver(mazeOop);
            solve.solving(); // from MazeSolver.java
        } catch (Exception e){
            System.out.println("Error"+e.getMessage());
        }
    }
}
