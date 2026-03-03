package org.example.fromrazan;

import java.util.*;


enum ComplaintStatus {
    OPEN,
    IN_PROGRESS,
    CLOSED
}


class Complaint{
    private int id;
    private String description;
    private ComplaintStatus status;

    public Complaint(int id , String description){
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
    public void setStatus(ComplaintStatus status){
        this.status  = status;
    }

    public String toString(){
        return "Complaint ID :" + id + ",Description : " +description+", Status : "+ status;
    }

}
class SupportStaff{
    private int staffid;
    private String name;

    public SupportStaff(int staffid, String name){
        this.staffid = staffid;
        this.name = name;
    }

    public int getStaffid() {
        return staffid;
    }
    public String getName(){
        return name;
    }

    public String toString(){
        return "Staff ID: "+ staffid + ",Name : " + name ;
    }
}

class Admin{
    private Map<Integer, Complaint> complaints;
    private Map<Integer, SupportStaff> staffMembers;
    private Map<Integer, Integer> assignments;


    public Admin(){
        complaints = new HashMap<>();
        staffMembers = new HashMap<>();
        assignments = new HashMap<>();

    }
    public void addComplaint(Complaint complaint){
        complaints.put(complaint.getId(), complaint);
    }

    public void addStaff(SupportStaff staff){
        staffMembers.put(staff.getStaffid(), staff);
    }

    public void assignComplaint(int complaintId , int staffid){

        if (!complaints.containsKey(complaintId)){
            System.out.println("error complaint does exit. ");
            return;
        }
        Complaint complaint = complaints.get(complaintId);

        if (complaint.getStatus() == ComplaintStatus.CLOSED){
            System.out.println("error can not assign");
            return;
        }
        if (!staffMembers.containsKey(staffid)){
            System.out.println("error :staff members does not exit");
            return;
        }

        assignments.put(complaintId,staffid);
        complaint.setStatus(ComplaintStatus.IN_PROGRESS);

        System.out.println("complaint assigned successfully");
    }



    public void viewAssignments(){
        if (assignments.isEmpty()){
            System.out.println("no assignment");
            return;
        }

        for (Map.Entry<Integer,Integer> entry : assignments.entrySet()){
            Complaint complaint = complaints.get(entry.getKey());
            SupportStaff staff = staffMembers.get(entry.getValue());


            System.out.println(complaint + "--> Assigned to : " + staff.getName());
        }
    }
}
public class ERPSystem {
  public static void main (String[] args ){
      Admin admin = new Admin();


      admin.addStaff(new SupportStaff(1, "razan"));
      admin.addStaff(new SupportStaff(2, "Rayan"));


      Complaint c1 =  new Complaint(101, "login issue ");
      Complaint c2 =  new Complaint(102, "payment failure ");
      Complaint c3 =  new Complaint(103, "account locked");

      c3.setStatus(ComplaintStatus.CLOSED);

      admin.addComplaint(c1);
      admin.addComplaint(c2);
      admin.addComplaint(c3);

      admin.assignComplaint(101,1);
      admin.assignComplaint(103,2);
      admin.assignComplaint(999,1);

      admin.viewAssignments();





  }
}
