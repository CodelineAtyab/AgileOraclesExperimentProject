package org.example.fromrazan;

import java.util.ArrayList;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.LinkedList;

public class Snacke {
    public static void main(String[] args)
            throws Exception {


        Path mapPath = Path.of("src/main/java/org/example/fromrazan/TestEvaluation/map.txt");
        //read file
        String snacke = Files.readString(mapPath);

        //split lines

        String[] linesOfFile = snacke.split("\n");
        int lineLength = linesOfFile[0].trim().split(" ").length;

        // char[][] map----> easy for print and audit
        char[][] map = new char[linesOfFile.length][lineLength];

        //reading the text data , fill map

        for (int r = 0; r < linesOfFile.length; r++) {
            String[] parts = linesOfFile[r].trim().split(" ");

            for (int c = 0; c < parts.length; c++) {
                map[r][c] = parts[c].charAt(0);
            }
        }
        //print map
        System.out.println(" Start : ");
        PrintMap(map);

        //snake body
        ArrayList<int[]> snackes = new ArrayList<>();
        for (int r = 0; r < map.length; r++) {
            for (int c = 0; c < lineLength; c++) {
                if (map[r][c] == 'o') {
                    snackes.add(new int[]{r, c});

                }
            }
        }
        //tail ----> head
        //snake movment
        //calculate the new head
        int mr = 0;
        int mc = 1;
        int steps = 1;


        for (int s = 0; s < steps; s++) {
            int[] head = snackes.get(snackes.size() -1);

            int newRow = head[0] + mr;
            int newCol = head[1] + mc;

            //direction control

            String direction = "up";

            if (direction.equals("up")) {
                newRow--;
            } else if (direction.equals("down")) {
                newRow++;
            } else if (direction.equals("right")) {
                newCol++;
            } else {
                System.out.println("invalid");
                return;
            }
            //add head
            snackes.add(new int[]{newRow, newCol});

            //remove tail
            int[] tail = snackes.remove(0);
            map[tail[0]][tail[1]] = '-';

            //update map
            map[newRow][newCol] = 'o';
            map[tail[0]][tail[1]] = '-';

        }

        //after move print the map
        System.out.println("after move print the map: ");
        PrintMap(map);
    }

    public static void PrintMap(char[][] map) {
        for (int r = 0; r < map.length; r++) {

            for (int c = 0; c < map[0].length; c++) {
                System.out.print(map[r][c] + " ");
            }
            System.out.println();

        }
    }
}
