package org.example.frommariya.sprint6.snakeoop;

public enum Direction {
    LEFT,RIGHT,UP,DOWN;



    public static Direction fromString(String direction){

        switch (direction.toLowerCase()){
            case "left":
                return LEFT;
            case "right":
                return RIGHT;
            case "up":
                return UP;
            case "down":
                return DOWN;
            default:
                return null;
        }
    }

    public Direction getOpposite(){
        switch (this){
            case LEFT :
                return RIGHT;
            case RIGHT:
                return LEFT;
            case UP:
                return DOWN;
            case DOWN:
                return UP;
            default:
                return this;
        }
    }
}
