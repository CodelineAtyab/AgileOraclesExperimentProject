package org.example.fromtibyan.sprint5.escapemazeoop;

import static org.example.fromtibyan.sprint5.escapemazeoop.MazeLoader.*;
import static org.example.fromtibyan.sprint5.escapemazeoop.MazeSolver.*;

public class MazeRenderer {
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
        mazeArray2D[r][c] = '0';
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}
