package org.example.fromkhadija.Sprint2;

import java.util.ArrayList;
import java.util.Scanner;

public class CustomerModule {

    public static void main(String[] args) {

        Scanner cusScan = new Scanner(System.in);


        System.out.println();
        System.out.println("............complaints (tickets)................ ");


        ArrayList<Integer> ComplaintIDs = new ArrayList<>();
        ArrayList<String> ComplaDescrs = new ArrayList<>();
        ArrayList<String> ComplaPriors = new ArrayList<>();


        System.out.println("Enter Customer ID: ");
        int ComplaintID = Integer.parseInt(cusScan.nextLine());
        ComplaintIDs.add(ComplaintID);


        System.out.println("Enter Customer Description: ");
        String ComplaDescr = cusScan.nextLine();
        ComplaDescrs.add(ComplaDescr);


        System.out.println("Enter Customer Priority: ");
        String ComplaPrior = cusScan.nextLine();

        if (ComplaPrior.isEmpty()) {

            ComplaPrior = "MEDIUM ";
        }
        ComplaPriors.add(ComplaPrior);


        System.out.println("Your complaint successfuly stored.. ");
        System.out.println("Customer ID: " + ComplaintIDs);
        System.out.println("The Customer Description " + ComplaDescrs);
        System.out.println("Customer Priority " + ComplaPriors);


        cusScan.close();
    }
}
