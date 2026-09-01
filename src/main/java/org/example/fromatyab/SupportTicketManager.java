package org.example.fromatyab;

import java.util.ArrayList;
import java.util.Arrays;

public class SupportTicketManager {
    public static void main(String[] args) {
        ArrayList<String> menuItems = new ArrayList<>();
        ArrayList<String> subMenuItems = new ArrayList<>();

        menuItems.add("*********************************");
        menuItems.add("***** THIS IS THE MAIN MENU *****");
        menuItems.add("*********************************");

        subMenuItems.add("%s: Create complaint%n");
        subMenuItems.add("%s: Read complaint%n");
        subMenuItems.add("%s: Resolve complaint%n");


        menuItems.forEach(System.out::println);

        subMenuItems.forEach((currLine) -> {
            System.out.printf(currLine, "->");
        });


    }
}
