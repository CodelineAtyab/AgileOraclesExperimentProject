package org.example.fromtibyan.sprint6.snakegameoop;

// main class w/CLI args
public class SnakeGame {
    public static void main(String[] args){
        if (args.length == 0) {
            System.out.println("Please specify the direction");
        } else {
            int steps = 1; // if steps not mentioned then default is 1
            if (args.length > 1) {
                if (!args[1].isEmpty()) {
                    steps = Integer.parseInt(args[1]);
                    if (steps <= 0) {
                        System.out.println("Steps must be a positive value");
                    }
                }
            }

            int[] head = snakeBody.get(0); // get head location
            int headRowComparison = head[0];
            int headColumnComparison = head[1];

            int[] bodyOne = snakeBody.get(1);// body segment after head location
            int afterHeadRow = bodyOne[0];
            int afterHeadColumn = bodyOne[1];


            // moving in the upper direction
            if (args[0].equalsIgnoreCase("up")) {
                Direction.upDirection();
            }

            // moving in the downwards direction
            else if (args[0].equalsIgnoreCase("down")) {
                Direction.downDirection();
            }

            // moving in the left direction
            else if (args[0].equalsIgnoreCase("left")) {
                Direction.leftDirection();
            }

            // moving in the right direction
            else if (args[0].equalsIgnoreCase("right")) {
                Direction.rightDirection();
            } else {
                System.out.println("Direction is not valid. \n Choose Up, Down, Left or Right.");
            }
        }
    }
}
