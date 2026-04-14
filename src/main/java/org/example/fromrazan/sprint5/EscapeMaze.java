package org.example.fromrazan.sprint5;

import java.util.*;
import java.nio.file.*;
import java.io.*;

//main class controller
public class EscapeMaze {
    static char[][] maze;
    static boolean[][] visited;
    static int size;
    static Stack<int []> stack = new Stack<>();

    //main

    public static void main(String[] args){
        if (args.length != 1){
            System.out.println("Usage: java EscaperMaze maze.txt");
            return;
        }

        try {
            loadMaze(args[0]);

            if (!solveMaze()) {
                System.out.println(("No path found"));
            }
        } catch (Exception e){
            System.out.println("Error :" + e.getMessage());
        }
    }


    //load maze
   static void loadMaze(String filepath) throws IOException{
        List<String> lines = Files.readAllLines(Path.of("src/main/java/org/example/fromrazan/sprint5/maze.txt"));

        size = lines.size();
        maze = new char[size][size];
        visited = new boolean[size][size];

        int startCount = 0, exitCount = 0;

        for (int i = 0; i < size; i++ ){
            if (lines.get(i).length() !=size) {
                throw new RuntimeException("Maze must be n x n");

            }

            for (int k = 0; k < size; k++){
                char ch = lines.get(i).charAt(k);
                maze[i][k]= ch;

                if (ch == '@') startCount++;
                if (ch == 'E') exitCount++;

            }
        }
    if (startCount !=1 || exitCount !=1) {
        throw new RuntimeException(("Maze must have exactly one @ and one E"));

    }
   }
       // solve stack

    static boolean solveMaze() throws InterruptedException {
        int[] start = findStart();
        stack.push(start);

    while ( (!stack.isEmpty())) {
        int [] current = stack.peek();
        int r = current[0];
        int c = current[1];

        visited[r][c] = true;

        render(r,c);
        Thread.sleep(1000);

        if (maze[r][c] == 'E'){
            System.out.println("Maze Solved! ");
            printPath();
            System.out.println("found Exit at :(" + r + " , " + c +")");
            return true;
        }

        //moves:down,up,right,down

        if (move(r - 1,c)) continue;
        if (move(r + 1,c)) continue;
        if (move(r , c - 1)) continue;
        if (move(r ,c + 1)) continue;

        //dead end
        stack.pop();
    }
    return false;
    }

    //move
static boolean move(int r, int c){
        if (isValidMove(r,c)) {
            stack.push(new int [] {r,c});
            return true;
        }
        return false;
}


//validation
    static boolean isValidMove(int r, int c){
        return  r >= 0 && c >= 0 &&
                r < size && c < size &&
                maze[r][c] != '1' &&
                !visited[r][c];
    }

    //find start

    static int [] findStart() {
        for (int i = 0; i < size; i++){
            for (int k = 0; k < size; k++){
                if (maze[i][k] == '@'){
                    return new int[] {i,k};
                }
            }
        }
        return null;
    }

    //render animation

    static void render(int cr , int cc){
        clearConsole();

        for (int i = 0; i < size; i++){
            for (int k = 0; k < size; k++){
                if (i == cr && k == cc){
                    System.out.print("@");

                } else {

                    System.out.print(maze[i][k] + "  ");
                }
            }
            System.out.println();
        }
    }


    //print path

    static void printPath(){
        System.out.print("path: ");
        for (int [] p : stack ){
            System.out.print("(" + p[0] + " , " + p[1] + ") -> ");
        }
        System.out.println("E");

    }

    //clear console

    static void clearConsole(){
        System.out.print("\033[H\033[2J");
        System.out.flush();
    }
}
