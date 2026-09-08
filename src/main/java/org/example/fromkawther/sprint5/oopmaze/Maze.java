package org.example.fromkawther.sprint5.oopmaze;

public class Maze {
        private char[][] grid;
        private int rows;
        private int cols;

        public Maze(char[][] grid) {
            this.grid = grid;
            this.rows = grid.length;
            this.cols = grid[0].length;
        }

        public boolean isValidMove(int r, int c) {

            return r >= 0 && r < rows && c >= 0 && c < cols && grid[r][c] != '1';
        }

        public boolean isExit(int r, int c) {
            return grid[r][c] == 'E';
        }

        public char getCell(int r, int c) { return grid[r][c]; }
        public int getRows() { return rows; }
        public int getCols() { return cols; }
        public void setCell(int r, int c, char val) { grid[r][c] = val; }
    }