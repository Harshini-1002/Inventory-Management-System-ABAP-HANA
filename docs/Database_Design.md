# Database Design

## Overview

The Inventory Management System stores information about products, suppliers, inventory, and purchase orders.

The database is designed to avoid duplicate data and maintain relationships between different business entities.

---

# Database Tables

## 1. Product (ZPRODUCT)

Stores all product information.

| Field | Data Type | Description |
|--------|-----------|-------------|
| Product_ID | CHAR(10) | Primary Key |
| Product_Name | CHAR(50) | Product Name |
| Category | CHAR(30) | Product Category |
| Unit_Price | DECIMAL | Price |
| Stock_Quantity | INTEGER | Available Stock |
| Supplier_ID | CHAR(10) | Supplier Reference |

---

## 2. Supplier (ZSUPPLIER)

Stores supplier information.

| Field | Data Type | Description |
|--------|-----------|-------------|
| Supplier_ID | CHAR(10) | Primary Key |
| Supplier_Name | CHAR(50) | Supplier Name |
| Phone | CHAR(15) | Contact Number |
| Email | CHAR(50) | Email Address |

---

## 3. Purchase Order (ZPURCHASE_ORDER)

Stores purchase order details.

| Field | Data Type | Description |
|--------|-----------|-------------|
| PO_Number | CHAR(10) | Primary Key |
| Product_ID | CHAR(10) | Product Ordered |
| Quantity | INTEGER | Quantity Ordered |
| Order_Date | DATE | Purchase Date |
| Status | CHAR(20) | Pending / Approved / Delivered |

---

## Relationship

- One Supplier can supply many Products.
- One Product can have multiple Purchase Orders.
- Inventory is updated whenever products are received or issued.

---

## Why this Design?

The tables are separated to reduce duplicate data and make the application easier to maintain.

This design also supports future enhancements such as warehouse management and reporting.
