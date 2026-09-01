# 🧩 Escape the Maze — OOP Edition

A Java CLI application that reads a maze from a file and solves it using a **Stack-based backtracking algorithm**, animated step-by-step in the console. Built with clean Object-Oriented Programming principles.

---

## 📁 Project Structure

```
src/main/java/org/example/fromyarab/escapeTheMazeOOPEdition/
│
├── MazeApp.java          # Entry point — handles CLI argument and coordinates flow
├── Position.java         # Represents a single cell (row, column) in the maze
├── Maze.java             # Stores the 2D grid and provides helper methods
├── MazeLoader.java       # Reads maze from file and validates its structure
├── MazeSolver.java       # Implements the stack-based backtracking algorithm
└── MazeRenderer.java     # Handles console drawing and animation
```

---

## 🗺️ Maze File Format

The maze is a plain text file where each character represents a cell:

| Character | Meaning        |
|-----------|----------------|
| `1`       | Wall           |
| `0`       | Open path      |
| `@`       | Start point    |
| `E`       | Exit point     |

**Example (`mazeFile.txt`):**
```
1BVTrB47erypG3tevi1U9Fv6BbNUBEiuiX
@0000000011010000101010010000001
1111101111001100111000010100011E
10001000010001110000101110010101
10101011000101000011101100000111
10100001010100101110001110010111
10111101000010001010100010100001
10000101100000111001010100001111
11110100010100011110010000100111
1BVTrB47erypG3tevi1U9Fv6BbNUBEiuiX
```

### Maze Constraints
- All **border cells** must be `1`, except for exactly **one `@`** (start) and **one `E`** (exit)
- `@` and `E` must not be in the **corners**
- `@` and `E` must not share the same **row or column**
- Only characters `0`, `1`, `@`, `E` are allowed

---

## ▶️ How to Run

### 1. Compile

```bash
javac src/main/java/org/example/fromyarab/escapeTheMazeOOPEdition/*.java
```

### 2. Run

```bash
java -cp src/main/java org.example.fromyarab.escapeTheMazeOOPEdition.MazeApp <path-to-maze-file>
```

**Example:**

```bash
java -cp src/main/java org.example.fromyarab.escapeTheMazeOOPEdition.MazeApp src/main/java/org/example/fromyarab/escapeTheMazeOOPEdition/mazeFile.txt
```

---

## ⚙️ How It Works

### Algorithm — Stack-Based Backtracking

1. Start at `@`
2. At each step, try to move in order: **Down → Right → Up → Left**
3. If a valid unvisited cell is found → **push** current position to the stack and move
4. If no valid move exists → **pop** the stack and backtrack to the previous position
5. Repeat until `E` is reached or the stack is empty (no path)

### Console Animation

- After **every move**, the console is cleared and the maze is redrawn
- The current position is shown as `@`
- During backtracking, `@` visibly moves backward through the maze
- A **1-second delay** is applied between each frame

---

## ✅ Output

**On success:**
```
Congratulation >> Maze Solved!
Path: (1,0) -> (1,1) -> ... -> (E)
Found an Exit at: (2,31)
```

**On failure:**
```
No path found!
```

**On invalid file or bad maze:**
```
Error: File not found -> ...
Error: Maze Not Valid!! -> ...
```

---

## 🧱 OOP Design

| Class          | Responsibility                                                   |
|----------------|------------------------------------------------------------------|
| `MazeApp`      | CLI entry point; accepts file path argument; coordinates flow    |
| `Position`     | Encapsulates `(row, col)`; implements `equals` and `hashCode`    |
| `Maze`         | Stores 2D grid; exposes `isWall`, `isExit`, `isValidMove`, etc.  |
| `MazeLoader`   | Reads file into grid; validates all maze constraints             |
| `MazeSolver`   | Stack-based backtracking; tracks visited cells                   |
| `MazeRenderer` | Clears screen, redraws maze, prints final result and path        |

---

## 📦 Dependencies

- Java 11+
- No external libraries required