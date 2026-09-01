package org.example.frommariya.sprint5.mazeoop;

import java.util.Stack;
import java.util.StringJoiner;
import static org.example.frommariya.sprint5.mazeoop.Maze.startMaze;

public class MazeSolver {

    public static Stack<Position> mazeStack = new Stack<>();
    public static boolean[][] visit;
    public static Maze mazeOop;

    public MazeSolver(Maze mazeOop){
        this.mazeOop = mazeOop;
        this.visit = new boolean[mazeOop.getRows()][mazeOop.getColumns()];
    }

    public static void solving() throws InterruptedException{
        Position startMaze = mazeOop.getStartMaze();
        mazeStack.push(startMaze);
        visit[startMaze.rows][startMaze.columns] = true;


        int frames =0;
        while (!mazeStack.isEmpty()){
            Position c = mazeStack.peek();
            MazeRenderer.renderer(mazeOop,c,frames++);

            if(mazeOop.isExit(c)){
                showPath();
                return;
            }

            Position nextPosition = nextMove(c);
            if(nextPosition != null){
                visit[nextPosition.rows][nextPosition.columns] =true;
                mazeStack.push(nextPosition);
            }
            else
            {
             mazeStack.pop(); // This will backtrack
            }
            Thread.sleep(1000); //1 sec delay between frames
        }
        System.out.println("No Path to go!!");
    }

    public static Position nextMove(Position position){
        int[] rowDirection = {1,0,-1,0};
        int[] columnDirection = {0,1,0,-1};
        for(int x=0;x<4;x++){
            int nextRow = position.rows + rowDirection[x];
            int nextColumn =position.columns + columnDirection[x];
            if(mazeOop.isValidMove(nextRow,nextColumn) && !visit[nextRow][nextColumn]){
                return new Position(nextRow,nextColumn);
            }
        }
        return null;
    }

    public static void showPath(){
        System.out.println("The Maze Has been Solved");
        StringJoiner stringJoiner = new StringJoiner("->");
        for(Position position : mazeStack) stringJoiner.add(position.toString());
        System.out.print("The Path is: ");
        System.out.println(stringJoiner.toString());
        System.out.print("Found Exit At: ");
        System.out.println(Maze.getExitMaze());

        }
    }
