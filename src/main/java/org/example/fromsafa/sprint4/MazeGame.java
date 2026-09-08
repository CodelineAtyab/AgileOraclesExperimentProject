package org.example.fromsafa.sprint4;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Stack;
//ubdate
public class MazeGame {
    public static void main(String[] args) throws Exception{

        if (args.length == 0){
            System.out.println("Please provide maze file path");
            return;
        }
        Path path=Path.of(args[0]);

        String content=Files.readString(path);
        String[] lines=content.split("\\R");
        char [] [] maze=new char[lines.length][lines[0].length()];
        for (int i=0; i<lines.length; i++){
            maze[i]=lines[i].toCharArray();
        }
        printMaze(maze);

        int[] start = findStart(maze);
        System.out.println("Start at: (" + start[0] + ", " + start[1] + ")");

        boolean reachedExit = isExit(maze, start[0], start[1]);
        System.out.println("is Exit?" + reachedExit);

        System.out.println(isValidMove(maze, start[0], start[1]));
        System.out.println(isValidMove(maze,0,0));

        boolean solved=solveMaze(maze, start[0], start[1]);
        System.out.println("Solved!" + solved);


    }
    public static int[] findStart(char[][] maze) {
        for (int i=0; i<maze.length; i++){
            for (int j=0; j< maze[i].length; j++){
                if (maze[i][j]== '@'){
                    return new int[]{i , j };
                }
            }
        }
        return null;
    }

    public static boolean isExit(char[][] maze, int row, int col){
        return maze[row][col] == 'E';
    }

    public static boolean isValidMove(char[][] maze, int row, int col){
        if (row<0 || col<0 || row>= maze.length || col >= maze[0].length){
            return false;
        }
        if (maze[row][col]=='1' || maze[row][col] == 'V'){
            return false;
        }
        return true;
    }

    public static boolean solveMaze(char[][] maze, int startRow, int startCol){
        Stack<int[]> stack = new Stack<>();
        boolean[][] visited = new boolean[maze.length][maze[0].length];

        stack.push(new int[]{startRow, startCol});

        while (!stack.isEmpty()){
            int[] current=stack.pop();
            int row =current[0];
            int col =current[1];

                if (!isValidMove(maze,row,col)){
                    continue;
            }
                if (visited[row][col]){
                    continue;
                }
                visited[row][col] = true;
            if (maze[row][col] == 'E'){
                return true;
            }


            char temp = maze[row][col];
            maze[row][col] = 'v';

            printMaze(maze);
            System.out.println("-----");

            maze[row][col]=temp;

            stack.push(new int[]{row, col+1});
            stack.push(new int[]{row, col-1});
            stack.push(new int[]{row+1, col});
            stack.push(new int[]{row-1, col});
        }
        return false;
    }

    public static void printMaze(char[][] maze){
        for (int i=0; i< maze.length; i++){
            for (int j=0; j<maze[i].length; j++){
                System.out.print(maze[i][j] + " ");
            }
            System.out.println();
        }
    }
}
