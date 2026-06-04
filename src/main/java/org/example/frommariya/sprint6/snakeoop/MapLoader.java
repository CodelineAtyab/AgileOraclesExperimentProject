package org.example.frommariya.sprint6.snakeoop;

import java.io.*;
import java.nio.file.*;
import java.util.*;


public class MapLoader {
    public static int mapSize=15;

    public static GameMap MapLoader(String mapFilepath) throws IOException{
        Path filePath=Paths.get(mapFilepath);

        if(!Files.exists(filePath)){
            System.out.println("File Not Found");
            return defaultMapCreating();
        }

        String con=Files.readString(filePath);
        String[] line=con.split("\n");

        List<List<Character>> dataGrid=new ArrayList<>();

        for(String lines:line){
            if(lines.trim().isEmpty())
                continue;

            String[] mapCells = lines.trim().split(" ");
            List<Character> rows = new ArrayList<>();
            for(String cells :mapCells){
                if(cells.length()>0){
                rows.add(cells.charAt(0));
            }
        }
            dataGrid.add(rows);
    }
        if(dataGrid.isEmpty()){
            return
                    defaultMapCreating();
        }
        if(dataGrid.size()<mapSize || dataGrid.get(0).size() <mapSize){
            throw new IOException("Map Size Must Be At Least "+mapSize+"X"+mapSize);
        }

        GameMap gameMap =new GameMap(dataGrid.size(),dataGrid.get(0).size());

        //Loading the dataGrid
        for(int x=0;x<dataGrid.size();x++){
            for(int y=0;y<dataGrid.get(x).size();y++){
                gameMap.setC(new Position(x,y),dataGrid.get(x).get(y));
            }
        }
        return gameMap;
}
public static GameMap defaultMapCreating(){
    GameMap gameMap= new GameMap(mapSize,mapSize);

    int rowCenter=mapSize/2;
    int columnStart=(mapSize/2)-2;

    for(int x=0;x<5;x++){
        gameMap.setC(new Position(rowCenter,columnStart+x),'o');
    }
    return gameMap;
    }

    public static Snake getSnakeFromMap(GameMap gameMap){
        Snake snake = new Snake();
        List<Position> snakePosition=gameMap.getSnakePosition();

        if(snakePosition.isEmpty()){
            return
                    snake;
        }

        snakePosition.sort((position1,position2)->Integer.compare(position1.getColumns(),position2.getColumns()));
        snake.initializing(snakePosition);

        return
                snake;
    }

}
