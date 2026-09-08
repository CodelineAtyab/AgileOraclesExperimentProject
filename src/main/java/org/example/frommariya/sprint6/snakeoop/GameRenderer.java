package org.example.frommariya.sprint6.snakeoop;

public class GameRenderer {
    public static void renderer(GameMap gameMap){
        System.out.println();
        System.out.println("Snake Map:");
        System.out.println();

        char[][] mapGrid= gameMap.getGrid();
        for(int x=0;x<gameMap.getRows();x++){
            StringBuilder rows=new StringBuilder();
            for(int y=0;y<gameMap.getColumns();y++){
                rows.append(mapGrid[x][y]);
                if(y<gameMap.getColumns()-1){
                    rows.append("");
                }
            }
            System.out.println(rows.toString());
        }
        System.out.println();
    }

    public static void rendererWithInfo(GameMap gameMap,Snake snake){
        renderer(gameMap);
        System.out.println("Snake Head Position: "+snake.getSnakeHead());
        System.out.println("Snake Tail Position: "+snake.getSnakeTail());
        System.out.println("Snake Length: "+snake.getSnakeLength());
        System.out.println();
    }
}
