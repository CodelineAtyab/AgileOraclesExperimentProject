# MazeApp — how to run

From the **project root** (folder with `pom.xml`):

1. **Compile:** `mvn compile`


```text
java -cp target/classes org.example.fromsulaiman.s5.escapethemaze.MazeApp src\main\java\org\example\fromsulaiman\s5\escapethemaze\maze.txt
```

Use any path to your `maze.txt` instead of the last argument (e.g. `maze.txt` if it is in the current folder).
