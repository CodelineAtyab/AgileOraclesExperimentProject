package org.example.fromtibyan.sprint3;
import java.io.IOException;
import java.nio.file.*;
import java.util.*;

public class EscapeTheMaze {
    public static void main(String[] args) throws IOException, InterruptedException {

        Path mazeFile = Path.of("src/main/java/org/example/fromtibyan/sprint3/maze.txt");
        try {
            ArrayList<String> mazeArray = (ArrayList<String>) Files.readAllLines(mazeFile);

            // convert to 2d array
            char[][] mazeArray2D = new char[10][10];
            for (int i = 0; i < mazeArray.size(); i++) {
                mazeArray2D[i] = mazeArray.get(i).toCharArray();
            }
            if (onlyOneSymbol(mazeArray2D) && allBordersOnes(mazeArray2D)){
                int startRow = 0;
                int startColumn = 0;
                for (int row = 0; row<10;row++ ){
                    for(int column = 0 ; column<10; column++){
                        if (mazeArray2D[row][column] == '@') {
                            startRow = row;
                            startColumn = column;
                        }
                    }
                }
                Position start = new Position(startRow,startColumn);

                if (symbolMovement(mazeArray2D,start)){
                    System.out.println("Maze Solved!");
                }else{
                    System.out.println("No path found.");
                }

            }else {
                System.out.println("Border conditions are not met.");
            }


        } catch (IOException e) {
            System.err.println("Error reading the maze file: " + e.getMessage()); // misreading the file
        }



    }

    public static boolean symbolMovement(char[][] mazeArray2D, Position start) throws InterruptedException {
        boolean[][] visitedCell = new boolean[10][10];
        Stack<Position> mazeStack = new Stack<>();
        mazeStack.push(start);

        int endRow = 0;
        int endColumn = 0;
        for (int row = 0; row<10;row++ ){
            for(int column = 0 ; column<10; column++){
                if (mazeArray2D[row][column] == 'E') {
                    endRow = row;
                    endColumn = column;
                }
            }
        }

        while (!mazeStack.empty()){
            Position current = mazeStack.pop();
            int r = current.row;
            int c = current.col;


            // move @ between the border & wall
            if (r<0 || c<0||r>=10||c>=10|| mazeArray2D[r][c] == '1' || visitedCell[r][c]){
                continue;
            }
            visitedCell[r][c]= true; // to not visit again
            mazeArray2D[r][c] = '@';
            for(char[] maze: mazeArray2D){
                System.out.println(maze);
            }

            for (int space = 0; space<4; space ++){
                System.out.println( );
            }

            mazeStack.push(new Position(r+1,c));//down
            mazeStack.push(new Position(r-1,c));//up
            mazeStack.push(new Position(r,c+1));//right
            mazeStack.push(new Position(r,c-1));//left
            mazeArray2D[r][c] = '0';
            if (r == endRow && c == endColumn){
                return true;
            }
            Thread.sleep(1000);
        }
        return false;
    }




    public static boolean onlyOneSymbol(char[][] mazeArray2D){
        //checking if there is one @ and one E
        int atCounter = 0;
        int eCounter = 0;

        for (int row = 0; row<10;row++ ){
            for(int column = 0 ; column<10; column++){
                if (mazeArray2D[row][column] == '@') {
                    atCounter++;
                    if (atCounter >1){
                        return false;
                    }
                }
                if (mazeArray2D[row][column] == 'E') {
                    eCounter++;
                    if (eCounter >1){
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public static boolean allBordersOnes(char[][] mazeArray2D){
        // maze borders condition of all 1s
        int index ;
        for (index = 0; index < 10; index++) {
            char columnCellFirst = mazeArray2D[0][index];
            char columnCellLast = mazeArray2D[9][index];
            char rowCellFirst = mazeArray2D[index][0];
            char rowCellLast = mazeArray2D[index][9];
            if (columnCellFirst == '1' || columnCellFirst == '@' || columnCellFirst == 'E') {
                if (columnCellLast == '1' || columnCellLast == '@' || columnCellLast == 'E') {
                    if (rowCellFirst == '1' || rowCellFirst == '@' || rowCellFirst == 'E') {
                        if (rowCellLast == '1' || rowCellLast == '@' || rowCellLast == 'E') {
                            return true;
                        }
                    }
                }

            }
        }return false;
    }

}

