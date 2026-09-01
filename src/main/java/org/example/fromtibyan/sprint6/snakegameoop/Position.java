package org.example.fromtibyan.sprint6.snakegameoop;

import static org.example.fromtibyan.sprint6.snakegameoop.Snake.snakeBody;

public class Position {
    static int headRowComparison;
    static  int headColumnComparison;
    static int afterHeadRow;
    static int afterHeadColumn;

    public static void headLocation(){
        int[] head = snakeBody.get(0); // get head location
        headRowComparison = head[0];
        headColumnComparison = head[1];
    }

    public static void afterHeadSegmentLocation(){
        int[] bodyOne = snakeBody.get(1);// body segment after head location
        afterHeadRow = bodyOne[0];
        afterHeadColumn = bodyOne[1];
    }
}
