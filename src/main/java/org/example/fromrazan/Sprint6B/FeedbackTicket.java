package org.example.fromrazan.Sprint6B;

 class FeedbackTicket extends Ticket{

     public FeedbackTicket (String description){
         super(description);
     }

     @Override
     public String getId(){
         return generateId();
     }

     private String generateId(){
         return "F-" +System.currentTimeMillis();
     }


}
