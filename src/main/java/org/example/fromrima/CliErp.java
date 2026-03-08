package org.example.fromrima;
import java.util.ArrayList;
import java.util.Scanner;

public class CliErp {
    ArrayList <Integer> customerComplaintId=new ArrayList<>();
    ArrayList <String> customerComplaintDescriptions=new ArrayList<>();
    ArrayList <String> customerComplaintPriorities=new ArrayList<>();
    ArrayList <String> customerComplaintStatus=new ArrayList<>();
    ArrayList <String> complaintAssignedStaff=new ArrayList<>();
    ArrayList <String> complaintComments=new ArrayList<>();
    public static void main(String[] args) {
        Scanner inputBuffObj = new Scanner(System.in);
        boolean running=true;
        while (running) {
            System.out.println("-------- Main Menu --------");
            System.out.println(" 1. Customer\n 2. Admin\n 3. Support Staff\n 4. Exit");
            int userInput = inputBuffObj.nextInt();
            if(userInput==1){
                CustomerModule.main();
            }
            else if(userInput==2){
                AdminModule.main();
            }
            else if(userInput==3){
                StaffModule.main();
            }
        else if(userInput==4){
            running=false;
            System.out.println("Existing the App");
        }
        }
            inputBuffObj.close();

    }
}
