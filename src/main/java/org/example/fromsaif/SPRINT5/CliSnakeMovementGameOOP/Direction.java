package org.example.fromsaif.SPRINT5.CliSnakeMovementGameOOP;

public class Direction {

    public static final String UP = "up";
    public static final String DOWN = "down";
    public static final String LEFT = "left";
    public static final String RIGHT = "right";

    // This variable stores the actual direction value for one Direction object.
    private String value;

    // Creates a Direction object after checking that the input is valid.
    public Direction(String input) {
        this.value = validateDirection(input);
    }

    // Returns the saved direction value.
    public String getValue() {
        return value;
    }

    // Direction Validation
    private String validateDirection(String input) {
        if (input == null) {
            throw new IllegalArgumentException("Direction is required. Please use: up, down, left, right");
        }

        String direction = input.toLowerCase();

        switch (direction) {
            case UP:
                return UP;
            case DOWN:
                return DOWN;
            case LEFT:
                return LEFT;
            case RIGHT:
                return RIGHT;
            default:
                throw new IllegalArgumentException("Invalid direction. Please use: up, down, left, right");
        }
    }
}
