package org.example.frommariya.sprint4;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.Stack;

public class EscapeMaze {
    public static int columns,rows;
    public static point start,stop;
    public static char[][] escapeMaze;


    static class point{
        int row,column;
        point(int row,int column) {this.row = row;
                                    this.column = column;}
        public String toString() {
            return "{" + row + "," +column + "}";
        }
        public boolean equals(Object object){
            point p = (point) object;
            return row == p.row && column == p.column;
        }
    }


    public static void main(String[] args){
        if(args.length==0){
            System.out.println("Maza path not exists");
            return;
        }


        try {
            mazeloading(args[0]);
            solvingMaze();
        }catch (Exception e){
            System.out.println("Error"  + e.getMessage());
        }
    }

    public static void mazeloading(String pathFile) throws Exception{
        List<String> line = new ArrayList<>();

        Scanner sca = new Scanner(new File(pathFile));

        while (sca.hasNextLine()) line.add(sca.nextLine());
        sca.close();


        rows =line.size();
        columns =line.get(0).length();

        escapeMaze = new char[rows][columns];


        for (int x=0; x< rows; x++){
            for (int z=0;z<columns;z++){
                escapeMaze[x][z] = line.get(x).charAt(z);
                if(escapeMaze[x][z] =='@') start=new point(x,z);
                if(escapeMaze[x][z] =='E') stop=new point(x,z);
            }
        }

        if (start==null || stop==null) throw new Exception("no '@' or 'E' !!");

    }


    public static void solvingMaze() throws InterruptedException{
        Stack<point> pathTrack = new Stack<>();

        boolean[][] visit = new boolean[rows][columns];


        point curr=start;

        pathTrack.push(curr);

        visit[curr.row][curr.column]=true;

        int step=0;

        while (!pathTrack.isEmpty()){
            curr=pathTrack.peek();
            render(curr,step++);

            //Reached the stop:
            if(curr.equals(stop)){
                System.out.println("The Escape Maze solved successfully with steps: " +step);
                return;
            }

            point nextMove = NextMoveSearch(curr,visit);
            if(nextMove !=null){
                visit[nextMove.row][nextMove.column]=true;
                pathTrack.push(nextMove);
            } else {
                System.out.println("Back Tracking..");
                pathTrack.pop();
            }
            Thread.sleep(1000); //Delay
        }
        System.out.println("Path Not Found!!");
    }


    public static point NextMoveSearch(point p , boolean[][] visit){
        int[] rowChange ={1,0,-1,0};
        int[] columnChange ={0,1,0,-1};

        for(int x=0; x<4;x++){
            int nRow = p.row + rowChange[x];
            int nColumn = p.column + columnChange[x];


            if(nRow >=0 && nRow <rows && nColumn >=0 && nColumn <columns && !visit[nRow][nColumn]){
                if(escapeMaze[nRow][nColumn]=='0' || escapeMaze[nRow][nColumn]=='E'){
                    return new point(nRow,nColumn);
                }
            }
        } return null;
    }


    public static void render(point curr, int step){
        //screen clearing
        System.out.print("\033[H\033[2J");
        System.out.flush();


        System.out.println("The Steps are: "+step+" The Current Position is: "+curr);

        for(int x=0;x<rows;x++){
            for(int c=0;c<columns;c++){
                if(x==curr.row && c==curr.column)
                    System.out.print("@");
                else
                    System.out.print(escapeMaze[x][c]);
            }
            System.out.println();
        }
    }
}
