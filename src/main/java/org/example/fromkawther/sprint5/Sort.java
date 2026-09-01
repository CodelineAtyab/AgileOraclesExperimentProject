package org.example.fromkawther.sprint5;
import java.util.Scanner;

public class Sort {
 public static void main(String[] args) {
        String data ="";
        String method ="selection";

        // 1. Logic to handle Criteria:
        for (String k: args) {
            if (k.startsWith("--algorithm=")) {
               method =k.split("=")[1].toLowerCase();
            } else {
                data = k; // This is the comma-separated list
            }
        }

        // 2. Read from Standard Input if no data in args
        if (data.isEmpty()) {
            Scanner sc = new Scanner(System.in);
            if (sc.hasNextLine()) {
                data = sc.nextLine();
            }
        }

        try {
            // 3. Process the input
            String[] p = data.split(",");
            if (p.length < 3) {
                System.out.println("Error: assign at least 3 numbers.");
                return;
            }

            int[] a = new int[p.length];
            for (int i = 0; i < p.length; i++) {
                a[i] = Integer.parseInt(p[i].trim());
            }

            // 4. Choose algorithm:
            if (method.equals("bubble")) {
                bubbleSort(a);
            } else {
                selectionSort(a);
            }

            // 5. Print sorted list:
            for (int i = 0; i < a.length; i++) {
                System.out.print(a[i] + (i == a.length - 1 ? "" : ","));
            }
            System.out.println();

            // 6. Intern queue: lowest 3:
            System.out.print("Intern queue: ");
            for (int i = 0; i < 3; i++) {
                System.out.print(a[i] + (i == 2 ? "" : ","));
            }
            System.out.println();

        } catch (Exception e) {
            System.out.println("Error: Invalid input.");
        }
    }
    // finds the minimum in each step :
    public static void selectionSort(int[] x) {
        for (int i = 0; i < x.length - 1; i++) {
            int low = i;
            for (int j = i + 1; j < x.length; j++) {
                if (x[j] < x[low]) low = j;
            }
            int t = x[low];
            x[low] = x[i];
            x[i] = t;
        }
    }
    public static void bubbleSort(int[] x) {
        int n = x.length;
        for (int i = 0; i < n - 1; i++) { //loop (i)
            for (int j = 0; j < n - i - 1; j++) { // (j)
                if (x[j] > x[j + 1]) {
                    int t = x[j];
                    x[j] = x[j + 1];
                    x[j + 1] = t;
                }
            }
        }
    }
}