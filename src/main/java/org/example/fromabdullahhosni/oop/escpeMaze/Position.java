package org.example.fromabdullahhosni.oop.escpeMaze;




public class Position {
    // ─────────────────────────────────────────
    // STEP 2 — DECLARE START/END POSITION .
    // ─────────────────────────────────────────
    MazeLoader array2d = new MazeLoader();

    public int[] getStartExitPosition(int[][] array2d){
        int startrow = 0;
        int startColumn = 0;    //start

        int exitRow = 0;
        int exitcolum = 0;      //exit


        for (int row = 0; row < array2d.length; row++) {
            for (int col = 0; col < array2d[row].length; col++) {
                if (array2d[row][col] == '@') {
                    startrow = row;                 // found start row
                    startColumn = col;                 // found start col
                }
                if (array2d[row][col] == 'E') {
                    exitRow = row;                  // found exit row
                    exitcolum = col;                  // found exit col
                }
            }
        }

        //handle error
        if (startrow == -1 || exitRow == -1) {
            System.out.println("Error: maze must have '@' and 'E'");
            return new int[] {};
        }
        return new int[] {startrow,startColumn,exitRow,exitcolum};
        }
    }




