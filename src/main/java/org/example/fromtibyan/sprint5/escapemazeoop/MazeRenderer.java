package org.example.fromtibyan.sprint5.escapemazeoop;

import java.util.ArrayList;

import static org.example.fromtibyan.sprint5.escapemazeoop.MazeLoader.*;
import static org.example.fromtibyan.sprint5.escapemazeoop.MazeSolver.*;

public class MazeRenderer {
    static ArrayList<String> pathCoordinates = new ArrayList<>();
    public static void printMaze(){
        mazeArray2D[r][c] = '@';
        for (char[] maze : mazeArray2D) {
            System.out.println(maze);
        }

        for (int space = 0; space < 4; space++) {
            System.out.println();
        }
    }

    public static void mazeDelay(){
        mazeArray2D[r][c] = '-';
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    public static void symbolCoordinates(){
        pathCoordinates.add("("+r+","+c+") ");
    }

    public static void printPath(){
        for(String path: pathCoordinates){
            System.out.print(path +" ");
        }
        System.out.println();
    }
}
