# Polymorphic Ticket System - How It Works

## Overview
This program demonstrates **runtime polymorphism** using an abstract `Ticket` class with two concrete subclasses: `ComplaintTicket` and `FeedbackTicket`.

## Object-Oriented Concepts Demonstrated
- **Abstraction**: `Ticket` is an abstract class that cannot be instantiated
- **Inheritance**: `ComplaintTicket` and `FeedbackTicket` extend `Ticket`
- **Method Overriding**: Each subclass provides its own `getId()` implementation
- **Polymorphism**: Client code uses `Ticket` references to interact with different ticket types
- **Encapsulation**: Private fields with getters/setters, private helper methods

## How to Compile and Run

```bash
# Compile all Java files
javac -d out src/main/java/org/example/fromibrahim/OOP/update/cli/erp/*.java

# Run the demo
java -cp out org.example.fromibrahim.OOP.update.cli.erp.TicketTest
```

## Expected Output

```
Complaint Ticket 1 ID: C-550e8400-e29b-41d4-a716-446655440000
Complaint Ticket 2 ID: C-6ba7b810-9dad-11d1-80b4-00c04fd430c8
Feedback Ticket 1 ID: F-3b241101-e2bb-4255-8caf-413311d1f2a1
Feedback Ticket 2 ID: F-7c5ea6a0-88aa-4a7b-9f23-1d2e5c1b9a8f

Total tickets created: 4
```

**Note**: UUID values will be different each run, but prefixes `C-` and `F-` remain consistent.

## Program Flow

1. **Ticket (Abstract Parent)**
   - Cannot be instantiated directly (`new Ticket()` causes compile error)
   - Defines common fields: `comment` and `createdAt`
   - Declares abstract method `getId()` that subclasses must implement

2. **ComplaintTicket (Concrete Child)**
   - Extends `Ticket`
   - Overrides `getId()` to return `"C-" + UUID.randomUUID().toString()`
   - Uses private helper method `buildPrefixedId()` internally

3. **FeedbackTicket (Concrete Child)**
   - Extends `Ticket`
   - Overrides `getId()` to return `"F-" + UUID.randomUUID().toString()`
   - Uses private helper method `buildPrefixedId()` internally
   - Adds additional field: `rating`

4. **TicketTest (Polymorphic Demo)**
   - Creates tickets using `Ticket` reference type (polymorphism)
   - No `instanceof`, `if/else`, or `switch` needed - runtime polymorphism handles it
   - Stores all tickets in an `ArrayList<Ticket>`
   - Each `getId()` call invokes the correct subclass implementation automatically

## Key Points
- Each ticket gets a **unique ID** due to UUID
- **Prefixes are class-specific**: `C-` for complaints, `F-` for feedback
- Client code treats all tickets as `Ticket` type - the JVM determines which `getId()` to call at runtime
- Private helper methods (`buildPrefixedId()`) are hidden from external callers (encapsulation)
