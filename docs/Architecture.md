# System Architecture

## Overview

The Inventory Management System follows a layered architecture that separates the user interface, business logic, and database. This approach makes the application easier to maintain and allows each layer to have a specific responsibility.

---

## Architecture Components

### 1. User Interface

The user interacts with the application through SAP GUI or SAP Fiori.

Examples of user activities include:

- Adding a new product
- Updating stock
- Creating a purchase order
- Viewing inventory reports

---

### 2. ABAP Application Layer

This layer contains the business logic.

Responsibilities include:

- Validating user input
- Processing inventory transactions
- Managing supplier and product data
- Executing Open SQL statements

---

### 3. CDS Views

CDS Views provide optimized access to business data stored in SAP HANA.

They help:

- Improve performance
- Reduce complex SQL queries
- Create reusable data models

---

### 4. SAP HANA Database

The database stores all business information.

Examples include:

- Product details
- Supplier details
- Purchase orders
- Inventory records

SAP HANA processes data in memory, which improves application performance.

---

## Data Flow

1. The user performs an action (for example, creating a product).
2. The request is processed by the ABAP application.
3. The application validates the data.
4. Data is stored or retrieved from the SAP HANA database.
5. The result is returned to the user.

---

## Learning Outcome

Through this project, I understood how different layers of an SAP application work together and why separating responsibilities improves maintainability and scalability.
