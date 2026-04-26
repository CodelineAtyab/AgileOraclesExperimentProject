package org.example.fromtibyan.sprint6.snakegameoop;


import static org.example.fromtibyan.sprint6.snakegameoop.MapLoader.mapArray;
import static org.example.fromtibyan.sprint6.snakegameoop.MapLoader.mapArray2D;

public class GameMap {
    public static void store2dMap(){
        mapArray2D = new char[mapArray.size()][mapArray.get(0).length()];// convert to 2d array w/row and column length
        for (int i = 0; i < mapArray.size(); i++) {
            mapArray2D[i] = mapArray.get(i).toCharArray();// convert to char 2d array
        }
    }
}
