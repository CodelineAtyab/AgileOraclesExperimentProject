package org.example.frommaryam.maryamSprint2;

import java.util.ArrayList;
import java.util.Scanner;
import java.util.HashMap;

public class Staffs {
    public static void main(String[] args) {


        //variables
        Scanner SC = new Scanner(System.in);
        HashMap<String, String> customerComplainsMap = new HashMap<>();
        HashMap<String, HashMap<String, ArrayList<String>>> stuffWithIDsMap  = new HashMap<>();
        HashMap<String, ArrayList<String>> commentsMap = new HashMap<>();
        boolean keepRunning = true;
        boolean adminRunning = true;
        boolean staffRunning = true;
        String adminPassword = "admin@123";
        String[] staffNameArray = new String[1];

        //staff members
        HashMap<String, ArrayList<String>> ahmedAssessments = new HashMap<>();
        ahmedAssessments.put("ahmed", new ArrayList<>());
        stuffWithIDsMap.put("102", ahmedAssessments);

        HashMap<String, ArrayList<String>> saraAssessments = new HashMap<>();
        saraAssessments.put("sara", new ArrayList<>());
        stuffWithIDsMap.put("104", saraAssessments);

        HashMap<String, ArrayList<String>> aliAssessments = new HashMap<>();
        aliAssessments.put("ali", new ArrayList<>());
        stuffWithIDsMap.put("105", aliAssessments);

        HashMap<String, ArrayList<String>> jojoAssessments = new HashMap<>();
        jojoAssessments.put("jojo", new ArrayList<>());
        stuffWithIDsMap.put("108", jojoAssessments);



        //main menu
        while (keepRunning) {

            System.out.println("Welcome to the Main Menu :)");
            System.out.println("1. Customer");
            System.out.println("2. Admin");
            System.out.println("3. Support Staff");
            System.out.println("4. Exit");

            System.out.print("Please Enter Your Choice Here: ");
            int userChoise = SC.nextInt();
            SC.nextLine();



            //customer section
            if (userChoise == 1) {
                System.out.println("Hello Customer");
                System.out.println("Enter Complaint ID:");
                String customerID = SC.nextLine();
                System.out.println("Enter Complaint Description:");
                String customerDescription = SC.nextLine();
                System.out.println("Priority Options:\n" +
                        "1-LOW\n" +
                        "2-MEDIUM (default)\n" +
                        "3-HIGH");
                System.out.println("Select Priority Here:(enter 1,2 or 3)");
                String customerPriority = SC.nextLine();
                System.out.println("done, Thank you");
                if (customerPriority.equals("1")){
                    customerPriority = "LOW" ;
                }
                else if (customerPriority.equals("2")){
                    customerPriority = "MEDIUM" ;
                }
                else if (customerPriority.equals("3")){
                    customerPriority = "HIGH" ;
                }
                else {
                    customerPriority = "MEDIUM";
                }
                String descriptionAndPriority = customerDescription + " priority:" + customerPriority ;
                customerComplainsMap.put(customerID, descriptionAndPriority);

            }



            //admin section
            else if (userChoise == 2) {
                System.out.println("Hello Admin Please Enter Your password:");
                String passwordCheck = SC.nextLine();

                if (passwordCheck.equals(adminPassword)) {
                    while (adminRunning){
                        System.out.println("-Admin Page-");
                        System.out.println("1- View all complaints");
                        System.out.println("2- Search complaint by ID");
                        System.out.println("3- Close a complaint");
                        System.out.println("4- Assign complaints to support staff member");
                        System.out.println("5- View  assign complaints report");
                        System.out.println("6- View comments and replies from the stuff");
                        System.out.println("7- Logout from admin page");

                        String adminOption = SC.nextLine();


                        if (adminOption.equals("1")) {
                            System.out.println("View Complaints: " + customerComplainsMap);
                        }

                        else if (adminOption.equals("2")) {
                            System.out.println("Enter complaint ID:");
                            String searchByID = SC.nextLine();

                            System.out.println("here it is: " + customerComplainsMap.get(searchByID));

                            String complainsGet = customerComplainsMap.get(searchByID);
                            String updatedWithStates = complainsGet + " States: OPEN";
                            customerComplainsMap.put(searchByID, updatedWithStates);
                        }

                        else if (adminOption.equals("3")) {
                            System.out.println("Enter complaint ID you want to close:");
                            String searchByID = SC.nextLine();

                            if (customerComplainsMap.containsKey(searchByID)) {
                                String complainsGet = customerComplainsMap.get(searchByID);
                                if (complainsGet.endsWith("CLOSED")) {
                                    System.out.println("You can't close an already CLOSED complaint.");
                                }
                                else {
                                    String updatedWithStates = complainsGet + " States: CLOSED";
                                    customerComplainsMap.put(searchByID, updatedWithStates);
                                    System.out.println("Complaint Closed Successfully.");
                                }
                            } else {
                                System.out.println("Complaint ID not found or Closed");
                            }
                        }


                        //assign complaint
                        else if (adminOption.equals("4")) {
                            System.out.println("view: " + customerComplainsMap);
                            System.out.println("enter complaint ID you want assign to a staff member:");
                            String stuffComplaint = SC.nextLine();

                            String complainsGet = customerComplainsMap.get(stuffComplaint);

                            if (customerComplainsMap.containsKey(stuffComplaint) && !complainsGet.endsWith("CLOSED")){
                                System.out.println("here it is: " + customerComplainsMap.get(stuffComplaint));
                                System.out.println("view stuffs: " + stuffWithIDsMap);
                                System.out.println("enter staff member ID:");
                                String stuffSelectedID = SC.nextLine();

                                stuffWithIDsMap.get(stuffSelectedID).keySet().toArray(staffNameArray);
                                String stuffName = staffNameArray[0];
                                stuffWithIDsMap.get(stuffSelectedID).get(stuffName).add(stuffComplaint);
                            }
                            else{
                                System.out.println("Complaint ID not found or Closed");
                            }
                        }


                        else if (adminOption.equals("5")) {
                            System.out.println("View Complaints Report:");
                            String[] allComplaints = new String[customerComplainsMap.size()];
                            customerComplainsMap.keySet().toArray(allComplaints);

                            String[] staffIDs = new String[stuffWithIDsMap.size()];
                            stuffWithIDsMap.keySet().toArray(staffIDs);

                            for (int c = 0; c < allComplaints.length; c++) {
                                String complaintID = allComplaints[c];
                                String complainsGet = customerComplainsMap.get(complaintID);
                                System.out.println("Complaint: " + complaintID);

                                boolean assigned = false;
                                if (complainsGet.contains("CLOSED")) {
                                    System.out.println("Closed");
                                    assigned = true;
                                }

                                if (!complainsGet.endsWith("CLOSED")) {
                                    for (int i = 0; i < staffIDs.length; i++) {

                                        String id = staffIDs[i];
                                        HashMap<String, ArrayList<String>> stuffNameMap = stuffWithIDsMap.get(id);

                                        String[] closedName = new String[stuffNameMap.size()];
                                        stuffNameMap.keySet().toArray(closedName);

                                        String name = closedName[0];
                                        ArrayList<String> staffComplaints = stuffNameMap.get(name);

                                        if (staffComplaints.contains(complaintID) && !assigned) {
                                            System.out.println("Assigned to: " + id + " - " + name);
                                            assigned = true;
                                        }
                                    }
                                }

                                if (!assigned) {
                                    System.out.println("not assigned to anyone yet");
                                }
                            }
                        }

                        else if (adminOption.equals("6")) {
                            System.out.println(commentsMap);
                        }

                        else if (adminOption.equals("7")) {
                            adminRunning = false;
                        }

                        else {
                            System.out.println("Choose valid choice");
                        }
                    }
                }

                else {
                    System.out.println("Incorrect password");
                }
            }


            //support staff section
            else if (userChoise == 3) {
                System.out.println("Enter Staff ID:");
                String staffID = SC.nextLine();

                if (stuffWithIDsMap.containsKey(staffID)) {
                    stuffWithIDsMap.get(staffID).keySet().toArray(staffNameArray);
                    String staffName = staffNameArray[0];

                    while (staffRunning) {
                        System.out.println("1- View My Complaints");
                        System.out.println("2- Add Comment");
                        System.out.println("3- Close Complaint");
                        System.out.println("4- Logout");
                        String staffOption = SC.nextLine();

                        if (staffOption.equals("1")) {
                            System.out.println(stuffWithIDsMap.get(staffID).get(staffName));
                        }

                        else if (staffOption.equals("2")) {
                            System.out.println("Enter Complaint ID:");
                            String complaintID = SC.nextLine();

                            if (stuffWithIDsMap.get(staffID).get(staffName).contains(complaintID)) {
                                System.out.println("Enter Comment:");
                                String comment = SC.nextLine();

                                if (!commentsMap.containsKey(complaintID))
                                    commentsMap.put(complaintID, new ArrayList<>());

                                commentsMap.get(complaintID).add(staffName + " " + comment);
                                System.out.println("Comment added");
                            }

                            else
                                System.out.println("You cannot comment on complaints not assigned to you.");
                        }

                        else if (staffOption.equals("3")) {
                            System.out.println("Enter Complaint ID:");
                            String complaintID = SC.nextLine();

                            if (stuffWithIDsMap.get(staffID).get(staffName).contains(complaintID)) {
                                String complaintData = customerComplainsMap.get(complaintID);

                                if (complaintData.endsWith("CLOSED"))
                                    System.out.println("Complaint already CLOSED");

                                else {
                                    customerComplainsMap.put(complaintID, complaintData + " CLOSED");
                                    System.out.println("Closed successfully");
                                }
                            }

                            else
                                System.out.println("You cannot close complaints not assigned to you.");
                        }

                        else if (staffOption.equals("4"))
                            staffRunning = false;
                    }
                }

                else
                    System.out.println("Invalid Staff ID");
            }



            //ending main menu
            else if (userChoise == 4) {
                System.out.println("You are Out");
                keepRunning = false;
            }

            else {
                System.out.println("non-existing menu options, choose a valid option please");
            }
        }
    }
}


