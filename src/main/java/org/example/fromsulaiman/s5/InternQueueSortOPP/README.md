# Intern Queue Sorter — How to Run

## 1. Compile
```powershell
javac -d out src\main\java\org\example\fromsulaiman\s5\InternQueueSortOPP\strategy\SortStrategy.java src\main\java\org\example\fromsulaiman\s5\InternQueueSortOPP\strategy\SelectionSort.java src\main\java\org\example\fromsulaiman\s5\InternQueueSortOPP\strategy\BubbleSort.java src\main\java\org\example\fromsulaiman\s5\InternQueueSortOPP\util\InputParser.java src\main\java\org\example\fromsulaiman\s5\InternQueueSortOPP\service\ComplaintService.java src\main\java\org\example\fromsulaiman\s5\InternQueueSortOPP\InternQueueSorter.java
```
> No output = success

---

## 2. Run

**Default (Selection Sort):**
```powershell
java -cp out org.example.fromsulaiman.s5.InternQueueSortOPP.InternQueueSorter 5,3,9,1,4
```

**Bubble Sort:**
```powershell
java -cp out org.example.fromsulaiman.s5.InternQueueSortOPP.InternQueueSorter --algorithm=bubble 5,3,9,1,4
```

---

## 3. Error Cases (for testing)

**Too few numbers:**
```powershell
java -cp out org.example.fromsulaiman.s5.InternQueueSortOPP.InternQueueSorter 5,3
```

**Not a number:**
```powershell
java -cp out org.example.fromsulaiman.s5.InternQueueSortOPP.InternQueueSorter 5,abc,3,1,4
```

**No input at all:**
```powershell
java -cp out org.example.fromsulaiman.s5.InternQueueSortOPP.InternQueueSorter
```

