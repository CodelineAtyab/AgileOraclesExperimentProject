package org.example.fromyarab;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

public class EscapeMaze {
    public static void main(String[] args){

        // prepare data structure and File object
        ArrayList<ArrayList<String>> maze = new ArrayList<>();
        File mazeFile = new File("C:\\Users\\Ya'Rab Al-Mamari\\Desktop\\trainning\\AgileOraclesExperimentProject\\src\\main\\java\\org\\example\\fromyarab\\mazeFile.txt");

        // try block to access the file and catch exception
        try (Scanner scan = new Scanner(mazeFile)) {

            // read the maze file and store data in array list
            while (scan.hasNextLine()){
                ArrayList<String> line = new ArrayList<>(Arrays.asList(scan.nextLine().split("")));
                maze.add(line);
            }

            // check the validity of the maze data
            int enPointCounter = 0;
            int exPointCounter = 0;
            int[] enPointCoordinate = new int[2];
            int[] exPointCoordinate = new int[2];
            for (int i=0; i<maze.size(); i++){
                for (int j=0; j<maze.get(i).size(); j++){
                    if (!maze.get(i).get(j).equals("1") && !maze.get(i).get(j).equals("0") && !maze.get(i).get(j).equals("@") && !maze.get(i).get(j).equals("E")){
                        System.out.println("Maze Not Valid!! -> Characters restriction violation...");
                    }

                    // check corners of the maze
                    if ((i==0 || i==maze.size()-1) && (j==0 || j==maze.get(i).size()-1) && (maze.get(i).get(j).equals("@") || maze.get(i).get(j).equals("E"))){
                        System.out.printf("Maze Not Valid!! -> Border restriction violation...(Corner: <i>%d <j>%d)\n",i,j);
                    }
                    // check borders
                    if (i==0 || j==0 || i==maze.size()-1 || j==maze.get(i).size()-1){
                        if (maze.get(i).get(j).equals("@")){
                            enPointCounter += 1;
                            enPointCoordinate[0] = i;
                            enPointCoordinate[1] = j;
                        }
                        else if (maze.get(i).get(j).equals("E")){
                            exPointCounter += 1;
                            exPointCoordinate[0] = i;
                            exPointCoordinate[1] = j;
                        }
                        else if (!maze.get(i).get(j).equals("1")){
                            System.out.println("Maze Not Valid!! -> Border restriction violation...");
                        }
                    }
                }
            }
            // check number of entry and exit points
            if (enPointCounter != 1 || exPointCounter != 1){
                System.out.println("Maze Not Valid!! -> # Entry/Exit point violation...");
            }

            // check coordinates of entry and exit points
            if (enPointCoordinate[0] == exPointCoordinate[0] || enPointCoordinate[1] == exPointCoordinate[1]) {
                System.out.println("Maze Not Valid!! -> Entry/Exit point coordinate violation...");
            }



        } catch (FileNotFoundException e) {
            System.out.println(e);
        }
    }
}
