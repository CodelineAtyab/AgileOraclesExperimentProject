package org.example.fromatyab;

public class Main {
    public static void main(String[] args) {
        int multiplicationTableFor =  Integer.parseInt(args[0]) ;
        for (int count=0; count < 10; count++) {
            System.out.printf("%d x %d = %d%n", multiplicationTableFor, count+1, multiplicationTableFor*(count+1));
        }
    }
}
