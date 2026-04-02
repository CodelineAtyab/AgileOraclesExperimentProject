package org.example.fromabdullahhosni;

import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.Deque;
import java.util.LinkedList;
import java.util.Queue;

public class SnakeGame {
    public static void main(String[] args) {

        //--------------------------------------------
        // STEP 1 - TAKING INPUT .CMD COMMAND LINE .
        //--------------------------------------------
        try {
            if (args.length > 0) {
                for (String input : args) {
                    System.out.println(input);
                }
            }
        } catch (Exception e) {
            System.out.println("Invalid Direction");
        }

        //--------------------------------------------
        // STEP 2 - Loading 2d Array Game board .
        //--------------------------------------------
        Path boardPath = null;
        char array2d[][] = null;

        try {
            boardPath = Path.of(SnakeGame.class.getResource("./data/board.txt").toURI());
        }
        catch (URISyntaxException e) {
            System.out.println("Cannot load Game");
            throw new RuntimeException(e);
        }

        try {
            String pathContent = Files.readString(boardPath);
            String[] splitContent = pathContent.split("\n");
            int SplitLength = splitContent[0].length();

            array2d = new char[splitContent.length][SplitLength];  // Load it in 2D Array or Array of Arrays

            for (int row = 0; row < splitContent.length; row++) {
                char[] currRow = splitContent[row].toCharArray();
                // System.out.printf("%s\n", linesOfFile[row]);

                for (int col = 0; col < currRow.length; col++) {
                    array2d[row][col] = currRow[col];
                }
            }

        }
        catch (Exception e){
            System.out.println("Cannot Initelize Game board");
            throw new RuntimeException(e);
        }

        //print the board rows and columns
        for (int row = 0 ;row<array2d.length ;row++){
            for (int col = 0 ;col< array2d[0].length ;col++){
                System.out.printf("%s", array2d[row][col]); //2d array is printing
            }
            System.out.println();
        }

        //--------------------------------------------
        // STEP 3 - Building the snake in game.
        //--------------------------------------------
        Deque<int[]> snakeBody = new LinkedList<>();       //Queue to represent the snake

//        snakeBody.add(new int[]{7,5});
//        snakeBody.add(new int[]{7,6});
//        snakeBody.add(new int[]{7,8});
//        snakeBody.add(new int[]{7,9});
        for (int row = 0 ;row<array2d.length;row++){
            for (int col = 0; col< array2d[0].length; col++){
                if (array2d[row][col] == 'o'){
                    snakeBody.add(new int[]{row,col});  //Enqueing/saving all snake body in {snakebody} queue.
                }
            }
        }

        System.out.println(" Starting Game now!");
//        for (int[] p : snakeBody){
//            System.out.println(Arrays.toString(p) + " ");
//
//        }

        //--------------------------------------------
        // STEP 4 - snake movement direction .
        //--------------------------------------------
        int rowDirection = 0;
        int colDirection = 0;       //declaring the direction delta {up,down, left ,right )
        String direction = "left";
//                args[0].toLowerCase();

        //direction delta
        if (direction.equals("up")){
            rowDirection = -1;      //go up of the col
        }
        if (direction.equals("down")){
            rowDirection = 1;       //go DOWN int the row
        }
        if (direction.equals("left")){
            colDirection = -1;      //go LEFT of the col
        }
        if (direction.equals("right")){
            colDirection = 1;       //go right of the col
        }

        //the move
        int[] currentHead = snakeBody.peekLast();   //head element on queue. {0,1} == {row, col}
        System.out.println("here is the peek" + Arrays.toString(currentHead));
        int movementRow = currentHead[0] + rowDirection;
        int movementCol = currentHead[1] + colDirection;


        int[] newhead = new int[]{movementRow,movementCol};
        snakeBody.add(newhead);
        array2d[newhead[0]][newhead[1]] = 'o';
        System.out.printf("moved the snake ont the position {%s}\n", newhead);

        int[] oldtail = snakeBody.poll();
        array2d[oldtail[0]][oldtail[1]] = '-';
        System.out.printf("removed the snake tail {%s}", Arrays.toString(oldtail));

        System.out.println("new snake");
        for (int[] p : snakeBody){
            System.out.print(Arrays.toString(p) + " ");
            System.out.println();
        }

//        array2d[oldtail[0]][oldtail[1]] = '-';
//
//        array2d[newhead[0]][newhead[1]] = 'o';


        //print the board rows and columns
        for (int row = 0 ;row<array2d.length ;row++){
            for (int col = 0 ;col< array2d[0].length ;col++){
                System.out.printf("%s", array2d[row][col]); //2d array is printing
            }
            System.out.println();
        }




//        // declaring snake {head , tail }position
//        // position is having {x,y}
//        int rowPosition = 7; //row is presenting x.
//        int[] colPosition = {5,6,7,8,9}; //col is presenting y.
//
//        Queue<int[]> queue = new LinkedList<>();

//        for (int col: colPosition) {
//            queue.add(new int[]{rowPosition, col});
//            System.out.println(queue);
        }


}
