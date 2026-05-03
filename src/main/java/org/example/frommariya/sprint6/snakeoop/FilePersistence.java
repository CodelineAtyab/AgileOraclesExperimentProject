package org.example.frommariya.sprint6.snakeoop;

import java.io.*;
import java.nio.file.*;

public class FilePersistence {
    public static void mapSave(GameMap gameMap,String mapFilePath) throws IOException{
        StringBuilder con=new StringBuilder();
        char[][] mapGrid = gameMap.getGrid();


        for(int x=0;x<gameMap.getRows();x++){
            for(int y=0;y<gameMap.getColumns();y++){
                con.append(mapGrid[x][y]);
                if(y<gameMap.getColumns()-1){
                    con.append(" ");
                }
            }
            if(x<gameMap.getRows()-1){
                con.append("\n");
            }
        }
        Path snakePath=Paths.get(mapFilePath);

        if(snakePath.getParent()!=null){
            Files.createDirectories(snakePath.getParent());
        }
        Files.writeString(snakePath,con.toString());

    }

    public static GameMap MapLoader(String mapFilepath) throws IOException{
        return
                MapLoader.MapLoader(mapFilepath);
    }

}
