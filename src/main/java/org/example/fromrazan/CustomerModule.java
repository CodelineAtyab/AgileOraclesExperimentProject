package org.example.fromrazan;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Complaint {
    public static void main(String[] args) {
        CustomerModule customerModule = new CustomerModule();
        customerModule.createComplaint(101, "internet not working", null);
        customerModule.createComplaint(102, "billing issue", "HIGH");

        AdminModule adminModule = new AdminModule(customerModule);
        adminModule.adminMenu();
    }
    }

    class Complaint {

        private int complaintId;
        private String description;
        private String priority;
        private String status;

    public Complaint(int complaintId , String description, String priority) {
        this.complaintId = complaintId;
        this.description = description;
        this.priority = (priority == null || priority.trim().isEmpty()) ? "MEDIUM" : priority.toUpperCase();
        this.status = "OPEN";
    }

    public int getComplaintId(){
        return complaintId;
    }

    public String getStatus(){
        return status;
    }

    public void closeComplaint(){
        if (status.equals("CLOSED")){
            System.out.println("Complaint " + complaintId + "has been closed successfuly. ");
        }else {
            status = "CLOSED";
            System.out.println("Complaint" + complaintId + "has been closed  ");
        }

    }

    public String toString(){
        return "Complaint ID: " + complaintId + "\nDescrition: " + description + "\npriority: " + priority + "\nStatus: " + status + "\n";
    }
    }
    class CustomerModule{
        private List<Complaint> complaints;

        public CustomerModule() {
            complaints = new ArrayList<>();

        }
        public String createComplaint(int complaintId , String description, String priority){
         if (complaintId <= 0 ){
             return "Invalid Complaint id. must be a positive number.";
         }
         if (description == null || description.trim().isEmpty()){
             return "invalid complaint ";
            }

            String validpriority = "MEDIUM";
            if (priority != null && !priority.trim().isEmpty()){
                String p  = priority.toUpperCase();
                if (p.equals("LOW")|| p.equals("MEDIUM") || p.equals("HIGH")) {
                    validpriority = p;
                } else {
                    return"invalid priority. must be low,medium, or high";

                }
            }

            complaint c  = new complaint(complaintId,description,validpriority);
            complaints.add(c);
            return "complaint created successfully!\n" + c.toString();

        }

           public Complaint getComplaintId(int complaintId){
            for (Complaint c : complaints){
                if (c.getComplaintId() == complaintId){
                    return null;
                }
            }
            return null;
           }
           public List<Complaint> getAllcomplaints() {

            return complaints;
           }
           }

           class AdminModule{
                private static final String ADMIN_PIN="1234";
                private CustomerModule CustomerModule;

                public AdminModule(CustomerModule customerModule){
                    this.CustomerModule = customerModule;
                }

                public boolean authenticate(String pin){
                    return ADMIN_PIN.equals(pin);
                }

                public void adminMenu(){
                    Scanner scanner = new Scanner(System.in);
                    System.out.print("Enter Admin pin: ");
                    String pin = scanner.nextLine();

                 if (!authenticate(pin)){
                     System.out.println("access denied.");
                     return;

                    }

                 System.out.println("access grand .");

                 while (true) {
                     System.out.println("\n-----Admin Menu--------");
                     System.out.println("1. view all complaints");
                     System.out.println("2.search complaint");
                     System.out.println("3.close");
                     System.out.println("4.exit");


                     System.out.print("choose an option: ");
                     int choice = scanner.nextInt();


                     switch (choice){
                         case 1:
                         for (Complaint c : CustomerModule.getAllcomplaints()) {

                         }break;

                         case 2:
                             System.out.println("enter complaint id :");
                             int id = scanner.nextInt();
                             Complaint complaint = CustomerModule.getComplaintId(id);
                             if (complaint != null){
                                 System.out.println(complaint);
                             } else {
                                 System.out.println("complaint not found.");
                             }
                             break;
                         case 3:

                             System.out.print("enter complaint id to close : ");
                             int closeId = scanner.nextInt();
                             Complaint comp = CustomerModule.getComplaintId(closeId);

                             if (comp !=null){
                                 comp.closeComplaint();
                             } else {
                                 System.out.println("complaint not found ");
                             }
                             break;

                         case 4:
                             System.out.println("exiting admin");
                             return;
                         default:
                             System.out.println("invalid choice")
                     }

                 }

                }

    }
