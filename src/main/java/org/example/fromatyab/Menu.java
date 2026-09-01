package org.example.fromatyab;

import java.util.ArrayList;

public class Menu {
    public  String type = "";
    private String shape = "";

    public Menu(String type, String shape) {
        this.type = type;
        this.shape = shape;
    }

    public String getShape() {
        return shape;
    }

    private ArrayList<String> getData() {
        ArrayList<String> menuData = new ArrayList<>();
        menuData.add("========================================");
        menuData.add("*      CUSTOMER SUPPORT MAIN MENU      *");
        menuData.add("========================================");
        menuData.add("* 1. Register Complain                 *");
        menuData.add("* 2. Give Feedback                     *");
        menuData.add("* 3. Complain Status                   *");
        menuData.add("* 4. Exit                              *");
        menuData.add("========================================");
        return menuData;
    }

    public void displayMenu() {
        for (String line: getData()) {
            System.out.println(line);
        }
    };

}
