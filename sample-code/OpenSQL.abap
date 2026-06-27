REPORT z_inventory_report.

SELECT product_id,
       product_name,
       stock_quantity
FROM zproduct
INTO TABLE @DATA(gt_products).

LOOP AT gt_products INTO DATA(gs_product).

  WRITE: / gs_product-product_id,
           gs_product-product_name,
           gs_product-stock_quantity.

ENDLOOP.
