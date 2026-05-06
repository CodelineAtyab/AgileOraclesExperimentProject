package org.example.fromatyab;

import java.util.ArrayList;
import java.util.Arrays;

public class SupportTicketManager {
    public static void main(String[] args) {
        ArrayList<String> menuItems = new ArrayList<>();

        menuItems.add("*********************************");
        menuItems.add("***** THIS IS THE MAIN MENU *****");
        menuItems.add("*********************************");


        menuItems.forEach((currLine) -> {System.out.println(currLine);});
    }
}
