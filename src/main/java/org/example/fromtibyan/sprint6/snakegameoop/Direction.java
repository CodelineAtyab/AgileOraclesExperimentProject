package org.example.fromtibyan.sprint6.snakegameoop;

public class Direction {
    public static void upDirection() {
        int[] currentHead = snakeBody.get(0);// current head location
        int newHeadRow = currentHead[0] - 1; // move up
        int newHeadCol = currentHead[1];// same column
        boolean validDirection = invalidMovementCondition(afterHeadRow, afterHeadColumn, newHeadRow, newHeadCol, headRowComparison, headColumnComparison);
        boolean noBodyCollision = notBodyCollision(newHeadRow, newHeadCol);
        if (validDirection && noBodyCollision) {
            for (int move = 0; move < steps; move++) {
                currentHead = snakeBody.get(0);// current head location
                newHeadRow = currentHead[0] - 1; // move up
                newHeadCol = currentHead[1];// same column
                newHeadRow = wrapRow(newHeadRow, mapArray2D);  // save value if wrapping
                snakeBody.add(0, new int[]{newHeadRow, newHeadCol});// add new head at the front of the list


                if (snakeGrow(newHeadRow, newHeadCol)) {
                    mapArray2D[newHeadRow][newHeadCol] = 'o'; // add new head for movement
                    foodRow = -1;
                    foodCol = -1;
                    foodForSnake(mapArray2D);
                } else {
                    mapArray2D[newHeadRow][newHeadCol] = 'o'; // add new head for movement
                    int[] oldTail = snakeBody.remove(snakeBody.size() - 1);// remove old tail to keep snake length constant
                    mapArray2D[oldTail[0]][oldTail[1]] = '-'; // remove old tail for movement
                }
                displayMap(mapArray2D, snakeBody);
                writeMap(snakeBody, mapArray2D);
                snakeTrackingFile(snakeBody);
            }
        }
    }

    public static void downDirection(){
        int[] currentHead = snakeBody.get(0);
        int newRow = currentHead[0] + 1; // move down
        int newCol = currentHead[1];// same column
        boolean validDirection = invalidMovementCondition(afterHeadRow, afterHeadColumn, newRow, newCol, headRowComparison, headColumnComparison);
        boolean noBodyCollision = notBodyCollision(newRow, newCol);
        if (validDirection && noBodyCollision) {
            for (int move = 0; move < steps; move++) {
                currentHead = snakeBody.get(0);
                newRow = currentHead[0] + 1; // move down
                newCol = currentHead[1];// same column
                newRow = wrapRow(newRow, mapArray2D);
                snakeBody.add(0, new int[]{newRow, newCol});

                if (snakeGrow(newRow, newCol)) {
                    mapArray2D[newRow][newCol] = 'o'; // add new head for movement
                    foodRow = -1;
                    foodCol = -1;
                    foodForSnake(mapArray2D);
                } else {
                    mapArray2D[newRow][newCol] = 'o'; // add new head for movement
                    int[] oldTail = snakeBody.remove(snakeBody.size() - 1);// remove old tail to keep snake length constant
                    mapArray2D[oldTail[0]][oldTail[1]] = '-'; // remove old tail for movement
                }
                displayMap(mapArray2D, snakeBody);
                writeMap(snakeBody, mapArray2D);
                snakeTrackingFile(snakeBody);

            }
        }
    }

    public static void leftDirection(){
        int[] currentHead = snakeBody.get(0);
        int newRow = currentHead[0]; // same row
        int newCol = currentHead[1] - 1;// go left
        boolean validDirection = invalidMovementCondition(afterHeadRow, afterHeadColumn, newRow, newCol, headRowComparison, headColumnComparison);
        boolean noBodyCollision = notBodyCollision(newRow, newCol);
        if (validDirection && noBodyCollision) {
            for (int move = 0; move < steps; move++) {
                currentHead = snakeBody.get(0);
                newRow = currentHead[0]; // same row
                newCol = currentHead[1] - 1;// go left
                newCol = wrapCol(newCol, mapArray2D);
                snakeBody.add(0, new int[]{newRow, newCol});
                if (snakeGrow(newRow, newCol)) {
                    mapArray2D[newRow][newCol] = 'o'; // add new head for movement
                    foodRow = -1;
                    foodCol = -1;
                    foodForSnake(mapArray2D);
                } else {
                    mapArray2D[newRow][newCol] = 'o'; // add new head for movement
                    int[] oldTail = snakeBody.remove(snakeBody.size() - 1);// remove old tail to keep snake length constant
                    mapArray2D[oldTail[0]][oldTail[1]] = '-'; // remove old tail for movement
                }
                displayMap(mapArray2D, snakeBody);
                writeMap(snakeBody, mapArray2D);
                snakeTrackingFile(snakeBody);

            }
        }
    }

    public static void rightDirection(){
        int[] currentHead = snakeBody.get(0);
        int newRow = currentHead[0]; // same row
        int newCol = currentHead[1] + 1;// go right
        boolean validDirection = invalidMovementCondition(afterHeadRow, afterHeadColumn, newRow, newCol, headRowComparison, headColumnComparison);
        boolean noBodyCollision = notBodyCollision(newRow, newCol);
        if (validDirection && noBodyCollision) {
            for (int move = 0; move < steps; move++) {
                currentHead = snakeBody.get(0);
                newRow = currentHead[0]; // same row
                newCol = currentHead[1] + 1;// go right
                newCol = wrapCol(newCol, mapArray2D);
                snakeBody.add(0, new int[]{newRow, newCol});
                if (snakeGrow(newRow, newCol)) {
                    mapArray2D[newRow][newCol] = 'o'; // add new head for movement
                    foodRow = -1;
                    foodCol = -1;
                    foodForSnake(mapArray2D);
                } else {
                    mapArray2D[newRow][newCol] = 'o'; // add new head for movement
                    int[] oldTail = snakeBody.remove(snakeBody.size() - 1);// remove old tail to keep snake length constant
                    mapArray2D[oldTail[0]][oldTail[1]] = '-'; // remove old tail for movement
                }
                displayMap(mapArray2D, snakeBody);
                writeMap(snakeBody, mapArray2D);
                snakeTrackingFile(snakeBody);

            }
        }
    }
}