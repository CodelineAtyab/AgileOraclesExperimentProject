package org.example.fromalharithalkindi.s5.CLISnakeMovementGameOOP;

public class Direction {
    public static final String UP = "up";
    public static final String DOWN = "down";
    public static final String LEFT = "left";
    public static final String RIGHT = "right";

    public static String[] values() {
        return new String[]{UP, DOWN, LEFT, RIGHT};
    }
}