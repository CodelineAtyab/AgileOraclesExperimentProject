package org.example.fromyarab;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.*;
import java.util.concurrent.TimeUnit;

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
            ArrayList<Integer> enPointCoordinate = new ArrayList<>();
            ArrayList<Integer> exPointCoordinate = new ArrayList<>();
            for (int i=0; i<maze.size(); i++){
                for (int j=0; j<maze.get(i).size(); j++){
                    // check the characters
                    if (!maze.get(i).get(j).equals("1") && !maze.get(i).get(j).equals("0") && !maze.get(i).get(j).equals("@") && !maze.get(i).get(j).equals("E")){
                        System.out.printf("Maze Not Valid!! -> Characters restriction violation...(Character Position: <i>%d <j>%d)\n",i,j);
                        return;
                    }

                    // check corners of the maze
                    if ((i==0 || i==maze.size()-1) && (j==0 || j==maze.get(i).size()-1) && (maze.get(i).get(j).equals("@") || maze.get(i).get(j).equals("E"))){
                        System.out.printf("Maze Not Valid!! -> Border restriction violation...(Corner Position: <i>%d <j>%d)\n",i,j);
                        return;
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
                            return;
                        }
                    }
                }
            }
            // check number of entry and exit points
            if (enPointCounter != 1 || exPointCounter != 1){
                System.out.println("Maze Not Valid!! -> # Entry/Exit point restriction violation...");
                return;
            }

            // check coordinates of entry and exit points
            if (enPointCoordinate.get(0).equals(exPointCoordinate.get(0)) || enPointCoordinate.get(1).equals(exPointCoordinate.get(1))) {
                System.out.println("Maze Not Valid!! -> Entry/Exit point coordinate restriction violation...");
                return;
            }

            //==================================================================
            //==================================================================
            // Backtracking
            Stack<ArrayList<Integer>> backTrack = new Stack<>();
            int steps = 0;
            int[] currentPosition = new int[2];
            ArrayList<ArrayList<Integer>> visited = new ArrayList<>();
            visited.add(enPointCoordinate);
            currentPosition[0] = enPointCoordinate.get(0);
            currentPosition[1] = enPointCoordinate.get(1);
            boolean exit = false;
            while (!exit){
                // start from upper border
                if (currentPosition[0] == 0){
                    if (maze.get(currentPosition[0]+1).get(currentPosition[1]).equals("0")){
                        printMaze(maze, currentPosition, steps);
                        System.out.println("\nNext Move: Down");
                        backTrack.push(new ArrayList<>(List.of(currentPosition[0],currentPosition[1])));
                        visited.add(new ArrayList<>(List.of(currentPosition[0],currentPosition[1])));
                        currentPosition[0] = currentPosition[0]+1;
                    }
                }
                // start from lower border
                else if (currentPosition[0] == maze.size()-1){
                    if (maze.get(currentPosition[0]-1).get(currentPosition[1]).equals("0")){
                        printMaze(maze, currentPosition, steps);
                        System.out.println("\nNext Move: Up");
                        backTrack.push(new ArrayList<>(List.of(currentPosition[0],currentPosition[1])));
                        visited.add(new ArrayList<>(List.of(currentPosition[0],currentPosition[1])));
                        currentPosition[0] = currentPosition[0]-1;
                    }
                }
                // start from left side border
                else if (currentPosition[1] == 0){
                    if (maze.get(currentPosition[0]).get(currentPosition[1]+1).equals("0")){
                        printMaze(maze, currentPosition, steps);
                        System.out.println("\nNext Move: Right");
                        backTrack.push(new ArrayList<>(List.of(currentPosition[0],currentPosition[1])));
                        visited.add(new ArrayList<>(List.of(currentPosition[0],currentPosition[1])));
                        currentPosition[1] = currentPosition[1]+1;
                    }
                }
                // start from right side border
                else if (currentPosition[1] == maze.get(1).size()-1){
                    if (maze.get(currentPosition[0]).get(currentPosition[1]-1).equals("0")){
                        printMaze(maze, currentPosition, steps);
                        System.out.println("\nNext Move: Left");
                        backTrack.push(new ArrayList<>(List.of(currentPosition[0],currentPosition[1])));
                        visited.add(new ArrayList<>(List.of(currentPosition[0],currentPosition[1])));
                        currentPosition[1] = currentPosition[1]-1;
                    }
                }
                // move within the maze
                else {
                    // move down
                    if (!visited.contains(List.of(currentPosition[0]+1,currentPosition[1])) && (maze.get(currentPosition[0]+1).get(currentPosition[1]).equals("0") || maze.get(currentPosition[0]+1).get(currentPosition[1]).equals("E"))){
                        printMaze(maze, currentPosition, steps);
                        System.out.println("\nNext Move: Down");
                        backTrack.push(new ArrayList<>(List.of(currentPosition[0],currentPosition[1])));
                        visited.add(new ArrayList<>(List.of(currentPosition[0],currentPosition[1])));
                        currentPosition[0] = currentPosition[0]+1;
                    }
                    // move right
                    else if (!visited.contains(List.of(currentPosition[0],currentPosition[1]+1)) && (maze.get(currentPosition[0]).get(currentPosition[1]+1).equals("0") || maze.get(currentPosition[0]).get(currentPosition[1]+1).equals("E"))){
                        printMaze(maze, currentPosition, steps);
                        System.out.println("\nNext Move: Right");
                        backTrack.push(new ArrayList<>(List.of(currentPosition[0],currentPosition[1])));
                        visited.add(new ArrayList<>(List.of(currentPosition[0],currentPosition[1])));
                        currentPosition[1] = currentPosition[1]+1;
                    }
                    // move up
                    else if (!visited.contains(List.of(currentPosition[0]-1,currentPosition[1])) && (maze.get(currentPosition[0]-1).get(currentPosition[1]).equals("0") || maze.get(currentPosition[0]-1).get(currentPosition[1]).equals("E"))){
                        printMaze(maze, currentPosition, steps);
                        System.out.println("\nNext Move: Up");
                        backTrack.push(new ArrayList<>(List.of(currentPosition[0],currentPosition[1])));
                        visited.add(new ArrayList<>(List.of(currentPosition[0],currentPosition[1])));
                        currentPosition[0] = currentPosition[0]-1;
                    }
                    // move left
                    else if (!visited.contains(List.of(currentPosition[0],currentPosition[1]-1)) && (maze.get(currentPosition[0]).get(currentPosition[1]-1).equals("0") || maze.get(currentPosition[0]).get(currentPosition[1]-1).equals("E"))){
                        printMaze(maze, currentPosition, steps);
                        System.out.println("\nNext Move: Left");
                        backTrack.push(new ArrayList<>(List.of(currentPosition[0],currentPosition[1])));
                        visited.add(new ArrayList<>(List.of(currentPosition[0],currentPosition[1])));
                        currentPosition[1] = currentPosition[1]-1;
                    }
                    // move backword
                    else{
                        printMaze(maze, currentPosition, steps);
                        System.out.println("\nPop");
                        ArrayList<Integer> next = backTrack.pop();
                        visited.add(new ArrayList<>(List.of(currentPosition[0],currentPosition[1])));
                        currentPosition[0] = next.get(0);
                        currentPosition[1] = next.get(1);
                    }
                }
                // exit backtrack functionality
                if (maze.get(currentPosition[0]).get(currentPosition[1]).equals("E") || backTrack.isEmpty()){
                    exit = true;
                }
                // count number of steps
                steps ++;
                // time delay
                TimeUnit.SECONDS.sleep(1);

            }
            // check if maze solved
            if (maze.get(currentPosition[0]).get(currentPosition[1]).equals("E")){
                printMaze(maze, currentPosition, steps);
                System.out.println("\nCongratulation >> Maze Solved!");
            }
            else {
                printMaze(maze, currentPosition, steps);
                System.out.println("\nNo path found!");
            }

        } catch (FileNotFoundException e) {
            System.out.println(e);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }


    }

    // function to print current maze status
    public static void printMaze(ArrayList<ArrayList<String>> maze, int[] currentPosition, int steps){
        for (int i=0; i<50; i++){
            System.out.println();
        }
        System.out.println("Number of Steps: " + steps);
        System.out.println("Current Position is: "+ Arrays.toString(currentPosition));
        for (int i=0; i<maze.size(); i++){
            for (int j=0; j<maze.get(i).size(); j++){
                if (currentPosition[0] == i && currentPosition[1] == j){
                    System.out.print("@");
                }
                else {
                    System.out.print(maze.get(i).get(j));
                }
            }
            System.out.println();
        }
    }
}
