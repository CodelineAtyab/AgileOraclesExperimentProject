# Snake Game OOP Edition

A CLI-based Snake Movement Game built using Object-Oriented Programming (OOP) principles in Java.

## Features

- Load grid-based maps from file
- Move snake in four directions via command-line arguments
- Track and persist snake's position between executions
- Collision detection (self-collision and wall collision)
- State persistence with wrap-around movement

## Classes

- **Position** - Represents a coordinate (row, column)
- **Direction** - Enum for movement directions (UP, DOWN, LEFT, RIGHT)
- **GameMap** - Stores the 2D grid and provides helper methods
- **Snake** - Represents the snake's body; handles movement logic
- **MapLoader** - Reads, validates, and loads the map from file
- **FilePersistence** - Handles saving and loading game state
- **GameRenderer** - Responsible for printing the map to console
- **SnakeGame** - Main entry point; handles CLI arguments and game flow

## Usage

```bash
java org.example.fromyarab.snakeGameOOPEdition.SnakeGame <direction> <steps>
```

### Arguments

- `<direction>` : `right`, `left`, `up`, `down` (case-insensitive)
- `<steps>` : positive integer (default: 1)

### Reset Game

```bash
java org.example.fromyarab.snakeGameOOPEdition.SnakeGame reset
```

Resets to default settings:
- Grid size: 15x15
- Snake length: 9
- Snake position: center

### Examples

```bash
java SnakeGame right        # Move right 1 step
java SnakeGame up 3         # Move up 3 steps
java SnakeGame left 5       # Move left 5 steps
java SnakeGame down 2       # Move down 2 steps
java SnakeGame reset        # Reset the game
```

## Map Format

The map file uses space-separated characters:
- `-` : empty cell
- `o` : snake body (head is rightmost, tail is leftmost)

Example map.txt:
```
- - - - - - - - - - - - - - - 
- - - - - - - - - - - - - - - 
- - - - - - - - - - - - - - - 
- - - - - - - - - - - - - - - 
- - - - - - - - - - - - - - - 
- - - - - - - - - - - - - - - 
- - - - - - - - - - - - - - - 
- - - - - - - - - - - - - - - 
- - - - - - - - - - - - - - - 
- - - - - - - - - - - - - - - 
- - - - - - - - - - - - - - - 
- - - - - - - - - - - - - - - 
- - - - - - - - - - - - - - - 
- - - - - - - - - - - - - - - 
- - - - - - - - - - - - - - - 
```

## Files

- `map.txt` - Stores the current game map
- `snakeBody.txt` - Stores the snake's body positions (row col per line)

## Build & Run

```bash
# Compile
javac -d target/classes -sourcepath src/main/java src/main/java/org/example/fromyarab/snakeGameOOPEdition/*.java

# Run
java -cp target/classes org.example.fromyarab.snakeGameOOPEdition.SnakeGame right
```