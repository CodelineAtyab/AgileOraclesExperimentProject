package org.example.fromrazan;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;



          public class Main {
              public static void main(String [] args ) {
                  CustomerModule customerModule = new CustomerModule();

                  System.out.println(customerModule.createComplaint(101, "internet not working", null));
                  System.out.println(customerModule.createComplaint(102, "BILLING ISUE", "HIGH"));
                  System.out.println(customerModule.createComplaint(103, "internet not working", "urgent"));
                  System.out.println(customerModule.getComplaintId(101));
              }}
                  class Erp2 {

                      private int complaintId;
                      private Scanner scanner;
                      private String priority;
                      private String description;


                      public Erp2(int complaintId, String description, String priority) {
                          this.complaintId = complaintId;
                          this.description = description;
                          this.priority = (priority == null || priority.trim().isEmpty()) ? "MEDIUM" : priority.toUpperCase();


                      }

                      public int getComplaintId() {
                          return complaintId;
                      }

                      public String toString() {
                          return "Complaint Created Successfully!\n" + "ID:  " + complaintId + "\n" + "priority: " + priority;
                      }
                  }

                  class CustomerModule {
                      private List<Erp2> complaints;

                      public CustomerModule() {
                          complaints = new ArrayList<>();
                      }

                      public String createComplaint(int complaintId, String description, String priority) {
                          if (complaintId <= 0) {
                              return "invalid Complaint ID . must be positive number.";

                              if (description == null || description.trim().isEmpty()) {
                                  return "invalid Complaint description ";

                              }
                              String validprority = "MEDIUM";
                              if (priority != null && !priority.trim().isEmpty()) {
                                  String p = priority.toUpperCase();
                                  if (p.equals("LOW") || p.equals("MEDIUM") || p.equals("HIGH")) {
                                      validprority = p;
                                  } else {
                                      return "invalid priority.";
                                  }
                              }

                              for (Erp2 c : complaints) {
                                  if (c.getComplaintId() == complaintId) {
                                      return "Complaint ID already exitts :";
                                  }

                              }
                              Erp2 complaint = new Erp2(complaintId, description, validprority);
                              complaints.add(complaint);
                              return complaint.toString();
                          }

                              public String getComplaintId(int complaintId) {
                                   for (Erp2 c : complaints) {
                                     if (c.getComplaintId() == complaintId) {
                                        return c.toString();
                              }
                          }
                          return "Complaint not found";
                      }
                      }
                  }






