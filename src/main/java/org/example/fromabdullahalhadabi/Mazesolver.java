package org.example.fromabdullahalhadabi;
import java.io.File;
import java.util.Scanner;
import java.util.Stack;

public class Mazesolver {
    static char[][] maze;
    static boolean[][] visited;
    static int  row;
    static int col;


    public static void main(String[] args) {
        loadMaze("./src/main/java/org/example/fromabdullahalhadabi/Maze.txt");
        if(maze==null){
            System.out.println("Maze is not there");
            return;
        }
        Stack<int[]> stack = new Stack<>();
        int[] start = findstart();
        if(start==null){
            System.out.println("Maze is invalid");
        }


        stack.push(start);

        while (!stack.isEmpty()) {

            int[] current = stack.peek();
            int row = current[0];
            int col = current[1];

            printMaze(row,col);

            if (maze[row][col] == 'E') {
                System.out.println("Maze found");
                printPath(stack);
                return;
            }


            visited[row][col] = true;

            if (canMove(row,col+1)) stack.push(new int[]{row,col+1});
            else if (canMove(row+1,col))stack.push(new int[] {row+1,col});
            else if (canMove(row,col-1))stack.push(new int[]{row,col-1});
            else if (canMove(row-1,col)) stack.push(new int[]{row-1,col});


        }
        System.out.println("Path not found");

    }
    static void loadMaze(String path) {
        try {
            Scanner s = new Scanner(new File(path));
            maze = new char[50][50];
            row = 0;

            while (s.hasNextLine()) {
                String line = s.nextLine();
                col = line.length();

                for (int i = 0; i < col; i++) {
                    maze[row][i] = line.charAt(i);
                }
                row++;

            }

            visited = new boolean[row][col];
            s.close();

        } catch (Exception e) {
            System.out.println("Error loading Maze file");
        }
    }

    static int[] findstart() {
        for (int i = 0; i < row; i++) {
            for (int j = 0; j < col; j++) {
                if (maze[i][j] == '@') {
                    return new int[]{i,j} ;
                }
            }
        }

        return null;

    }

    static boolean canMove(int row, int col) {
        if (row < 0 || row >= row || col < 0 || col >= col)
        if (maze[row][col] == '1')   return false;
        if(visited[row][col]) return false;
            return true;

    }
    static void printMaze(int cr, int cc) {
        System.out.print("Maze ------");
        for (int i = 0; i < cr; i++) {
            for (int j = 0; j < cc; j++) {

                if(i==cr && j==cc)
                    System.out.print(" @ ");
                else
                    System.out.print(" " + maze[i][j]);
            }
            System.out.println();
        }
        try {
            Thread.sleep(300);
        }catch (Exception e){}
    }

    static void printPath(Stack<int[]> stack) {
        System.out.print("Path ----");


        for(int[] pos: stack) {
            System.out.print("(" +pos[0]+","+pos[1]+")");
        }
    }

}
