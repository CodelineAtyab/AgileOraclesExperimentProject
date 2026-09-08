         # CLI Snake Movement Game

Moves a snake on a 15x15 grid map and saves state between runs.

---

## How to run

Open your terminal at the project root:
```
C:\Users\Codeline\Documents\AgileOraclesExperimentProject
```

**Step 1 — Create output folder**
```powershell
mkdir out
```

**Step 2 — Compile**
```powershell
javac -d out (ls src\main\java\org\example\fromsulaiman\s5\SnakeOPP\*.java)
```

**Step 3 — Run**
```powershell
java -cp out org.example.fromsulaiman.s5.SnakeOPP.SnakeGame right 2
```

Output:
```
Current score: 0/5
- - - - - - - - - - - - - - -
- - - - - - - - - - - - - - -
- - - - - - - - - - - - - - -
- - - - - - - - - - - - - - -
- - - - - - - - - - - - - - -
- - - - - - - - - - - - - - -
- - - - - - - - - - - - - - -
- - - T o o H - - - - - - - -
- - - - - - - - - - - - - - -
...
```

> **Note:** You only need to run `mkdir out` and compile once. After that, just use Step 3 each time.

---

## More examples

- Move up 1 step (default):
```powershell
java -cp out org.example.fromsulaiman.s5.SnakeOPP.SnakeGame up
```

- Move left 3 steps:
```powershell
java -cp out org.example.fromsulaiman.s5.SnakeOPP.SnakeGame left 3
```

- Reset map to default:
```powershell
java -cp out org.example.fromsulaiman.s5.SnakeOPP.SnakeGame reset
```

---

## Map format (`map.txt`)

| Symbol | Meaning |
|--------|---------|
| `-`    | Empty cell |
| `H`    | Snake head |
| `o`    | Snake body |
| `T`    | Snake tail |
| `*`    | Food |

---

## Rules
- Map must be at least **15 x 15**
- Exactly **one `H`** and **one `T`** required
- Snake must form **one connected path** from `T` to `H`
- Zero or one `*` food allowed in map file
- Direction arguments are **case-insensitive** (`UP`, `Left`, `right` all work)
- After eating **5 foods**, you win and the map auto-resets