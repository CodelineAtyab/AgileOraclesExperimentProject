# Tiny Ticketing Subsystem

A simple Java ticketing subsystem that demonstrates OOP principles including encapsulation, inheritance, abstract classes, and static fields.

## Overview

This project implements a ticketing system with two ticket types:
- **ComplaintTicket** - For customer complaints with a type (e.g., "Noise", "Air-con")
- **FeedbackTicket** - For customer feedback with a rating (1-5)

## Building

```bash
mvn compile
```

## Running

```bash
mvn exec:java -Dexec.mainClass="org.example.fromyarab.cliERPEnforceEncapsulation.Main"
```

Or run directly:
```bash
java -cp target/classes org.example.fromyarab.cliERPEnforceEncapsulation.Main
```

## Expected Output

```
Complaint tickets so far: 0

--- Creating tickets ---
ComplaintTicket CT-001 added.
ComplaintTicket CT-002 added.
FeedbackTicket  FB-001 added.

Complaint tickets so far: 2

--- Ticket List ---
[Complaint] id=CT-001, comment="Too loud",     type="Noise"
[Complaint] id=CT-002, comment="Too cold",     type="Air-con"
[Feedback ] id=FB-001, comment="Great app!",   rating=5
```

## Features

- Static ticket counter shared across all instances
- Rating validation (1-5) in FeedbackTicket
- Proper encapsulation with private fields and getters
- Abstract base class with inheritance
- Formatted toString() output