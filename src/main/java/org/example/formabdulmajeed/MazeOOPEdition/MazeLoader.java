package org.example.formabdulmajeed.MazeOOPEdition;

import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;

public class MazeLoader {
    private static final String MAZE_RESOURCE_PATH = "/Users/yousufalbalushu/Documents/AgileOraclesExperimentProject/src/main/java/org/example/formabdulmajeed/MazeOOPEdition/maze.txt";

    public static Maze loadMaze() throws MazeException {

        // Step 1 — resolve the resource path
        Path mazePath = resolvePath();

        // Step 2 & 3 — read the file and split into lines
        String[] fileLines = readLines(mazePath);

        // Step 4 — build the char[][] grid (your original logic)
        char[][] grid = buildGrid(fileLines);

        // Step 5 — validate every rule
        validateGrid(grid);

        // Step 6 — wrap in a Maze and return
        return new Maze(grid);
    }


    private static Path resolvePath() throws MazeException {
        var resourceUrl = MAZE_RESOURCE_PATH;
        return Path.of(resourceUrl);
    }

    private static String[] readLines(Path mazePath) throws MazeException {
        String insideFile;
        try {
            insideFile = Files.readString(mazePath);
        } catch (IOException e) {
            throw new MazeException(
                    "Could not read maze file: " + mazePath + "\n" + e.getMessage()
            );
        }

        if (insideFile.isBlank()) {
            throw new MazeException("The maze file is empty.");
        }

        // Split on newline, strip carriage returns, drop blank lines
        String[] rawLines = insideFile.split("\n");
        long nonBlank = 0;
        for (String line : rawLines) if (!line.strip().isEmpty()) nonBlank++;

        String[] fileLines = new String[(int) nonBlank];
        int idx = 0;
        for (String line : rawLines) {
            String cleaned = line.replace("\r", ""); // handle Windows \r\n
            if (!cleaned.strip().isEmpty()) {
                fileLines[idx++] = cleaned;
            }
        }
        return fileLines;
    }

    private static char[][] buildGrid(String[] fileLines) throws MazeException {

        int lineLength = fileLines[0].length();   // column count from first row
        char[][] maze  = new char[fileLines.length][lineLength];

        for (int row = 0; row < fileLines.length; row++) {

            // Every row must be the same width as the first row
            if (fileLines[row].length() != lineLength) {
                throw new MazeException(
                        "Row " + row + " has " + fileLines[row].length() +
                                " characters, but row 0 has " + lineLength + ".\n" +
                                "All rows must be the same length.");
            }

            char[] currRow = fileLines[row].toCharArray();
            System.arraycopy(currRow, 0, maze[row], 0, currRow.length);
        }

        return maze;
    }
    private static void validateGrid(char[][] grid) throws MazeException {
        int rows = grid.length;
        int cols = grid[0].length;

        // (a) Minimum size
        if (rows < 3 || cols < 3) {
            throw new MazeException(
                    "Maze is too small (" + rows + " x " + cols + "). Minimum is 3 x 3."
            );
        }

        // (b) Must be square
        if (rows != cols) {
            throw new MazeException(
                    "Maze must be square (n x n). Found " + rows + " rows and " + cols + " cols."
            );
        }

        // (c) Valid characters  +  (d) count @  +  (e) count E
        int startCount = 0;
        int exitCount  = 0;

        for (int r = 0; r < rows; r++) {
            for (int c = 0; c < cols; c++) {
                char ch = grid[r][c];

                if (ch != Maze.WALL && ch != Maze.OPEN &&
                        ch != Maze.START && ch != Maze.EXIT) {
                    throw new MazeException(
                            "Invalid character '" + ch + "' at (" + r + "," + c + ").\n" +
                                    "Allowed: '1' wall  '0' open  '@' start  'E' exit."
                    );
                }

                if (ch == Maze.START) startCount++;
                if (ch == Maze.EXIT)  exitCount++;
            }
        }

        if (startCount == 0) throw new MazeException("No '@' found. Maze needs exactly one start.");
        if (startCount  > 1) throw new MazeException("Found " + startCount + " '@'. Needs exactly one.");
        if (exitCount  == 0) throw new MazeException("No 'E' found. Maze needs exactly one exit.");
        if (exitCount   > 1) throw new MazeException("Found " + exitCount  + " 'E'. Needs exactly one.");
    }
}

