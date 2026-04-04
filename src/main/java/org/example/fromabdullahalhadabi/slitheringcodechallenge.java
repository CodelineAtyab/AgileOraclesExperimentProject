package org.example.fromabdullahalhadabi;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.io.IOException;
import java.io.FileNotFoundException;
import java.util.Scanner;
import java.util.LinkedList;
import java.util.List;
import java.util.ArrayList;
import java.util.Set;
import java.util.HashSet;
import java.util.Map;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Arrays;

public class slitheringcodechallenge {

    static final String Map_FILE = "C:\\Users\\OMEN\\OneDrive\\Desktop\\AgileOraclesExperimentProject\\src\\main\\java\\org\\example\\fromabdullahalhadabi\\map.txt";
    static final char EMPTY = '-';
    static final char SNAKE = 'o';

    static final int MIN_SIZE = 15; // map size
    static final int[] DR = {-1, 1, 0, 0};
    static final int[] Dc = {0, 0, -1, 1};
    static final String[] DIR_NAME = {"up", "down", "left", "right"};


    public static void main(String[] args) {

        if (args.length < 1 || args.length > 2) {
            System.out.print("Usage- java Movesnake < direction> [steps]");
            System.out.println("Example - java Movesnake right 3");
            return;
        }
        String direction = args[0].toLowerCase();
        if (!direction.equals("up") && !direction.equals("down") && !direction.equals("right") && !direction.equals("left")) {
            System.out.print("Invalid direction : " + args[0]);
            System.out.print("Valid direction : up, down, right, left");
            return;
        }

        int steps = 1;
        if (args.length == 2) {
            try {
                steps = Integer.parseInt(args[1]);
                if (steps <= 0) {
                    System.out.print("Invalid steps must be positive number : 1 or more");
                    return;
                }
            } catch (NumberFormatException e) {
                System.out.print(args[1] + "  in not vaild number");
                return;
            }
        }
        char[][] grid = loadMap();
        if (grid == null)
            return;


        LinkedList<int[]> snake = bulidSnake(grid);

        if (snake == null || snake.isEmpty()) {
            System.out.println("No snake found");
            return;
        }
        int dirIndex = getDirectionIndex(direction);

        for (int step = 0; step < steps; step++) {
            int[] head = snake.getLast();

            int newRow = head[0] + DR[dirIndex];
            int newCol = head[1] + Dc[dirIndex];
            int totalRows = grid.length;
            int totalCOLS = grid[0].length;

            if (newRow < 0 || newRow >= totalRows || newCol < 0 || newCol >= totalCOLS) {
                System.out.println("can't move there is wall" + direction);
                showOpenDirections(snake, totalRows, totalCOLS);
                return;
            }

            int[] currenTail = snake.getFirst();
            Set<String> bodyPositions = new HashSet<>();
            for (int[] segment : snake) {
                bodyPositions.add(segment[0] + "," + segment[1]);
            }

            bodyPositions.remove(currenTail[0] + "," + currenTail[1]);

            if (bodyPositions.contains(newRow + "," + newCol)) {
                System.out.println("can not move" + direction + "the snake hit it self");
                showOpenDirections(snake, totalRows, totalCOLS);
                return;
            }

            grid[currenTail[0]][currenTail[1]] = EMPTY;
            snake.removeFirst();
            snake.addLast(new int[]{newRow, newCol});
            grid[newRow][newCol] = SNAKE;
        }

        // save the map after all the steps
        saveMap(grid);
        printMap(grid);
    }


    static LinkedList<int[]> bulidSnake(char[][] grid) {
        Set<String> sankeCells = new LinkedHashSet<>();
        Map<String, int[]> coorMap = new HashMap<>();

        for (int r = 0; r < grid.length; r++) {
            for (int c = 0; c < grid[r].length; c++) {
                if (grid[r][c] == SNAKE) {
                    String key = r + "," + c; // save the position as string
                    sankeCells.add(key);
                    coorMap.put(key, new int[]{r, c});
                }
            }
        }

        if (sankeCells.isEmpty()) {
            return new LinkedList<>();
        }
        if (sankeCells.size() == 1) {
            LinkedList<int[]> single = new LinkedList<>();
            single.addLast(coorMap.values().iterator().next());
            return single;
        }
        int[] startCell = null;

        for (String key : sankeCells) {
            int[] pos = coorMap.get(key);
            int Count = 0;

            for (int d = 0; d < 4; d++) {
                String nKey = (pos[0] + DR[d]) + "," + (pos[1] + Dc[d]);
                if (sankeCells.contains(nKey))
                    Count++;
            }

            if (Count == 1) {
                startCell = pos;
                break;
            }
        }

        if (startCell == null) {
            startCell = coorMap.values().iterator().next();
        }
        LinkedList<int[]> snakeCells = new LinkedList<int[]>();
        Set<String> visited = new HashSet<String>();
        int[] current = startCell;

        while (current != null) {
            snakeCells.addLast(current);
            visited.add(current[0] + "," + current[1]);

            int[] next = null;
            for (int d = 0; d < 4; d++) {
                String nKey = (current[0] + DR[d]) + "," + (current[1] + Dc[d]);

                if (sankeCells.contains(nKey) && !visited.contains(nKey)) {
                    next = coorMap.get(nKey);
                    break;
                }
            }
            current = next;
        }
        return snakeCells;
    }


