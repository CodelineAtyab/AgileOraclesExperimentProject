package org.example.fromyarab.evaluation;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class SlitheringCodeChallenge {
    public static void main(String[] args) throws IOException {

        // prepare data structure and File objects
        String sourceFile = "src/main/java/org/example/fromyarab/evaluation/map.txt";
        String snakeBodyPath = "src/main/java/org/example/fromyarab/evaluation/snakeBody.txt";
        ArrayList<ArrayList<String>> map = new ArrayList<>();
        ArrayList<int []> snake = new ArrayList<>();
        int[] head;
        File mapFile = new File(sourceFile);
        File snakeFile = new File(snakeBodyPath);

        // check the arguments
        String direction ;
        int steps = 1;
        if (args.length <= 2){
            if (args.length == 1 && args[0].equalsIgnoreCase("reset")){
                System.out.println("Reset Done!");
                reset(sourceFile, snakeBodyPath);
                return;
            }
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

        // try block to access the files and catch exception
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

            // read snake's body info, and it's head and it's tail
            Scanner scanSnake = new Scanner(snakeFile);
            if (scanSnake.hasNextLine()){
                while (scanSnake.hasNextLine()){
                    String[] point = scanSnake.nextLine().split(" ");
                    snake.add(new int[] {Integer.parseInt(point[0]), Integer.parseInt(point[1])});
                }
            }
            else {
                for (int i=0; i<map.size(); i++){
                    for (int j=0; j<map.get(i).size(); j++){
                        if (map.get(i).get(j).equals("o")){
                            snake.add(new int[] {i,j});
                        }
                    }
                }
            }
            head = snake.get(snake.size()-1);

            // move the snake
            if (validateMove(snake, direction, head, steps)){
                if (direction.equals("right")){
                    for (int i=0; i<steps; i++){
                        head = new int[] {head[0], (head[1]+1) % map.get(0).size()};
                        snake.add(new int[] {head[0], head[1]});
                        snake.remove(0);
                    }
                }
                else if (direction.equals("left")){
                    for (int i=0; i<steps; i++){
                        head = new int[] {head[0], Math.abs(head[1]-1) % map.get(0).size()};
                        snake.add(new int[] {head[0], head[1]});
                        snake.remove(0);
                        System.out.println(Arrays.toString(head));
                    }
                }
                else if (direction.equals("up")){
                    for (int i=0; i<steps; i++){
                        head = new int[] {((head[0]-1) % map.size() + map.size()) % map.size(), head[1]};
                        snake.add(new int[] {head[0], head[1]});
                        snake.remove(0);
                        System.out.println(Arrays.toString(head));

                    }
                }
                else if (direction.equals("down")){
                    for (int i=0; i<steps; i++){
                        head = new int[] {((head[0]+1) % map.size() + map.size()) % map.size(), head[1]};
                        snake.add(new int[] {head[0], head[1]});
                        snake.remove(0);
                    }
                }
                // printing the new map status
                System.out.println("Current status is: ");
                printingMap(map, snake);

                // write the new map status and snake body positon into files
                writeIntoFile(updateMap(map, snake), sourceFile);
                writeSnakeInfo(snake, snakeBodyPath);

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

    // function to write snake body position
    public static void writeSnakeInfo(ArrayList<int[]> snake, String snakeBodyPath) throws IOException {
        PrintWriter writer = new PrintWriter(snakeBodyPath, StandardCharsets.UTF_8);
        for (int[] row: snake){
            for (int ch: row){
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
        for (ArrayList<String> stringArrayList : map) {
            for (String s : stringArrayList) {
                if (!s.equals("o") && !s.equals("-")) {
                    System.out.println("The map violate character constraints <map should contains only (-) and (o)>");
                    return false;
                }
            }
        }

        // check snake length
        int snakeLength = 0;
        for (ArrayList<String> strings : map) {
            for (String string : strings) {
                if (string.equals("o")) {
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

    // function to prepare invalid movement message
    public static String getVMessage(ArrayList<int []> snake, String direction, int[] head){
        boolean right = !contains(snake, new int[] {head[0], head[1]+1});
        boolean left  = !contains(snake, new int[] {head[0], head[1]-1});
        boolean up    = !contains(snake, new int[] {head[0]-1, head[1]});
        boolean down  = !contains(snake, new int[] {head[0]+1, head[1]});
        String vMessage = "You hit the snake body..\nThe only open directions are: ";
        if (!right && !left && !up && !down){
            return "You are stuck!!\nType reset to reset the game..";
        }
        if (right && !direction.equals("right")){
            vMessage = vMessage + "(right) ";
        }
        if (left && !direction.equals("left")){
            vMessage = vMessage + "(left) ";
        }
        if (up && !direction.equals("up")){
            vMessage = vMessage + "(up) ";
        }
        if (down && !direction.equals("down")){
            vMessage = vMessage + "(down) ";
        }
        return vMessage;
    }

    // function to validate moving direction
    public static boolean validateMove (ArrayList<int []> snake, String direction, int[] head, int steps){
        ArrayList<int[]> tempSnake = new ArrayList<>(snake);
        int validStips = 0;
        String vMessage = getVMessage(snake, direction, head);

        if (direction.equals("right")){
            for (int i=1; i<=steps; i++){
                if (!contains(tempSnake, new int[] {head[0], head[1]+i})){
                    validStips++;
                }
                else {
                    break;
                }
                tempSnake.remove(0);
            }
            if (validStips != steps){
                if (validStips != 0){
                    System.out.printf("Available # of steps on RIGHT direction is: %d steps\n", validStips);
                }
                System.out.println(vMessage);
                return false;
            }
        }
        if (direction.equals("left")){
            for (int i=1; i<=steps; i++){
                if (!contains(tempSnake, new int[] {head[0], head[1]-i})){
                    validStips++;
                }
                else {
                    break;
                }
                tempSnake.remove(0);
            }
            if (validStips != steps){
                if (validStips != 0){
                    System.out.printf("Available # of steps on LEFT direction is: %d steps\n", validStips);
                }
                System.out.println(vMessage);
                return false;
            }
        }
        if (direction.equals("up")){
            for (int i=1; i<=steps; i++){
                if (!contains(tempSnake, new int[] {head[0]-i, head[1]})){
                    validStips++;
                }
                else {
                    break;
                }
                tempSnake.remove(0);
            }
            if (validStips != steps){
                if (validStips != 0){
                    System.out.printf("Available # of steps on UP direction is: %d steps\n", validStips);
                }
                System.out.println(vMessage);
                return false;
            }
        }
        if (direction.equals("down")){
            for (int i=1; i<=steps; i++){
                if (!contains(tempSnake, new int[] {head[0]+i, head[1]})){
                    validStips++;
                }
                else {
                    break;
                }
                tempSnake.remove(0);
            }
            if (validStips != steps){
                if (validStips != 0){
                    System.out.printf("Available # of steps on DOWN direction is: %d steps\n", validStips);
                }
                System.out.println(vMessage);
                return false;
            }
        }
        return true;
    }

    // function to display the usage of the program
    public static void usage(){
        System.out.println("[usage] \nSlitheringCodeChallenge.java <direction> <step>");
        System.out.println("<direction> : (String) right, left, up, down");
        System.out.println("<steps>     : (Integer) positive number <not 0> (default 1)");
        System.out.println();
        System.out.println("[reset] \nSlitheringCodeChallenge.java reset");
        System.out.println("default     : grid size 15*15");
        System.out.println("            : snake length 9");
        System.out.println("            : snake position center");
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

    // function to update the map
    public static ArrayList<ArrayList<String>> updateMap(ArrayList<ArrayList<String>> map, ArrayList<int[]> snake){
        for (int i=0; i<map.size(); i++){
            for (int j=0; j<map.get(i).size(); j++){
                if (contains(snake, new int[] {i,j})){
                    map.get(i).set(j,"o");
                }
                else {
                    map.get(i).set(j,"-");
                }
            }
        }
        return map;
    }

    // function to reset the game
    // default setting (grid size 15*15 - snake length 9 - snake position center)
    public static void reset(String sourceFile, String snakeBodyPath) throws IOException {
        PrintWriter mapWriter = new PrintWriter(sourceFile, StandardCharsets.UTF_8);
        for (int i=0; i<15; i++){
            for (int j=0; j<15; j++){
                if (i==7 && j>2 && j<12){
                    mapWriter.print("o ");
                }
                else {
                    mapWriter.print("- ");
                }
            }
            mapWriter.println();
        }
        mapWriter.close();

        PrintWriter snakeWriter = new PrintWriter(snakeBodyPath, StandardCharsets.UTF_8);
        snakeWriter.print("");
        snakeWriter.close();
    }
}
