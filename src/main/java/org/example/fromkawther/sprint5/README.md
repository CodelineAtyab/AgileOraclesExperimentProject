
(Bubble Sort)
I tested the tool with these numbers 5,3,9,1,4 using:
java Sort --algorithm=bubble 5,3,9,1,4

How it works (Step-by-Step):

Step 1: Compares 5 and 3 -> Swap (3, 5, 9, 1, 4)

Step 2: Compares 5 and 9 -> No swap.

Step 3: Compares 9 and 1 -> Swap (3, 5, 1, 9, 4)

Step 4: Compares 9 and 4 -> Swap (3, 5, 1, 4, 9)
(Now the largest number 9 is at the end).

The same thing happens again for the rest of the numbers until they are all in order:

Final sorted list: 1, 3, 4, 5, 9
Intern Queue (The first 3 numbers): 1, 3, 4