package org.example.fromrima.snakegame;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
//To load data of Snake Game from map.txt file
public class MapLoader {
    public static void loadFromFile(String filePath) { //takes file path as input and loads game state
        File file = new File(filePath); //represents the  map.txt file in memory
        //if file not exist
        if (!file.exists()) {
            GameMap.initGame();
            return;
        }

        Snake.snake.clear();
        Snake.snakeSet.clear();

        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            String line; //to store each line from the file
                //to reach line-by-line from the file
            while ((line = br.readLine()) != null) {

                if (line.startsWith("SCORE")) {
                    GameMap.score = Integer.parseInt(line.split(" ")[1]);

                } else if (line.startsWith("FOOD")) {
                    String value = line.substring(line.indexOf("[") + 1, line.indexOf("]"));
                    String[] xy = value.split(",");
                    //convert to integers and store food position
                    GameMap.foodX = Integer.parseInt(xy[0].trim());
                    GameMap.foodY = Integer.parseInt(xy[1].trim());

                } else if (line.startsWith("SNAKE")) {
                    String body = line.replace("SNAKE", "").trim();
                    String[] parts = body.split("\\s+");

                    for (String part : parts) {
                        part = part.replace("[", "").replace("]", "");
                        String[] xy = part.split(",");

                        int x = Integer.parseInt(xy[0].trim());
                        int y = Integer.parseInt(xy[1].trim());

                        Position position = new Position(x, y);
                        Snake.snake.addLast(position);
                        Snake.snakeSet.add(position);
                    }
                }
            }

            if (Snake.snake.isEmpty()) {
                GameMap.initGame();
            }

        } catch (Exception e) { //handling wrong format || parsing error
            System.out.println("Error loading game: " + e.getMessage());
            GameMap.initGame(); //reset the game
        }
    }
}