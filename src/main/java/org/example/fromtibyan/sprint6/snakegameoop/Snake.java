package org.example.fromtibyan.sprint6.snakegameoop;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Random;

import static org.example.fromtibyan.sprint6.snakegameoop.Direction.*;
import static org.example.fromtibyan.sprint6.snakegameoop.MapLoader.mapArray2D;

public class Snake {
    static int foodRow = -1;
    static int foodCol = -1;
    static ArrayList<int[]> snakeBody = new ArrayList<>();
   public static void readSnakePosition(){
       // Read snake positions from snakeCoordinates.txt to save previous snake coordinates
       try {
           List<String> coordinate = Files.readAllLines(Path.of("src/main/java/org/example/fromtibyan/sprint6/snakegameoop/snakeCoordinates.txt"));
           for (String sCoordinate : coordinate) {
               sCoordinate = sCoordinate.trim();

               // Split by comma
               String[] parts = sCoordinate.split(",");
               int row = Integer.parseInt(parts[0]);
               int col = Integer.parseInt(parts[1]);

               snakeBody.add(new int[]{row, col});
           }
       } catch (
               IOException e) {
           System.err.println("ERROR READING FILE: " + e.getMessage()); // misreading the file
           throw new RuntimeException(e);// exception handling of file writing
       }
       Snake.foodForSnake(mapArray2D);
   }

   public static void headTailMovement(){
       mapArray2D[newRow][newCol] = 'o'; // add new head for movement
       int[] oldTail = snakeBody.remove(snakeBody.size() - 1);// remove old tail to keep snake length constant
       mapArray2D[oldTail[0]][oldTail[1]] = '-'; // remove old tail for movement
   }

   public static void bodyGrowth(){
       mapArray2D[newRow][newCol] = 'o'; // add new head for movement
       foodRow = -1;
       foodCol = -1;
       foodForSnake(mapArray2D);
   }

    public static Boolean notBodyCollision(int newHeadRow, int newHeadCol) {
        HashSet<String> snakeBodyCollision = new HashSet<>();
        try {
            List<String> coordinate = Files.readAllLines(
                    Path.of("src/main/java/org/example/fromtibyan/sprint6/snakegameoop/snakeCoordinates.txt"));
            for (String sCoordinate : coordinate) {
                sCoordinate = sCoordinate.trim();

                // Split by comma
                String[] parts = sCoordinate.split(",");
                int row = Integer.parseInt(parts[0]);
                int col = Integer.parseInt(parts[1]);

                // Store as "row,col"
                snakeBodyCollision.add(row + "," + col);
            }
        } catch (IOException e) {
            System.err.println("ERROR READING FILE: " + e.getMessage());
            throw new RuntimeException(e);
        }

        // Represent new head as string
        String newHead = newHeadRow + "," + newHeadCol;

        if (snakeBodyCollision.contains(newHead)) {
            System.out.println("Body collision");
            return false;
        }
        return true;
    }

    public static Boolean invalidMovementCondition(int afterHeadRow, int afterHeadColumn, int newHeadRow, int newHeadCol, int headRowComparison, int headColumnComparison) {
        // compare head coordinates with body coordinates thts before head
        if (afterHeadRow == newHeadRow && afterHeadColumn == newHeadCol) { // if new head value = 1st body segment value
            if (headRowComparison < newHeadRow) {// down
                System.out.println("Only valid directions are left, right and up");
                return false;
            }
            if (headRowComparison > newHeadRow) {// up
                System.out.println("Only valid directions are left, right and down");
                return false;
            }
            if (headColumnComparison < newHeadCol) {// right
                System.out.println("Only valid directions are left, up and down");
                return false;
            }
            if (headColumnComparison > newHeadCol) {// left
                System.out.println("Only valid directions are up, right and down");
                return false;
            }
        }
        return true;
    }

    //wrapping around row
    public static int wrapRow(int newHeadRow, char[][] mapArray2D) {
        int maxRow = mapArray2D.length;

        if (newHeadRow < 0) {
            newHeadRow = maxRow - 1; // top to bottom wrap
        } else if (newHeadRow >= maxRow) {
            newHeadRow = 0; // bottom to top wrap
        }
        return newHeadRow;
    }

    //wrapping around column
    public static int wrapCol(int newHeadCol, char[][] mapArray2D) {
        int maxCol = mapArray2D[0].length;

        if (newHeadCol < 0) {
            newHeadCol = maxCol - 1; // went past left edge, wrap to right
        } else if (newHeadCol >= maxCol) {
            newHeadCol = 0; // went past right edge, wrap to left
        }
        return newHeadCol;
    }

    // must change to boolean method to check if it lands on food so it does not remove tail segment
    public static void foodForSnake(char[][] mapArray2D) {

        Random randomFoodLocation = new Random();

        foodRow = randomFoodLocation.nextInt(mapArray2D.length);
        foodCol = randomFoodLocation.nextInt(mapArray2D[0].length);

        HashSet<String> snakeBodyCheckForFood = new HashSet<>();
        try {
            List<String> coordinate = Files.readAllLines(
                    Path.of("src/main/java/org/example/fromtibyan/sprint6/snakegameoop/snakeCoordinates.txt"));
            for (String sCoordinate : coordinate) {
                sCoordinate = sCoordinate.trim();

                String[] parts = sCoordinate.split(",");
                int row = Integer.parseInt(parts[0]);
                int col = Integer.parseInt(parts[1]);

                // snake body coordinates in the HashSet
                snakeBodyCheckForFood.add(row + "," + col);
            }
        } catch (IOException e) {
            System.err.println("ERROR READING FILE: " + e.getMessage());
            throw new RuntimeException(e);
        }

        char food = '+';
        boolean foodExists = false;

        for (char[] row : mapArray2D) { // search for food
            for (char column : row) {
                if (column == food) {
                    foodExists = true;
                    break;
                }
            }
        }

        // only add food to array if there is none
        if (!foodExists) {
            do {
                foodRow = randomFoodLocation.nextInt(mapArray2D.length);
                foodCol = randomFoodLocation.nextInt(mapArray2D[0].length);
            } while (snakeBodyCheckForFood.contains(foodRow + "," + foodCol));

            mapArray2D[foodRow][foodCol] = food;
        } else {
            // food already exists so store food coordinates
            for (int fRow = 0; fRow < mapArray2D.length; fRow++) {
                for (int fCol = 0; fCol < mapArray2D[fRow].length; fCol++) {
                    if (mapArray2D[fRow][fCol] == '+') {
                        foodRow = fRow;
                        foodCol = fCol;
                    }
                }
            }
        }
    }

    // if head is at food
    public static Boolean snakeGrow(int newHeadRow, int newHeadCol) {
        return newHeadRow == foodRow && newHeadCol == foodCol;
    }
}
