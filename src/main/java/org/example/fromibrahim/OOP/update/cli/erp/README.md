# Polymorphic Ticket System - How It Works

## Object-Oriented Concepts Demonstrated
- **Abstraction**: `Ticket` is an abstract class that cannot be instantiated
- **Inheritance**: `ComplaintTicket` and `FeedbackTicket` extend `Ticket`
- **Method Overriding**: Each subclass provides its own `getId()` implementation
- **Polymorphism**: Client code uses `Ticket` references to interact with different ticket types
- **Encapsulation**: Private fields with getters/setters, private helper methods

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
