# Polymorphic Ticket IDs

A mini help-desk module demonstrating object-oriented programming concepts: abstraction, method overriding, and polymorphism.

## Concepts Practiced

- **Abstraction**: Abstract `Ticket` class
- **Concrete Classes**: `ComplaintTicket` and `FeedbackTicket`
- **Method Overriding**: Custom `getId()` implementations
- **Polymorphism**: Using Ticket reference type
- **Encapsulation**: Private helper methods

## Files

- `Ticket.java` - Abstract base class
- `ComplaintTicket.java` - Concrete ticket for complaints
- `FeedbackTicket.java` - Concrete ticket for feedback
- `Main.java` - Demo program

## How to Run

```bash
cd src/main/java
javac org/example/fromyarab/cLIERPPolymorphicTicketIDs/*.java
java org.example.fromyarab.cLIERPPolymorphicTicketIDs.Main
```

Or use Maven:

```bash
mvn compile exec:java -Dexec.mainClass="org.example.fromyarab.cLIERPPolymorphicTicketIDs.Main"
```