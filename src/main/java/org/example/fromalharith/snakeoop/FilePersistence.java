package org.example.fromalharith.snakeoop;

import java.io.*;

public class FilePersistence {

    public static void saveSnake(String path, Snake snake) throws Exception {
        try (BufferedWriter bw = new BufferedWriter(new FileWriter(path))) {
            for (Position p : snake.getBody()) {
                bw.write(p.row + "," + p.col);
                bw.newLine();
            }
        }
    }

    public static boolean loadSnake(String path, Snake snake) throws Exception {
        File file = new File(path);

        if (!file.exists()) return false;

        snake.getBody().clear();

        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            String line;
            while ((line = br.readLine()) != null) {
                String[] p = line.split(",");
                snake.add(new Position(
                        Integer.parseInt(p[0]),
                        Integer.parseInt(p[1])
                ));
            }
        }

        return true;
    }
}