package org.example.fromkawther.NoAi;
import java.io.File;
import java.util.ArrayList;
import java .util.Scanner;

public class Escape {

  static char[][] maze;
  static boolean[][] visited;
  static ArrayList<int[]>path =new ArrayList<>();


  static int rows;
  static int column;

  static int startRow;
  static int startColumn;

  public static  void main (String[] args){

    if (args.length ==0){
      System.out.println("pls provide maza path of file");
      return;
    }
    try {
      File file = new File(args[0]);
      Scanner sc = new Scanner(file);

       rows = 0;
       while (sc.hasNextLine()){
         sc.nextLine();
         rows++;

       }
       sc = new Scanner(file);
       maze = new char[rows][];


       int k=0;

       while (sc.hasNextLine()){
         String line =sc.nextLine();
         maze[k] = line.toCharArray();

         if (line.contains("@")){

  startRow = k;
  startColumn = line.indexOf("@");

         }
         k++;

       }
       sc.close();
       column = maze[0].length;
       visited = new boolean[rows][column];

       solvemaze();

    }

    catch (Exception e){
      System.out.println(" error found maze file :"+ e.getMessage());
    }
  }
 public static void solvemaze() {

  path.add(new int[]{startRow , startColumn});
    visited[startRow] [startColumn] = true;
    boolean solved = false;

    while (!path.isEmpty()){
       int [] current = path.get(path.size() -1);
       int f = current[0];
       int m = current[1];
       drawMaze( f,m);

       if (maze[f][m] =='E') {
         solved= true;
         break;
       }
       boolean moved = false;
       if (move(f - 1,m)) moved = true;
       else if (move (f + 1,m)) moved = true ;
       else if (move (f , m - 1)) moved = true ;
       else if (move (f ,m +1)) moved = true ;
       if (!moved){
         path.remove(path.size() -1);

       }
    }
    if (solved ) {
      System.out.println("solved maze");
      printPath();

    } else {
      System.out.println (" no foun path");
    }
  }
  public static boolean move (int r , int c){

if ( r < 0 || c < 0 || r >= rows || c >= column  ) return false ;
if (visited [r][c]) return false ;
if (maze [r][c] == '1')
  return false;

visited [r][c] = true;
path.add(new int [] {r,c});
return true;
}
public static void drawMaze (int r , int c ){
for (int i =0; i <20 ;i++)
  System.out.println();

for (int i =0; i <rows;i++){
  for (int j =0 ;j <column;j++){
    if (i==r && j==c )
      System.out.print("@");
    else
      System.out.print(maze[i][j]);

        }
System.out.println();
  }}
public static void printPath(){
    System.out.println("path :");
    for (int[] p : path){
        System.out.println("(" + (p[0] +1 ) + ","+ (p[1] +1) +")");

        }}}





