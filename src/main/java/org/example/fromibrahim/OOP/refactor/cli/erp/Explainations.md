
---
## Project structure

```
ticketing/
└── src/
    ├── Ticket.java           ← abstract parent class
    ├── ComplaintTicket.java  ← subclass with static counter
    ├── FeedbackTicket.java   ← subclass with validated rating
    └── Main.java             ← demo / entry point
```
--------------------------------------------------------
-

## Class sketch

```
┌─────────────────────────────────────────────┐
│              <<abstract>>                   │
│                 Ticket                      │
│─────────────────────────────────────────────│
│  - id      : String                         │
│  - comment : String                         │
│─────────────────────────────────────────────│
│  + Ticket(id, comment)                      │
│  + getId()       : String                   │
│  + getComment()  : String                   │
│  + setId(id)     : void                     │
│  + setComment(c) : void                     │
└────────────┬──────────────────┬─────────────┘
             │  extends         │  extends
             ▼                  ▼
┌────────────────────┐  ┌────────────────────────┐
│  ComplaintTicket   │  │    FeedbackTicket       │
│────────────────────│  │────────────────────────│
│  - type : String   │  │  - rating : int (1–5)  │
│  - static          │  │────────────────────────│
│    numberOfTickets │  │  + FeedbackTicket(      │
│────────────────────│  │      id, comment,       │
│  + ComplaintTicket(│  │      rating)            │
│      id, comment,  │  │  + getRating() : int   │
│      type)         │  │  + toString()           │
│  + getType()       │  └────────────────────────┘
│  + static          │
│    getNumberOf     │
│    Tickets() : int │
│  + toString()      │
└────────────────────┘
             │
             │  stored in
             ▼
┌────────────────────────────────┐
│            Main                │
│────────────────────────────────│
│  ArrayList<Ticket> tickets     │
│  + main(String[] args)         │
└────────────────────────────────┘
```

---

## OOP concepts used

### 1. Abstract class — `Ticket`
`Ticket` is declared `abstract`, which means Java will **refuse to compile** `new Ticket()`.  
It exists only as a shared blueprint. Any code that needs a ticket must work with one of the concrete subclasses.

```java
// This line will NOT compile — intended behaviour:
Ticket t = new Ticket("X-001", "some text");   // ← compile-time error
```

### 2. Encapsulation
Every field in every class is `private`. Nothing outside a class can read or write a field directly — it must go through a getter or setter. This protects the data and lets you change the internal implementation later without breaking callers.

```java
// Right way (encapsulated):
String id = ticket.getId();

// Wrong way (impossible — field is private):
String id = ticket.id;   // ← compile-time error
```

### 3. Inheritance — `extends Ticket`
Both subclasses inherit `id`, `comment`, and the four accessor methods from `Ticket` without repeating them. The subclass constructor must call `super(id, comment)` **as its very first line** to let the parent initialise the shared fields.

```java
public ComplaintTicket(String id, String comment, String type) {
    super(id, comment);   // ← must be first; initialises inherited fields
    this.type = type;
    numberOfTickets++;
}
```

### 4. Static field — `numberOfTickets`
A `static` field belongs to the **class**, not to any object. Every `ComplaintTicket` instance shares the same counter. There is deliberately no static setter — external code must never be able to reset the count.

```java
// Call on the class, not on an instance:
System.out.println(ComplaintTicket.getNumberOfTickets());
```

### 5. Polymorphism (used in `Main`)
`ArrayList<Ticket>` holds both subtypes. When `println(ticket)` is called in the loop, Java decides **at runtime** which `toString()` to use — `ComplaintTicket`'s or `FeedbackTicket`'s. This is called *dynamic dispatch*.
