package org.example.fromkawther.erp;
import java.util.ArrayList;
import java.util.Scanner;

public class SupportStaff {
    public static void main(String[] args){

    }
    int id;
    String description;
    String assignedStaff;
    String status;
    ArrayList<String> comments;

    public SupportStaff (int id, String description, String assignedStaff) {
        this.id = id;
        this.description = description;
        this.assignedStaff = assignedStaff;
        this.status = "OPEN";
        this.comments = new ArrayList<>();

    }

    public void addComment(String comment) {
        if (status.equals("CLOSED")) {
            System.out.println("cannot add comment");
        } else

    comments.add(comment);
}

public void close(){
    if (status.equals("CLOSED")){
        System.out.println("complaint is already closed");

    } else {
        status = "CLOSED";
        System.out.println("complaint closed successfully");
    }
    }
    public void display() {
        System.out.println("ID : " + id);
        System.out.println("Description :" + description);
        System.out.println("Assigned Staff : "+ assignedStaff);
        System.out.println("Status :" + status);
        if (comments.isEmpty()){
            System.out.println("comments:");
            for (String C : comments) {
                System.out.println(" - " + C);

            }
        }
        System.out.println("---------------");

    }}