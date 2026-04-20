package org.example.fromtibyan.sprint6.snakegameoop;

import static org.example.fromtibyan.sprint6.snakegameoop.MapLoader.*;
import static org.example.fromtibyan.sprint6.snakegameoop.Position.*;
import static org.example.fromtibyan.sprint6.snakegameoop.Snake.*;
import static org.example.fromtibyan.sprint6.snakegameoop.SnakeGame.*;

public class Direction {
    static int newRow;
    static int newCol;

    public static void upDirection() throws InterruptedException {
        int[] currentHead = snakeBody.get(0);
        newRow = currentHead[0] -1; // move up
        newCol = currentHead[1];// same column
        boolean validDirection = Snake.invalidMovementCondition(afterHeadRow, afterHeadColumn, newRow, newCol, headRowComparison, headColumnComparison);
        boolean noBodyCollision = Snake.notBodyCollision(newRow, newCol);
        if (validDirection && noBodyCollision) {
            for (int move = 0; move < steps; move++) {
                currentHead = snakeBody.get(0);
                newRow = currentHead[0] - 1; // move up
                newCol = currentHead[1];// same column
                newRow = wrapRow(newRow, mapArray2D);
                snakeBody.add(0, new int[]{newRow, newCol});

                if (snakeGrow(newRow, newCol)) {
                    Snake.bodyGrowth();
                } else {
                    Snake.headTailMovement();
                }
                GameRenderer.printMap();
                FilePersistence.writeMap();
                FilePersistence.snakeTrackingFile();

            }
        }
    }

    public static void downDirection() throws InterruptedException {
        int[] currentHead = snakeBody.get(0);
        newRow = currentHead[0] + 1; // move down
        newCol = currentHead[1];// same column
        boolean validDirection = Snake.invalidMovementCondition(afterHeadRow, afterHeadColumn, newRow, newCol, headRowComparison, headColumnComparison);
        boolean noBodyCollision = Snake.notBodyCollision(newRow, newCol);
        if (validDirection && noBodyCollision) {
            for (int move = 0; move < steps; move++) {
                currentHead = snakeBody.get(0);
                newRow = currentHead[0] + 1; // move down
                newCol = currentHead[1];// same column
                newRow = wrapRow(newRow, mapArray2D);
                snakeBody.add(0, new int[]{newRow, newCol});

                if (snakeGrow(newRow, newCol)) {
                    Snake.bodyGrowth();
                } else {
                    Snake.headTailMovement();
                }
                GameRenderer.printMap();
                FilePersistence.writeMap();
                FilePersistence.snakeTrackingFile();

            }
        }
    }

    public static void leftDirection() throws InterruptedException {
        int[] currentHead = snakeBody.get(0);
        newRow = currentHead[0]; // same row
        newCol = currentHead[1] - 1;// go left
        boolean validDirection = Snake.invalidMovementCondition(afterHeadRow, afterHeadColumn, newRow, newCol, headRowComparison, headColumnComparison);
        boolean noBodyCollision = Snake.notBodyCollision(newRow, newCol);
        if (validDirection && noBodyCollision) {
            for (int move = 0; move < steps; move++) {
                currentHead = snakeBody.get(0);
                newRow = currentHead[0]; // same row
                newCol = currentHead[1] - 1;// go left
                newCol = wrapCol(newCol, mapArray2D);
                snakeBody.add(0, new int[]{newRow, newCol});
                if (snakeGrow(newRow, newCol)) {
                    Snake.bodyGrowth();
                } else {
                    Snake.headTailMovement();
                }
                GameRenderer.printMap();
                FilePersistence.writeMap();
                FilePersistence.snakeTrackingFile();

            }
        }
    }

    public static void rightDirection() throws InterruptedException {
        int[] currentHead = snakeBody.get(0);
        newRow = currentHead[0]; // same row
        newCol = currentHead[1] + 1;// go right
        boolean validDirection = Snake.invalidMovementCondition(afterHeadRow, afterHeadColumn, newRow, newCol, headRowComparison, headColumnComparison);
        boolean noBodyCollision = Snake.notBodyCollision(newRow, newCol);
        if (validDirection && noBodyCollision) {
            for (int move = 0; move < steps; move++) {
                currentHead = snakeBody.get(0);
                newRow = currentHead[0]; // same row
                newCol = currentHead[1] + 1;// go right
                newCol = wrapCol(newCol, mapArray2D);
                snakeBody.add(0, new int[]{newRow, newCol});
                if (snakeGrow(newRow, newCol)) {
                    Snake.bodyGrowth();
                } else {
                    Snake.headTailMovement();
                }
                GameRenderer.printMap();
                FilePersistence.writeMap();
                FilePersistence.snakeTrackingFile();

            }
        }
    }
}