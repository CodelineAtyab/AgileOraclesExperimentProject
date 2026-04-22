package org.example.fromtibyan.sprint6.snakegameoop;

import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;

import static org.example.fromtibyan.sprint6.snakegameoop.MapLoader.mapArray2D;
import static org.example.fromtibyan.sprint6.snakegameoop.Snake.snakeBody;

public class FilePersistence {
    public static void writeMap() {

        for (int[] body : snakeBody) {
            mapArray2D[body[0]][body[1]] = 'o';// update snake positions
        }
        Path snakeFile = Path.of("src/main/java/org/example/fromtibyan/sprint6/snakegameoop/map.txt");// write map to file
        List<String> mapLines = new ArrayList<>();
        for (char[] row : mapArray2D) {
            String line = "";
            for (int i = 0; i < row.length; i++) {
                line += row[i];
                if (i < row.length - 1) {
                    line += " "; // add space after printing and not removing them
                }
            }
            mapLines.add(line);
        }

        try {
            Files.write(snakeFile, mapLines); // overwrite the file
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static void snakeTrackingFile() {
        try {
            FileWriter writer = new FileWriter("src/main/java/org/example/fromtibyan/sprint6/snakegameoop/snakeCoordinates.txt");

            for (int[] snakeCoord : snakeBody) {
                // Write each coordinate pair tgt
                writer.write(snakeCoord[0] + "," + snakeCoord[1] + "\n");
            }
            System.out.println();

            writer.close();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }
}
