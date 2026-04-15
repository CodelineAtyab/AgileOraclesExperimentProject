package org.example.fromyarab.escapeTheMazeOOPEdition;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class MazeLoader {
    ArrayList<ArrayList<String>> mazeGrid = new ArrayList<>();
    private final String mazeFilePath;

    public MazeLoader(String mazeFilePath){
        this.mazeFilePath = mazeFilePath;
    }

    public ArrayList<ArrayList<String>> loadMaze(){
        File mazeFile = new File(mazeFilePath);

        try (Scanner scan = new Scanner(mazeFile)){
            // read the maze file and store data in array list
            while (scan.hasNextLine()) {
                ArrayList<String> line = new ArrayList<>(Arrays.asList(scan.nextLine().split("")));
                mazeGrid.add(line);
            }
        } catch (FileNotFoundException e) {
            throw new RuntimeException(e);
        }
        // validate maze and return it
        boolean validMaze = validateMaze(mazeGrid);
        if (validMaze){
            return mazeGrid;
        }
        else {
            return null;
        }
    }

    // function to validate the maze
    public boolean validateMaze(ArrayList<ArrayList<String>> maze){
        // check the validity of the maze data
        int enPointCounter = 0;
        int exPointCounter = 0;
        ArrayList<Integer> enPointCoordinate = new ArrayList<>();
        ArrayList<Integer> exPointCoordinate = new ArrayList<>();
        for (int i=0; i<maze.size(); i++){
            for (int j=0; j<maze.get(i).size(); j++){
                // check the characters
                if (!maze.get(i).get(j).equals("1") && !maze.get(i).get(j).equals("0") && !maze.get(i).get(j).equals("@") && !maze.get(i).get(j).equals("E")){
                    System.out.printf("Maze Not Valid!! -> Characters restriction violation...(Character Position: <i>%d <j>%d)\n",i,j);
                    return false;
                }

                // check corners of the maze
                if ((i==0 || i==maze.size()-1) && (j==0 || j==maze.get(i).size()-1) && (maze.get(i).get(j).equals("@") || maze.get(i).get(j).equals("E"))){
                    System.out.printf("Maze Not Valid!! -> Border restriction violation...(Corner Position: <i>%d <j>%d)\n",i,j);
                    return false;
                }
                // check borders
                if (i==0 || j==0 || i==maze.size()-1 || j==maze.get(i).size()-1){
                    if (maze.get(i).get(j).equals("@")){
                        enPointCounter += 1;
                        enPointCoordinate.add(i);
                        enPointCoordinate.add(j);
                    }
                    else if (maze.get(i).get(j).equals("E")){
                        exPointCounter += 1;
                        exPointCoordinate.add(i);
                        exPointCoordinate.add(j);
                    }
                    else if (!maze.get(i).get(j).equals("1")){
                        System.out.printf("Maze Not Valid!! -> Border restriction violation...(Border Position: <i>%d <j>%d)\n",i,j);
                        return false;
                    }
                }
            }
        }
        // check number of entry and exit points
        if (enPointCounter != 1 || exPointCounter != 1){
            System.out.println("Maze Not Valid!! -> # Entry/Exit point restriction violation...");
            return false;
        }

        // check coordinates of entry and exit points
        if (enPointCoordinate.get(0).equals(exPointCoordinate.get(0)) || enPointCoordinate.get(1).equals(exPointCoordinate.get(1))) {
            System.out.println("Maze Not Valid!! -> Entry/Exit point coordinate restriction violation...");
            return false;
        }

        // the maze passed all tests
        return true;
    }

}
