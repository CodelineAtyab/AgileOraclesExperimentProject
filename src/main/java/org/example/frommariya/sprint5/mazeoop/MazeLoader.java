package org.example.frommariya.sprint5.mazeoop;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class MazeLoader {
    public static Maze load(String path) throws Exception {
        List<String> l = new ArrayList<>();
        Scanner scanner = new Scanner(new File(path));
        while (scanner.hasNextLine()) {
            l.add(scanner.nextLine().replace(" ", ""));
        }
        scanner.close();

        int rows = l.size();
        int columns = l.get(0).length();
        char[][] mazeGrid = new char[rows][columns];
        Position startMaze = null;
        Position exitMaze = null;

        for(int i=0;i<rows;i++){
            for(int j=0;j<columns;j++){
                mazeGrid[i][j] = l.get(i).charAt(j);
                if(mazeGrid[i][j]=='@')
                    startMaze = new Position(i,j);
                if(mazeGrid[i][j]=='E')
                    exitMaze = new Position(i,j);
            }
        }
        if(startMaze ==null || exitMaze ==null)
            throw new Exception(" @ or E not Found!");
        return new Maze(mazeGrid,startMaze,exitMaze);

    }
}
