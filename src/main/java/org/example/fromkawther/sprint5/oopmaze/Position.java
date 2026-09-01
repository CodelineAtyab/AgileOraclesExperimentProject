package org.example.fromkawther.sprint5.oopmaze;

public class Position {
  public int row;
  public int col;

 public Position(int r, int c) {
 this.row = r;
 this.col = c;
    }
  public String getInfo() {
        return "(" + row + "," + col + ")";
    }
}