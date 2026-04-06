package org.example.fromalharith;

import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;

public class Main {
    public static void main(String[] args) {
        Path mazePath = null;
        char[][] maze;

        try {
            mazePath = Path.of(Main.class.getResource("./data/.txt").toURI());
        } catch (URISyntaxException e) {
            throw new RuntimeException(e);
        }

        try {
            String fileContent = Files.readString(mazePath);
            String[] lineOfFile = fileContent.split("\n");
            int lineLength = lineOfFile[0].length();
            maze = new char[lineOfFile.length][];

            for (int row = 0; row < lineOfFile.length; row++) {
                char[] currRow = lineOfFile[row].toCharArray();

                for (int col = 0; col < currRow.length; col++) {
                    maze[row][col] = currRow[col];
                }
            }
            } catch(IOException e){
                throw new RuntimeException(e);
            }

            for (int row=0; row<10; row++){
                for (int col=0; col<10; col++)
                    System.out.printf("%c",maze[row][col]);
            }
            System.out.println();
        }
    }
