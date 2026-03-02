package org.example.frommariya;

import java.util.ArrayList;

public class ComplaintC {
    public int id;
    public String desc;
    public String priority;
    public String status;
    public String assignTo;
    public ArrayList<String> comment;

    public ComplaintC(int id, String desc, String priority){
        this.id =id;
        this.desc = desc;
        this.priority = priority;
        this.status = "OPEN";
        this.assignTo = "Unassigned";
        this.comment = new ArrayList<>();
    }

    @Override
    public String toString(){
        return "Complaint ID: " + id + "\nPriority: " + priority + "\nComments: " +comment + "\nDescription: "+desc;
    }


}
