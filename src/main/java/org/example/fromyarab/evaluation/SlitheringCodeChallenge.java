package org.example.fromyarab.evaluation;

import java.io.*;
import java.lang.reflect.Array;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class SlitheringCodeChallenge {
    public static void main(String[] args){

        // check the arguments
        String direction = "";
        int steps = 1;
        if (args.length <= 2){
            if (args.length == 1 && (args[0].equalsIgnoreCase("right") ||
                    args[0].equalsIgnoreCase("left") || args[0].equalsIgnoreCase("up") ||
                    args[0].equalsIgnoreCase("down"))){
                direction = args[0].toLowerCase();
            }
            else if (args.length == 2 && isNumeric(args[1]) && Integer.parseInt(args[1]) > 0 && (args[0].equalsIgnoreCase("right") ||
                    args[0].equalsIgnoreCase("left") || args[0].equalsIgnoreCase("up") ||
                    args[0].equalsIgnoreCase("down"))){
                direction = args[0].toLowerCase();
                steps = Integer.parseInt(args[1]);
            }
            else {
                usage();
                return;
            }
        }
        else {
            usage();
            return;
        }

        // prepare data structure and File object
        String sourceFile = "src/main/java/org/example/fromyarab/evaluation/map.txt";
        String headPositionFile = "src/main/java/org/example/fromyarab/evaluation/headPosition.txt";
        ArrayList<ArrayList<String>> map = new ArrayList<>();
        ArrayList<int []> snake = new ArrayList<>();
        int[] head = new int[2];
        int[] tail = new int[2];
        File mapFile = new File(sourceFile);
        File headFile = new File(headPositionFile);

        // try block to access the file and catch exception
        try (Scanner scan = new Scanner(mapFile)) {
            // read the map file and store data in array list
            while (scan.hasNextLine()){
                ArrayList<String> line = new ArrayList<>(Arrays.asList(scan.nextLine().split(" ")));
                map.add(line);
            }

            // check to validate the map
            if (!validateMap(map)){
                return;
            }

            // discover and save snake's position, and it's head
            Scanner scanHead = new Scanner(headFile);
            ArrayList<String> line = new ArrayList<>(Arrays.asList(scanHead.nextLine().split(" ")));
            head[0] = Integer.parseInt(line.get(0));
            head[1] = Integer.parseInt(line.get(1));
            line = new ArrayList<>(Arrays.asList(scanHead.nextLine().split(" ")));
            tail[0] = Integer.parseInt(line.get(0));
            tail[1] = Integer.parseInt(line.get(1));
            System.out.println(Arrays.toString(head));
            System.out.println(Arrays.toString(tail));

            for (int i=0; i<map.size(); i++){
                for (int j=0; j<map.get(i).size(); j++){
                    if (map.get(i).get(j).equals("o")){
                        snake.add(new int[] {i,j});
                    }
                }
            }

            printingMap(map, snake);
            // move the snake
            if (direction.equals("right") && validateMove(snake, direction, head)){
                for (int i=0; i<steps; i++){
                    head[1] = head[1]+1;
                    snake.add(new int[] {head[0], head[1]});
                    snake.remove(0);
                    printingMap(map, snake);
                }
                System.out.println("Current status is: ");
                printingMap(map, snake);
            }
            else if (direction.equals("left") && validateMove(snake, direction, head)){
                for (int i=0; i<steps; i++){
                    head[1] = head[1]-1;
                    snake.add(new int[] {head[0], head[1]});
                    snake.remove(0);
                    printingMap(map, snake);
                }
                System.out.println("Current status is: ");
                printingMap(map, snake);
            }
            else if (direction.equals("up") && validateMove(snake, direction, head)){
                for (int i=0; i<steps; i++){
                    head[0] = head[0]-1;
                    snake.add(new int[] {head[0], head[1]});
                    snake.remove(0);
                    printingMap(map, snake);
                }
                System.out.println("Current status is: ");
                printingMap(map, snake);
            }
            else if (direction.equals("down") && validateMove(snake, direction, head)){
                for (int i=0; i<steps; i++){
                    head[0] = head[0]+1;
                    snake.add(new int[] {head[0], head[1]});
                    snake.remove(0);
                    printingMap(map, snake);
                }
                System.out.println("Current status is: ");
                printingMap(map, snake);
            }



        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }

    // function to write into source file
    public static void writeIntoFile(ArrayList<ArrayList<String>> map, String sourceFile) throws IOException {
        PrintWriter writer = new PrintWriter(sourceFile, StandardCharsets.UTF_8);
        for (ArrayList<String> row: map){
            for (String ch: row){
                writer.print(ch+" ");
            }
            writer.println();
        }
        writer.close();
    }

    // function to print current map state
    public static void printingMap(ArrayList<ArrayList<String>> map, ArrayList<int[]> snake){
        for (int i=0; i<map.size(); i++){
            for (int j=0; j<map.get(i).size(); j++){
                if (contains(snake, new int[] {i,j})){
                    System.out.print("o ");
                }
                else {
                    System.out.print("- ");
                }
            }
            System.out.println();
        }
    }

    // function to validate the map
    public static boolean validateMap(ArrayList<ArrayList<String>> map){
        // check map size
        for (int i=0; i<map.size(); i++){
            if (map.size()<15 || map.get(i).size()<15){
                System.out.println("The map violate size constraints <map should be at least 15*15 grid>");
                return false;
            }
        }

        // check map characters
        for (int i=0; i<map.size(); i++){
            for (int j=0; j<map.get(i).size(); j++){
                if (!map.get(i).get(j).equals("o") && !map.get(i).get(j).equals("-")){
                    System.out.println("The map violate character constraints <map should contains only (-) and (o)>");
                    return false;
                }
            }
        }

        // check snake length
        int snakeLength = 0;
        for (int i=0; i<map.size(); i++){
            for (int j=0; j<map.get(i).size(); j++){
                if (map.get(i).get(j).equals("o")){
                    snakeLength++;
                }
            }
        }
        if (snakeLength < 5){
            System.out.println("The map violate snake length constraints <map should contains snake at least of length 5>");
            return false;
        }

        // the map passed all checks
        return true;
    }

    // function to validate moving direction
    public static boolean validateMove (ArrayList<int []> snake, String direction, int[] head){

        if (direction.equals("right") && contains(snake, new int[] {head[0], head[1]+1})){
            System.out.println("The only open directions are left, up and down");
            return false;
        }
        if (direction.equals("left") && contains(snake, new int[] {head[0], head[1]-1})){
            System.out.println("The only open directions are right, up and down");
            return false;
        }
        if (direction.equals("up") && contains(snake, new int[] {head[0]-1, head[1]})){
            System.out.println("The only open directions are right, left and down");
            return false;
        }
        if (direction.equals("down") && contains(snake, new int[] {head[0]+1, head[1]})){
            System.out.println("The only open directions are right, left and up");
            return false;
        }
        return true;
    }

    // function to display the usage of the program
    public static void usage(){
        System.out.println("[usage] \nSlitheringCodeChallenge <direction> <step>");
        System.out.println("<direction> : (String) right, left, up, down");
        System.out.println("<steps>     : (Integer) positive number <not 0> (default 1)");
    }

    // function to check if the string is integer
    public static boolean isNumeric(String str) {
        try {
            Integer.parseInt(str);
            return true;
        } catch(NumberFormatException e){
            return false;
        }
    }

    // function to check if array contains the element
    public static boolean contains(ArrayList<int[]> arr, int[] element){
        for (int[] el : arr) {
            if (Arrays.equals(el, element)) {
                return true;
            }
        }
        return false;
    }
}
