package org.example.fromrazan;
import java.util.*;


enum complaintStatus{
    OPEN,
    IN_PROGRESS,
    CLOSED

        }

        class Complaint1  {
        private int id;
        private String description;
        private ComplaintStatus status;

        public Complaint1 (int id, String description){
            this.id = id;
            this.description = description;
            this.status = ComplaintStatus.OPEN;
        }

        public int getId(){
            return id;
        }

        public ComplaintStatus getStatus(){
            return status;
        }
        public void setStatus(ComplaintStatus Status){
            this.status = status;
        }
        public String toString(){
            return "Complaint ID: " + id + ", Description: " + description + ", Status : " + status;
        }

            public boolean setStatus() {
                return false;
            }
        }

        class Supportstaff {
        private int staffId;
        private String name;

        public Supportstaff(int staffId , String name ){
            this.staffId = staffId;
            this.name = name;
        }


        public int getStaffId(){
           return staffId;
        }

        public String getName(){

            return name;
        }
        }

        class SupportModule {
            private Map<Integer, Complaint1> complaints;
            private Map<Integer, Integer> assignments;
            private Map<Integer, List<String>> comments;


            public SupportModule(Map<Integer, Complaint1> complaints , Map<Integer, Integer> assignments){
                this.complaints = complaints;
                this.assignments = assignments;
                this.comments = new HashMap<>();
            }
            public void viewComplaints(int staffId){
                System.out.println("complete assigned to staff id: " + staffId);
                boolean found = false;

                for (Map.Entry<Integer, Integer> entry: assignments.entrySet()){
                    if(entry.getValue() == staffId){
                        Complaint1 c = complaints.get(entry.getKey());
                        System.out.println(c);
                        found = true;
                    }
                }

                if (!found){
                    System.out.println("No complaints assigned. ");
                }
            }
            public void addComment(int staffId , int complaintId , String comment){

                if (!assignments.containsKey(complaintId) || assignments.get(complaintId) != staffId){
                    System.out.println("Error : you cannot comment on this complaint");
                    return;
                }
                Complaint1 complaint = complaints.get(complaintId);
                if (complaint.getStatus() == ComplaintStatus.CLOSED) {

                    System.out.println("error: can not comment on closed ");
                    return;
                }
                comments.putIfAbsent(complaintId, new ArrayList<>());
                comments.get(complaintId).add("Staff " + staffId + ": " + comment);

                System.out.println("comment added successfuly ");

            }
            public void closeComplaint(int staffId, int complaintId) {
                if (!assignments.containsKey(complaintId) || assignments.get(complaintId) != staffId) {
                    System.out.println("Error can not close this complaint  ");
                    return;

                }
                Complaint1 complaint = complaints.get(complaintId);

                if (complaint.getStatus() == ComplaintStatus.CLOSED) {
                    System.out.println("Error: Complaint already closed.");
                    return;
                }
                complaint.setStatus(ComplaintStatus.CLOSED);
                System.out.println("Complaint closed successfully ");
            }
                public void viewComments(int complaintId) {
                    if (!comments.containsKey(complaintId)) {
                        System.out.println("No comments found.");
                        return;
                    }
                    System.out.println("comments for complaint id: " + complaintId);
                    for (String comment : comments.get(complaintId)){
                        System.out.println(comment);

                    }

                }
            }
public class ERPSystem2 {
      public static void main(String [] args ){
          Map<Integer, Complaint1 > complaints = new HashMap<>();
          Map<Integer, Integer > assignments = new HashMap<>();

          complaints.put(1, new Complaint1(1, "Login issue"));
          complaints.put(2, new Complaint1(2, "Payment error"));

          assignments.put(1, 101);
          assignments.put(2, 102);

          SupportModule support = new SupportModule(complaints , assignments);

          support.viewComplaints(101);
          support.addComment(101,1, "Investigating issue ");
          support.closeComplaint(101, 1);

          support.addComment(101, 2, " Trying to access another complaint");
          support.closeComplaint(101, 1);


          support.viewComments(1);
          support.viewComplaints(101);

      }
}
