//package org.example.fromrazan;

    import java.util.ArrayList;
    import java.util.List;
    import java.util.Scanner;

    public class Complaint {
        private List<Complaint> complaints;
        private Scanner scanner;

     public  Complaint() {
        this.complaints = new ArrayList<>();
        this.scanner = new Scanner(System.in);

    }

        public Complaint(int complaintId, String description, String priority) {
        }

        public void createComplaint(){
        int complaintId;
        String description;
        String priority = "MEDIUM";

        //while (true); {
        System.out.print("enter complaint id :  ");
        String idInput = scanner.nextLine();
        try {
            complaintId = Integer.parseInt(idInput);
            break;
        } catch (NumberFormatException e) {
            System.out.println(" Invalid input . enter a numeric complain id : ");
        }
        }

         while (true){
          System.out.print("Enter complaint Description: ");
           description = scanner.nextLine().trim();
           if (!description.isEmpty()) {
                break;

            }
            System.out.println("Enter description cannot be empty.enter a valid description ");
    }

          System.out.print("Select priority (LOW , MEDIUM , HIGH - dafault is MEDIUM): ");
          String inputpriority = scanner .nextLine().trim().toUpperCase();
            if (inputpriority.equals("LOW") || inputpriority.equals("HIGH")){
                priority = inputpriority;
            } else if (!inputpriority.isEmpty()) {
                System.out.println("invalid priority, default to MEDIUM.");

            }
            Complaint complaint = new Complaint (complaintId ,description, priority );
            //complaints.add(Complaint);

            System.out.println("Complaint created successfully ");
            System.out.println(complaint);


            }

            public void displayComplaints() {
                if (complaints.isEmpty()) {
                    System.out.println(" no complaints ");
                    return;
                }


                System.out.println("   Complaints   ");
                for (Complaint complaint : complaints) {
                    System.out.println(complaint);
                    System.out.println();
                }
            }
    }






