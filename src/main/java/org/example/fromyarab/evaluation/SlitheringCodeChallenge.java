package org.example.fromyarab.evaluation;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import java.util.Scanner;

public class SlitheringCodeChallenge {
    public static void main(String[] args){

        // check the arguments
        if (args.length != 2 || !isNumeric(args[1]) || (!args[0].equalsIgnoreCase("right") &&
                !args[0].equalsIgnoreCase("left") && !args[0].equalsIgnoreCase("up") &&
                !args[0].equalsIgnoreCase("down"))){
            System.out.println("[usage] \nSlitheringCodeChallenge <direction> <step>");
            System.out.println("<direction> : (String) right, left, up, down");
            System.out.println("<steps>     : (Integer) positive number (default 1)");
            return;
        }

        // prepare data structure and File object
        String sourceFile = "src/main/java/org/example/fromyarab/evaluation/map.txt";
        ArrayList<ArrayList<String>> map = new ArrayList<>();
        ArrayList<int []> snake = new ArrayList<>();
        int[] head = new int[2];
        int[] tail = new int[2];
        File mapFile = new File(sourceFile);

        // try block to access the file and catch exception
        try (Scanner scan = new Scanner(mapFile)) {
            // read the map file and store data in array list
            while (scan.hasNextLine()){
                ArrayList<String> line = new ArrayList<>(Arrays.asList(scan.nextLine().split(" ")));
                map.add(line);
            }

            // discover and save snake's position, and it's head and tail
            for (int i=0; i<map.size(); i++){
                for (int j=0; j<map.get(i).size(); j++){
                    if (map.get(i).get(j).equals("o")){
                        snake.add(new int[]{i, j});
                    }
                }
            }
            head = snake.get(snake.size()-1);
            tail = snake.get(0);



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
    public static void printingMap(ArrayList<ArrayList<String>> map){
        for (int i=0; i<map.size(); i++){
            for (ArrayList<String> row: map){
                for (String ch: row){
                    System.out.print(ch+ " ");
                }
                System.out.println();
            }
        }
    }

    // function to validate the map
    public static boolean validation(ArrayList<ArrayList<String>> map){
        // check map size
        for (int i=0; i<map.size(); i++){
            if (map.size()<15 || map.get(0).size()<15){
                System.out.println("The map violate size constraints <map should be at least 15*15 grid>");
                return false;
            }
        }

        // check map characters
        for (int i=0; i<map.size(); i++){
            for (int j=0; j<map.get(i).size(); j++){
                if (!map.get(i).get(j).equals("o") || !map.get(i).get(j).equals("-")){
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

    // function to check if the string is integer
    public static boolean isNumeric(String str) {
        try {
            Integer.parseInt(str);
            return true;
        } catch(NumberFormatException e){
            return false;
        }
    }
}
