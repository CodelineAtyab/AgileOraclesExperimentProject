# Intern Queue Sorter

Sorts complaint-priority numbers and shows the 3 easiest tickets for interns.

---

## How to run

Open your terminal at the project root:
```
C:\Users\Codeline\Documents\AgileOraclesExperimentProject
```

**Step 1 — Compile**
```bash
javac src\main\java\org\example\fromsulaiman\s5\InternQueueSorter\InternQueueSorter.java
```

**Step 2 — Run**
```bash
java -cp src\main\java org.example.fromsulaiman.s5.InternQueueSorter.InternQueueSorter 6,5,4,3,2,1
```

Output:
```
Sorted list:  [1, 2, 3, 4, 5, 6]
Intern queue: 1, 2, 3
```

---

## Change the algorithm

Default is **selection sort**. To use bubble sort, add `--algorithm=bubble`:
```bash
java -cp src\main\java org.example.fromsulaiman.s5.InternQueueSorter.InternQueueSorter --algorithm=bubble 6,5,4,3,2,1
```

---

## Rules
- Minimum **3 numbers** required
- Numbers must be **integers** (no letters or decimals)
- Separate numbers with **commas, no spaces**