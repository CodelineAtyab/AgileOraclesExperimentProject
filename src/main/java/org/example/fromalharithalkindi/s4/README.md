# Intern Queue Sorter

A Java console tool that sorts complaint-priority numbers
and assigns the simplest issues to interns.

---

## How to Compile

```bash
javac src/main/java/org/example/fromalharithalkindi/s4/S4SortAndServe.java
```

## How to Run

```bash
# Default (selection sort)
java -cp src/main/java org.example.fromalharithalkindi.s4.S4SortAndServe 4,2,10,5,8

# Using bubble sort
java -cp src/main/java org.example.fromalharithalkindi.s4.S4SortAndServe --algo==bubble 5,3,9,1,4
```

---

## Big-O Complexity

| Algorithm      | Best   | Average | Worst  | Space |
|----------------|--------|---------|--------|-------|
| Selection Sort | O(n²)  | O(n²)   | O(n²)  | O(1)  |
| Bubble Sort    | O(n)   | O(n²)   | O(n²)  | O(1)  |

---

## Error Handling

- Less than 3 numbers → error message
- Non-integer input → error message

---

## Unit Tests

Located in: `src/main/java/org/example/fromalharithalkindi/s4`
Run with: JUnit 5