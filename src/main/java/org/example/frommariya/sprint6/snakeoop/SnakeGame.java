package org.example.frommariya.sprint6.snakeoop;


import java.util.List;

public class SnakeGame {
    public static String Map_File="src/main/java/org/example/frommariya/sprint6/snakeoop/map.txt";

    public GameMap gameMap;
    public Snake snake;

    public SnakeGame(){

    }

    public void loadCreateGame() throws Exception{
        try{
            gameMap=FilePersistence.MapLoader(Map_File);
            snake=MapLoader.getSnakeFromMap(gameMap);

            if(snake.getSnakeLength()==0){
                System.out.println("Not Found Snake. Initializing new Game Map...");
                InitGame();
            }else{
                System.out.println("Map Game Loaded Successfully");
                System.out.println("Snake Length: "+snake.getSnakeLength());
            }
        }catch (Exception e){
            System.out.println("Error Loading the Map"+e.getMessage());
            System.out.println("Making New Game Map");
            InitGame();
        }
    }

    public void InitGame(){
        gameMap=new GameMap(15,15);
        snake=new Snake();
        snake.initializeCenter(gameMap);
        gameSaving();
        System.out.println("New Map Game Initialized..!");
    }

    public boolean moveExecution(Direction direction, int snakeSteps){
        for(int x=0;x<snakeSteps;x++){
            boolean worked=snake.movement(direction,gameMap);
            if(!worked){
                availableDirections();
                return
                        false;
            }
        }
        gameSaving();
        return
                true;
    }

    public void availableDirections(){
        List<Direction> validMovements=snake.getValidMovement(gameMap);

        if(validMovements.isEmpty()){
            System.out.println("No Open Directions Available!GAME OVER");
        }else if(validMovements.size()==1){
            System.out.println("The Only Open Directions are: "+validMovements.get(0));
        } else{
            StringBuilder mapMessage=new StringBuilder("The Only spen Directions are: ");
            for(int x=0;x<validMovements.size();x++){
                if(x<0){
                    if(x==validMovements.size()-1){
                        mapMessage.append(" and ");
                    }else{
                        mapMessage.append(" , ");
                    }
                }
                mapMessage.append(validMovements.get(x));
            }
            System.out.println(mapMessage.toString());
        }

    }

    public void gameSaving(){
        try{
            FilePersistence.mapSave(gameMap,Map_File);
            System.out.println("The Gave Has Been Saved Successfully");
        }catch (Exception e){
            System.out.println("Error While Saving the Map: "+e.getMessage());
        }

    }


    public void showGame(){
        GameRenderer.rendererWithInfo(gameMap,snake);

    }

    public static void main(String[] args){
        System.out.println("------- Snake Movement Game (OOP) -------");
        System.out.println();

        if(args.length==0){
            System.out.println("java SnakeGame <Direction> Snakesteps\n Directions are: up,down,left,right\n Steps should be positive integer");
            return;
        }

        Direction direction =Direction.fromString(args[0]);
        if(direction==null){
            System.out.println("Invalid Direction\n Valid Directions are: up,down,left,right");
            System.out.println("");
            return;
        }

        int snakeSteps=1;
        if(args.length>=2){
            try{
                snakeSteps =Integer.parseInt(args[1]);
                if(snakeSteps<=0){
                    System.out.println("Steps should be positive Integer");
                    return;
                }
            }catch (NumberFormatException e){
                System.out.println("Snake Steps must be Valid Integer");
                return;
            }
        }

        if(args.length>2){
            System.out.println("Error: Extra Arguments, Two Arguments needed");
        }
        try {
            SnakeGame snakeGame =new SnakeGame();
            snakeGame.loadCreateGame();

            System.out.println("Snake Bode Before Movement");
            snakeGame.showGame();

            System.out.println("Direction: "+direction+"\nSteps: "+snakeSteps);
            System.out.println("");


            if(snakeGame.moveExecution(direction,snakeSteps)){
                System.out.println("Successful Movement of the Snake");
                System.out.println("Snake Body After Movement: ");
                snakeGame.showGame();
            }else{
                System.out.println("Not Moving");
                System.out.println("Snake body:");
                snakeGame.showGame();
            }
        }catch (Exception e){

        }

    }
}
