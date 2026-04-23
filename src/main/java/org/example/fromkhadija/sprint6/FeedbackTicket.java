import java.time.LocalDateTime;
import java.util.UUID;

public class FeedbackTicket extends Ticket{
    //Encapsulation
    private  static final String prefixIdFeedback = "F- ";//declare it as static final because it's constant never change

    //Create constructor
    public FeedbackTicket(String comment, LocalDateTime  createdAt) {
        super(comment, createdAt);//(super) invoke the constructor of the parent class
        //this.comment = comment;// -> i changed access modifier of comment and createdAt to private
        //this.createdAt = createdAt;
    }
    //overrides getId(): FeedbackTicket → prefix “F-”
    @Override
    public String getId(){

        return prefixIdFeedback +  UUID.randomUUID().toString();
    }
    // here must use Override to implement the abstract method from supper class
    @Override
    public String toString(){
        return "Feedback Ticket: {" + "comment='" + getComment() + '\'' + ", createdAt= " + getCreatedAt() + '}';
    }





}