    static void showOpenDirections(LinkedList<int[]> snake,int totalRows, int totalCols) {
        int[] head = snake.getLast();
        int[] tail = snake.getFirst();

        Set<String> body = new HashSet<String>();
        for (int[] seg : snake) body.add(seg[0] + "," + seg[1]);
        body.remove(tail[0] + "," + tail[1]);

        List<String> openDirs = new ArrayList<String>();

        for (int i = 0; i < 4; i++) {
            int nr = head[0] + DR[i];
            int nc = head[1] + Dc[i];

            boolean inBounds = (nr >= 0 && nr < totalRows &&
                    nc >= 0 && nc < totalCols);
            boolean free = !body.contains(nr + "," + nc);

            if (inBounds && free) {
                openDirs.add(DIR_NAME[i]);
            }
        }

        if (openDirs.isEmpty()) {
            System.out.println("No open directions — snake is trapped.");
        } else {
            StringBuilder msg = new StringBuilder("The only open directions are ");
            for (int i = 0; i < openDirs.size(); i++) {
                if (i > 0) {
                    msg.append(i == openDirs.size() - 1 ? " and " : ", ");
                }
                msg.append(openDirs.get(i));
            }
            System.out.println(msg.toString());
        }
    }

    static char[][] loadMap() {
        File mapFile = new File(Map_FILE);

        if (!mapFile.exists()) {
            System.out.println("Map file doesn't exist");
            char[][] freshGrid = createDefaultGrid();
            saveMap(freshGrid);
            return freshGrid;
        }
        try (Scanner sc = new Scanner(mapFile)) {
            List<char[]> rows = new ArrayList<>();

            while (sc.hasNextLine()) {
                String line = sc.nextLine().trim();
                if (line.isEmpty()) continue;

                String[] cells = line.split(" ");
                char[] row = new char[cells.length];


                for (int i = 0; i < cells.length; i++) {
                    row[i] = cells[i].charAt(0);
                }
                rows.add(row);

            }
            if (rows.size() < MIN_SIZE) {
                System.out.println("map must have at least" +
                        MIN_SIZE + "rows");
                return null;
            }
            if (rows.get(0).length < MIN_SIZE) {
                System.out.println("map must have at least " +
                        MIN_SIZE + " columns.");
                return null;
            }
            char[][] grid = new char[rows.size()][];
            for (int i = 0; i < rows.size(); i++) {
                grid[i] = rows.get(i);
            }
            return grid;

        } catch (FileNotFoundException e) {
            System.out.println("Error: Cannot read map.txt");
            return null;
        }
    }


    static char[][] createDefaultGrid() {
        char[][] grid = new char[MIN_SIZE][MIN_SIZE];
        for (char[] row : grid) {
            Arrays.fill(row, EMPTY);
        }
        for (int col = 5; col <= 9; col++) {
            grid[7][col] = SNAKE;
        }
        return grid;
    }


    static void saveMap(char[][] grid) {
        try (PrintWriter writer = new PrintWriter(new FileWriter(Map_FILE))) {
            for (char[] row : grid) {
                StringBuilder line = new StringBuilder();

                for (int c = 0; c < row.length; c++) {
                    if (c > 0) line.append(' ');
                    line.append(row[c]);
                }
                writer.println(line);
            }
        } catch (IOException e) {
            System.out.println("Warning: Could not save map — " +
                    e.getMessage());
        }
    }

    static int getDirectionIndex(String direction) {
        switch (direction) {
            case "up":
                return 0;
            case "down":
                return 1;
            case "left":
                return 2;
            default:
                return 3;
        }
    }

    static void printMap(char[][] grid) {
        for (char[] row : grid) {
            StringBuilder line = new StringBuilder();
            for (int c = 0; c < row.length; c++) {
                if (c > 0) line.append(' ');
                line.append(row[c]);
            }
            System.out.println(line.toString());
        }
    }




}



















