package org.example.fromalharithalkindi.s4;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class S4EscapeTheMaze {
        public static void main(String[] args) {
            //  << solving task 86ex1htew - Escape the Maze >>

            File myObj = new File("C:\\Users\\Codeline\\IdeaProjects\\AgileOraclesExperimentProject\\src\\main\\java\\org\\example\\fromalharithalkindi\\s4\\maze.txt");

            // try-with-resources: Scanner will be closed automatically
            try (Scanner myReader = new Scanner(myObj)) {
                while (myReader.hasNextLine()) {
                    String data = myReader.nextLine();
                    System.out.println(data);
                }
            } catch (FileNotFoundException e) {
                System.out.println("An error occurred.");
                e.printStackTrace();
            }


    }
}
