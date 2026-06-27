# Entity Relationship Diagram (ERD)

```mermaid
erDiagram

SUPPLIER ||--o{ PRODUCT : supplies
PRODUCT ||--o{ PURCHASE_ORDER : ordered_in

SUPPLIER {
    string Supplier_ID PK
    string Supplier_Name
    string Phone
    string Email
}

PRODUCT {
    string Product_ID PK
    string Product_Name
    string Category
    decimal Unit_Price
    int Stock_Quantity
    string Supplier_ID FK
}

PURCHASE_ORDER {
    string PO_Number PK
    string Product_ID FK
    int Quantity
    date Order_Date
    string Status
}
```

## Explanation

- One supplier can supply multiple products.
- One product can appear in multiple purchase orders.
- Each purchase order belongs to one product.
- Supplier information is stored separately to avoid duplicate data.
