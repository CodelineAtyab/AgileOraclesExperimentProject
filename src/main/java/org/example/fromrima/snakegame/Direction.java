package org.example.fromrima.snakegame;

public class Direction {
    public static int directionX = 0;
    public static int directionY = 1;

    public static void setDirection(String direction) {
        switch (direction) {
            case "up":
                directionX = -1;
                directionY = 0;
                break;
            case "down":
                directionX = 1;
                directionY = 0;
                break;
            case "left":
                directionX = 0;
                directionY = -1;
                break;
            case "right":
                directionX = 0;
                directionY = 1;
                break;
        }
    }
}