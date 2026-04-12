package org.example.fromtibyan.sprint5.escapemazeoop;

import java.util.Objects;

import static org.example.fromtibyan.sprint5.escapemazeoop.MazeLoader.filePath;


public class MazeApp {
    public static void main(String[] args) {
        if (args.length < 1) {
            MazeLoader.readMaze();
        } else if (args.length == 1) {
            if (Objects.equals(args[0], "maze.txt")) {
                String pathBeg = "src/main/java/org/example/fromtibyan/sprint5/escapemazeoop/";
                filePath = pathBeg + args[0];
                MazeLoader.readMaze();
            } else {
                System.err.println("Invalid filename. Usage: java -cp target/classes org.example.fromtibyan.sprint5.escapemazeoop.MazeApp [maze.txt]");
            }
        } else {
            System.out.println("Usage: java -cp target/classes org.example.fromtibyan.sprint5.escapemazeoop.MazeApp [filename]");
        }
    }
}
