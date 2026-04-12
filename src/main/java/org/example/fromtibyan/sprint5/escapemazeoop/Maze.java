package org.example.fromtibyan.sprint5.escapemazeoop;

import java.io.FileWriter;
import java.io.IOException;

import static org.example.fromtibyan.sprint5.escapemazeoop.MazeLoader.mazeArray;
import static org.example.fromtibyan.sprint5.escapemazeoop.MazeLoader.mazeArray2D;

public class Maze {
    public static void storeMaze(){
        try {
            FileWriter writer = new FileWriter("src/main/java/org/example/fromtibyan/sprint5/escapemazeoop/maze.txt");

            for (int row = 0; row < mazeArray.size(); row++) {
                for (int column = 0; column < mazeArray.get(0).length(); column++) {
                    writer.write(mWrite);
                }
            }
//            for (char[]  mWrite: mazeArray2D) {
//                writer.write(mWrite);
//            }
//            System.out.println();

            writer.close();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
