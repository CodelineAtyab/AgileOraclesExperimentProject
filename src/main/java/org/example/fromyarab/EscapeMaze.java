package org.example.fromyarab;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.*;

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
                    // check the characters
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

            //===================================
            // Backtracking
            Stack<int[]> backTrack = new Stack<>();
            int[] currentPosition = new int[2];
            int[] nextPosition = new int[2];
            ArrayList<int[]> visited = new ArrayList<>();
            visited.add(enPointCoordinate);
            currentPosition = enPointCoordinate;
            boolean exit = false;
            while (!exit){
                if (maze.get(currentPosition[0]).get(currentPosition[1]).equals("E") || backTrack.isEmpty()){
                    exit = true;
                }

                if (currentPosition[0] == 0){
                    if (maze.get(currentPosition[0]+1).get(currentPosition[1]).equals("0")){

                    }
                }
                else if (currentPosition[0] == maze.size()-1){
                    if (maze.get(currentPosition[0]-1).get(currentPosition[1]).equals("0")){

                    }
                }
                else if (currentPosition[1] == 0){
                    if (maze.get(currentPosition[0]).get(currentPosition[1]+1).equals("0")){
                        currentPosition[1] = currentPosition[1]+1;
                    }
                }
                else if (currentPosition[1] == maze.get(1).size()-1){
                    if (maze.get(currentPosition[0]).get(currentPosition[1]-1).equals("0")){

                    }
                }
                else {
                    if (!visited.contains(List.of(currentPosition[0]+1,currentPosition[1])) && maze.get(currentPosition[0]+1).get(currentPosition[1]).equals("0")){
                        backTrack.push(currentPosition);
                        visited.add(currentPosition);
                        currentPosition[0] = currentPosition[0]+1;
                    }
                    else if (!visited.contains(List.of(currentPosition[0],currentPosition[1]+1)) && maze.get(currentPosition[0]).get(currentPosition[1]+1).equals("0")){
                        backTrack.push(currentPosition);
                        visited.add(currentPosition);
                        currentPosition[1] = currentPosition[0]+1;
                    }
                    else if (!visited.contains(List.of(currentPosition[0]-1,currentPosition[1])) && maze.get(currentPosition[0]-1).get(currentPosition[1]).equals("0")){
                        backTrack.push(currentPosition);
                        visited.add(currentPosition);
                        currentPosition[0] = currentPosition[0]-1;
                    }
                    else if (!visited.contains(List.of(currentPosition[0],currentPosition[1]-1)) && maze.get(currentPosition[0]).get(currentPosition[1]-1).equals("0")){
                        backTrack.push(currentPosition);
                        visited.add(currentPosition);
                        currentPosition[1] = currentPosition[0]-1;
                    }
                    else{
                        currentPosition = backTrack.pop();
                    }
                }
            }
            if (maze.get(currentPosition[0]).get(currentPosition[1]).equals("E")){
                System.out.println("Maze Solved!");
            }
            else {
                System.out.println("No path found!");
            }

        } catch (FileNotFoundException e) {
            System.out.println(e);
        }
    }
}
