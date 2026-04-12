package org.example.formabdulmajeed;

import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Stack;

public class EscapetheMaze {
    public static void main(String[] args) throws InterruptedException {
        char[][] maze = loadMaze();
        int[][] initialPosition = new int[][]{getPlayerLocation(maze)};
        Stack<int[]> traking = new Stack<>();
        boolean[][] visited = new boolean[maze.length][maze[0].length];
        int row = 0;
        int col =0;
        traking.push(getPlayerLocation(maze));
        visited[row][col]=true;

        while (!traking.isEmpty()) {
            int[] current  = traking.peek();
            showMaze(maze,traking);
            Thread.sleep(1000);


            if (maze[row][col]  == 'E'){
                System.out.println("Exit found");
                break;
            }
            row= current[0];
            col= current[1];
            boolean moved =false;
            //move right
            if (!moved && col+1< maze[0].length && !visited[row][col+1] && (maze[row][col+1]=='0'||maze[row][col+1]=='E')){
            traking.push(new int[] {row,col+1});
            visited[row][col+1]=true;
            moved=true;
            }
            //move left
            if (!moved && col-1 >=0 && !visited[row][col-1] && (maze[row][col-1]=='0' || maze[row][col-1]=='E')){
                traking.push(new int[] {row,col-1});
                visited[row][col-1]=true;
                moved=true;
            }
            //move down
            if (!moved && row+1<maze.length && !visited[row+1][col] && (maze[row+1][col]=='0'||maze[row+1][col]=='E')){
                traking.push(new int[]{row+1,col});
                visited[row+1][col]=true;
                moved=true;
            }
            //move up
            if (!moved && row-1>= 0 && !visited[row-1][col] && (maze[row-1][col]=='0'||maze[row-1][col]=='E')){
                traking.push(new int[]{row-1,col});
                visited[row-1][col]=true;
                moved=true;
            }

            if (!moved)
                traking.pop();
        }
    }
        public static void showMaze ( char[][] maze,Stack<int[]> traking){
        boolean[][] path = new boolean[maze.length][maze[0].length];
        for (int[] poition : traking){
            path[poition[0]][poition[1]] =true;
        }
            for (int row = 0; row < maze.length; row++) {
                for (int col = 0; col < maze[row].length; col++) {
                    if (path[row][col]) {
                        System.out.print('@');
                    }
                    else {
                        System.out.print(maze[row][col]);
                    }
                }
                System.out.println();
            }
        }
        public static char[][] loadMaze () {
            Path mazePath = null;
            char[][] maze;
            try {
                mazePath = Path.of(EscapetheMaze.class.getResource("./data/maze.txt").toURI());
            } catch (URISyntaxException E) {
                throw new RuntimeException(E);
            }
            try {
                String insideFile = Files.readString(mazePath);
                String[] fileLines = insideFile.split("\n");
                int lineLength = fileLines[0].length();

                maze = new char[fileLines.length][lineLength];
                for (int row = 0; row < fileLines.length; row++) {
                    char[] currRow = fileLines[row].toCharArray();


                    System.arraycopy(currRow, 0, maze[row], 0, currRow.length);
                }

            } catch (IOException E) {
                throw new RuntimeException(E);
            }
            return maze;
        }
        public static int[] getPlayerLocation (char[][] maze){
            int[] location = new int[2];
            for (int row = 0; row < maze.length; row++) {
                for (int col = 0; col < maze[row].length; col++) {
                    if (maze[row][col] == '@') {
                        location[0] = row + 1;
                        location[1] = col + 1;
                    }
                }
            }
            return location;
        }
    }
