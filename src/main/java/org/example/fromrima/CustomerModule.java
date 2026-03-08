package org.example.fromrima;

import java.util.ArrayList;
import java.util.Scanner;

public class CustomerModule {
    public static void main() {
        Scanner inputBuffObj = new Scanner(System.in);
        CliErp cliErpObjects = new CliErp();
        System.out.println("------ Customer Menu -------- \n -- create complaints (tickets) --");

        System.out.println("Enter Complaint ID: ");
        int complaintID = inputBuffObj.nextInt();
        inputBuffObj.nextLine();
        System.out.print("Enter Complaint Description: ");
        String complaintDescription = inputBuffObj.nextLine();

        System.out.print("Select Priority [ LOW / MEDIUM (default) / HIGH ] : ");
        String complaintPriority = inputBuffObj.nextLine().toUpperCase();
        if (complaintPriority.isEmpty() || (!complaintPriority.equals("LOW") && !complaintPriority.equals("MEDIUM") && !complaintPriority.equals("HIGH"))) {
            System.out.println("Invalid priority! Setting to default (MEDIUM)");
            complaintPriority = "MEDIUM";

        cliErpObjects.customerComplaintId.add(complaintID);
        cliErpObjects.customerComplaintDescriptions.add(complaintDescription);
        cliErpObjects.customerComplaintPriorities.add(complaintPriority);

        System.out.println("Confirmation,successfully created ");
    }

        cliErpObjects.customerComplaintStatus.add("OPEN");
        cliErpObjects.complaintAssignedStaff.add("UNASSIGNED");
        cliErpObjects.complaintComments.add("");
    }

}

