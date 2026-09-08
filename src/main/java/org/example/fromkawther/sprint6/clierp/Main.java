package org.example.fromkawther.sprint6.clierp;
import java.util.ArrayList;
public class Main {
 public static void main(String[] args) {

//1-Arraylist :
 ArrayList<Ticket> tickets = new ArrayList<>();

 //2- print before start :
     System.out.println("Complaint tickets so far: " + Complaint.getNumberOfTickets());
     System.out.println("\n------ Creating tickets ------");
  //3:Create and add objects:
     Complaint c1 = new Complaint("CT-001", "Too loud", "Noise");
     tickets.add(c1);

     Complaint c2 = new Complaint("CT-002", "Too cold", "Air-con");
     tickets.add(c2);

     Feedback f1 = new Feedback("FB-001", "Great app!", 5);
     tickets.add(f1);
//4: Print the counter after adding
     System.out.println("Complaint tickets so far: " + Complaint.getNumberOfTickets());
//5: print by use loop :
     System.out.println("\n------ Ticket List ------");
     for (Ticket t : tickets) {
  // use instanceof to print correct ticket:
         if (t instanceof Complaint) {
             Complaint temp = (Complaint) t;
             System.out.println("[Complaint] id=" + temp.getId() + ", comment=" + temp.getComment() + ", type=" + temp.type);
         } else {
             Feedback temp = (Feedback) t;
             System.out.println("[Feedback ] id=" + temp.getId() + ", comment=" + temp.getComment() + ", rating=" + temp.rating);
  }
 }
 }
}

