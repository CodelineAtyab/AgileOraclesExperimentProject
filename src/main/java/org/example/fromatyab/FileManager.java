package org.example.fromatyab;

import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;

public class FileManager {
    public static void main(String[] args) {
        Path mazePath = null;
        try {
            mazePath = Path.of(FileManager.class.getResource("./data/maze.txt").toURI());
        } catch (URISyntaxException e) {
            throw new RuntimeException(e);
        }

        try {
            String fileContent = Files.readString(mazePath);
            System.out.println(fileContent);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }


        char[][] maze = new char[10][10];
    }
}
