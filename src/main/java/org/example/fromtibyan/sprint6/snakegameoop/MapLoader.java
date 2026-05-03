package org.example.fromtibyan.sprint6.snakegameoop;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;

public class MapLoader {
    static char[][] mapArray2D;
    static ArrayList<String> mapArray;
    public static void readMap(){
        Path snakeFile = Path.of("src/main/java/org/example/fromtibyan/sprint6/snakegameoop/map.txt");
        try {
            // read file
            mapArray = (ArrayList<String>) Files.readAllLines(snakeFile);
            for (int i = 0; i < mapArray.size(); i++) {
                mapArray.set(i, mapArray.get(i).replace(" ", "")); // remove the spaces
            }

            GameMap.store2dMap();

        } catch (
                IOException e) {
            System.err.println("ERROR READING FILE: " + e.getMessage()); // misreading the file
            throw new RuntimeException(e);// exception handling of reading file
        }
        Snake.readSnakePosition();
    }

}
