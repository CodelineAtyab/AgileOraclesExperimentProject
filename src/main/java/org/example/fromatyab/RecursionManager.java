package org.example.fromatyab;

public class RecursionManager {
    public static void main(String[] args) {
        System.out.println(getPowResultRecursive(2, 3));
    }

    public static double getPowResult(double base, double exponent) {
        double result = 1;
        for (int count=0; count < exponent; count++) {
            result = result * base;
        }
        return result;
    }

    public static double getPowResultRecursive(double base, double exponent) {
        if (exponent < 1) return 1;  // Base Case
        return base * getPowResultRecursive(base, exponent-1);  // Recursive Case
    }
}
