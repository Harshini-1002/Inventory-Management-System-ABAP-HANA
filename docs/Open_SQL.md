# Open SQL in SAP ABAP

## What is Open SQL?

Open SQL is SAP's database-independent SQL language used to access data stored in SAP database tables.

It allows ABAP programs to read, insert, update, and delete data without worrying about the underlying database.

---

## Why Open SQL?

Open SQL provides:

- Database independence
- Better readability
- Secure database access
- Optimized execution on SAP HANA

---

## Basic Example

```abap
SELECT product_id,
       product_name,
       stock_quantity
FROM zproduct
INTO TABLE @DATA(gt_products).
```

### Explanation

- SELECT → Reads data
- FROM → Specifies the table
- INTO TABLE → Stores the result in an internal table

---

## Learning Outcome

Through this project, I learned how Open SQL is used to retrieve business data in SAP ABAP applications.
