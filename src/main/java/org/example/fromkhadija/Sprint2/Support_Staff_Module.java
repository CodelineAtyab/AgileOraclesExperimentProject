package org.example.fromkhadija.Sprint2;


import java.util.HashMap;
import java.util.Scanner;

public class Support_Staff_Module {
    public static void main(String[] args) {

        Scanner staffScanner = new Scanner(System.in);
        boolean menuRunning = true;

        // First staff member has to enter his password to prevent any other staff member to access in his complaints

        System.out.println("Enter your Password: ");
        int passstaff = Integer.parseInt(staffScanner.nextLine());

        while (passstaff != 98765) {

            System.out.println("Incorrect Password :( , Try Again ");
            passstaff = Integer.parseInt(staffScanner.nextLine());

        }
        System.out.println("Correct Password...Welcome Khadija :)");
        System.out.println();
        System.out.println();

        // *Data Structure*:
        // 1. Assignments HashMap
        HashMap<Integer, String> Assignments = new HashMap<>();
        Assignments.put(101, "Complete your task");
        Assignments.put(102, "Poor to Performence");
        Assignments.put(103, "Code Error");
        Assignments.put(104, "Technical Issue");

        // 2. comments HashMap
        HashMap<Integer, String> comments = new HashMap<>();

        // 3. Status HashMap --> I located all ComplaintsStatuses are OPEN untill the  Support Staff Members Reply in it then become CLOSED
        HashMap<Integer, String> ComplaintsStatus = new HashMap<>();
        ComplaintsStatus.put(101, "OPEN");
        ComplaintsStatus.put(102, "OPEN");
        ComplaintsStatus.put(103, "OPEN");
        ComplaintsStatus.put(104, "OPEN");

        while (menuRunning) {

            System.out.println();
            System.out.println("Enter your choice: \n1. View Assigned Complaints" +
                    "\n2. Add Comments or Replies\n3. Close Assigned Complaints\n4. Exist");
            int choice = Integer.parseInt(staffScanner.nextLine());

            if (choice == 1) {

                System.out.println("========== View Assigned Complaints.==========");
                System.out.println(Assignments);

            } else if (choice == 2) {
                System.out.println("========== Add Comments or Replies. ==========");
                System.out.println("Available IDs: " + Assignments.keySet());

                // 1. This loop for (ID: for each Assignment has unique Number)
                for (int i = 101; i <= 104; i++) {
                    Integer id = i;
                    // 2. Check if it is  Already Closed will not change
                    String status = ComplaintsStatus.get(id);
                    if ("CLOSE" == status) {
                        System.out.printf("This ID: %d --> Already CLOSED. Modification not allowed.\n", id);

                    } else {
                        // 3. Prompt for reply
                        System.out.print("Enter your reply for ID " + id + ": ");
                        String reply = staffScanner.nextLine();

                        // 4. Validate if the user did not enter anything will the status does not change
                        if (reply.trim().isEmpty()) {
                            System.out.printf("No reply entered. %d is still *OPEN*\n", id);

                            // 5. Save the reply and the status become CLOSED
                        } else {
                            comments.put(id, reply);
                            ComplaintsStatus.put(id, "CLOSE");
                            System.out.printf("Reply saved. ID %d is now *CLOSED*.\n", id);
                        }
                    }
                }

            } else if (choice == 3) {
                System.out.println("========== Close Assigned Complaints (Manual). ==========");
                System.out.println("Open Complaints: " + Assignments.keySet());

                //1. Prompt for reply
                System.out.print("Enter ID to Check the Status: ");
                int id = Integer.parseInt(staffScanner.nextLine());

                //2. Closed complaints cannot be modified
                if ("CLOSE" == (ComplaintsStatus.get(id))) {
                    System.out.printf("ID %d is already CLOSED / Cannot be Modified. .\n", id);
                }

                //3. If The comment is Empty will still OPEN
                else {
                    System.out.printf("ID %d is Empty Cannot be *CLOSED* .\n", id);
                }
                System.out.println("*These Are The Complaints Status After Update*: " + ComplaintsStatus);

            } else if (choice == 4) {
                System.out.println("Exit.");
                menuRunning = false;
            }
        }
    }
}
