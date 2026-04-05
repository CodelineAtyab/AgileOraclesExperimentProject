package org.example.fromrazan.TestEvaluation;

import java.util.LinkedList;
import java.nio.file.Files;
import java.nio.file.Path;


    public class MoveSnake {
        public static void main(String [] args)
                throws Exception{


            //file directory

            Path mapPath = Path.of("src/main/java/org/example/fromrazan/TestEvaluation/map.txt");

            //read file

            String snake = Files.readString(mapPath);
            //split lines
            String [] linesOfFile = snake.split("\n");
            int lineLength = linesOfFile[0].trim().split(" ").length;

            // char[][] map----> easy for print and audit


            char[][] map = new char[linesOfFile.length][lineLength];


            //reading the text data , fill map

            for (int r = 0; r < linesOfFile.length; r++){
                String[] parts = linesOfFile[r].trim().split(" ");

                for (int c = 0; c < parts.length; c++){
                    map[r][c] = parts[c].charAt(0);
                }
            }

            //print map
            System.out.println(" Start : ");
            PrintMap(map);

            //snake body
            LinkedList<int[]> snakes = new LinkedList<>();
            for (int r = 0; r < map.length; r++){
                for(int c = 0; c < lineLength; c++) {
                    if (map[r][c] == 'o') {
                        snakes.add(new int[]{r, c});


                    }
                }
            }

           //tail ----> head
            //snake movment
            //calculate the new head
            int mr = 0;
            int mc = 1;
            int steps = 1;

            //move snake
            for (int s = 0; s < steps; s++) {

                //get head
                int[] head = snakes.getFirst();

                int newRow = head[0] + mr;
                int newCol = head[1] + mc;

                // direction control
                switch (snake){
                    case "up":
                        newRow++;
                        break;

                    case "down":
                        newRow--;
                        break;

                    case "right":
                        newCol++;
                        break;

                    default:
                        System.out.println("error ");
                        return;


                }
                //add head
                snakes.addFirst(new int[]{newRow, newCol});

                //remove tail
                int[] tail = snakes.removeLast();

                //update map
                map[newRow][newCol] = 'o';
                map[tail[0]][tail[1]] = '-';

            }
                //after move print the map
                System.out.println("after move print the map: ");
            PrintMap(map);
            }

            public static void PrintMap(char[][] map){
            for (int r = 0; r < map.length; r++){

                for (int c = 0; c < map[0].length; c++){
                    System.out.print(map[r][c] + " ");
                }
                System.out.println();
            }
            }

        }







