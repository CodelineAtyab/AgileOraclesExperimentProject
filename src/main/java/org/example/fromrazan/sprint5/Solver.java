package org.example.fromrazan.sprint5;

import java.util.Stack;

class Solver {

     private EscapeMaze mazObj;
     private Stack<int[]> stack = new Stack<>();

     public Solver(EscapeMaze mazeObj) {
         this.mazObj = mazeObj;
     }


     public boolean solve() throws InterruptedException {
        int[] start = findStart();
        stack.push(start);

        while ( (!stack.isEmpty())) {
            int [] current = stack.peek();
            int r = current[0];
            int c = current[1];

            mazObj.getVisited()[r][c] = true;

            render(r,c);
            Thread.sleep(500);

            if (mazObj.getMaze()[r][c] == 'E'){
                System.out.println("Maze Solved! ");
                printPath();
                return true;
            }

            //moves:down,up,right,down

            if (move(r - 1,c)) continue;
            if (move(r + 1,c)) continue;
            if (move(r , c - 1)) continue;
            if (move(r ,c + 1)) continue;

            //dead end
            stack.pop();
        }
        return false;
    }

    //move
    private boolean move(int r, int c){
        if (isValidMove(r,c)) {
            stack.push(new int [] {r,c});
            return true;
        }
        return false;
    }


    //validation
  private boolean isValidMove(int r, int c){
        return  r >= 0 && c >= 0 &&
                r < mazObj.getSize() && c < mazObj.getSize() &&
                mazObj.getMaze()[r][c] != '1' &&
                !mazObj.getVisited()[r][c];
    }

    //find start

    private int [] findStart() {
        for (int i = 0; i < mazObj.getSize(); i++){
            for (int k = 0; k < mazObj.getSize(); k++){
                if (mazObj.getMaze()[i][k] == '@'){
                    return new int[] {i,k};
                }
            }
        }
        return null;
    }

    //render animation

   private void render(int cr , int cc){
        clearConsole();

        for (int i = 0; i < mazObj.getSize(); i++){
            for (int k = 0; k < mazObj.getSize(); k++){
                if (i == cr && k == cc){
                    System.out.print("@");
                } else {
                    System.out.print(mazObj.getMaze()[i][k] + "  ");
                }
            }
            System.out.println();
        }
    }

    //print path

    private void printPath(){
        System.out.print("path: ");
        for (int [] p : stack ){
            System.out.print("(" + p[0] + " , " + p[1] + ") -> ");
        }
        System.out.println("E");

    }

    //clear console

   private void clearConsole(){
        System.out.print("\033[H\033[2J");
        System.out.flush();
    }
}


