package org.example.fromkawther.sprint5.oopmaze;
public class MazeRenderer {
    public static void render(Maze maze) {
    // delete Terminal
      System.out.print("\033[H\033[2J");
      System.out.flush();

     for (int i = 0; i < maze.getRows(); i++) {
     for (int j = 0; j < maze.getCols(); j++) {
      System.out.print(maze.getCell(i, j) + " ");
        }
        System.out.println();
         }
  try { Thread.sleep(500); } catch (Exception e) {}
  }
   }
