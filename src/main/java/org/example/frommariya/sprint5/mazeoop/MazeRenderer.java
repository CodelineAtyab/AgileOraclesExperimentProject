package org.example.frommariya.sprint5.mazeoop;

public class MazeRenderer {
    public static void renderer(Maze maze, Position c,int frames){
        System.out.print("\033[H\033[2J"); //Clear the console
        System.out.flush();
        System.out.println("Maze Frame: "+frames+ "Current Position is: "+c);


        for(int x=0;x<maze.getRows();x++){
            for(int y=0;y<maze.getColumns();y++){
                if(x== c.rows && y ==c.columns) {
                    System.out.print("@ ");
                }
                else
                {
                    System.out.print(maze.getCellPosition(x,y) + " ");
                }
            }
            System.out.println();
        }
    }

    public void render(org.example.fromalharith.oopmaze.Maze maze, org.example.fromalharith.oopmaze.Position current) {
    }

    public void delay() {

    }
}
