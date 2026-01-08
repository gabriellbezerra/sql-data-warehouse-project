/*
=============================================================
LOAD data from CSVs
=============================================================
Script Purpose:
    This script loads all data from the CSVs to the datawarehouse in staging schema.
	
WARNING:
    Running this script will reload the data from the CSVs. Be sure to have all backup.
*/

TRUNCATE TABLE staging.crm_customer_info;

\copy staging.crm_customer_info(customer_id, customer_key, customer_first_name, customer_last_name, customer_marital_status, customer_gender, customer_create_date) FROM 'C:/Users/Administrator/Documents/projects/sql-data-warehouse-project/datasets/crm_cust_info.csv' CSV HEADER;

TRUNCATE TABLE staging.crm_product_info;

\copy staging.crm_product_info(product_id, product_key, product_name, product_cost, product_line, product_start_date, product_end_date) FROM 'C:/Users/Administrator/Documents/projects/sql-data-warehouse-project/datasets/crm_prd_info.csv' CSV HEADER;

TRUNCATE TABLE staging.crm_sales_details;

\copy staging.crm_sales_details(sales_order_number, sales_product_key, sales_customer_id, sales_order_date, sales_ship_date, sales_due_date, sales_sales, sales_quantity, sales_price) FROM 'C:/Users/Administrator/Documents/projects/sql-data-warehouse-project/datasets/crm_sales_details.csv' CSV HEADER;

TRUNCATE TABLE staging.erp_cust_az12;

\copy staging.erp_cust_az12(c_id, birth_date, gender) FROM 'C:/Users/Administrator/Documents/projects/sql-data-warehouse-project/datasets/erp_cust_az12.csv' CSV HEADER;

TRUNCATE TABLE staging.erp_loc_a101;

\copy staging.erp_loc_a101(c_id, country) FROM 'C:/Users/Administrator/Documents/projects/sql-data-warehouse-project/datasets/erp_loc_a101.csv' CSV HEADER;

TRUNCATE TABLE staging.erp_px_cat_g1v2;
\copy staging.erp_px_cat_g1v2(id, category, sub_category, maintenance) FROM 'C:/Users/Administrator/Documents/projects/sql-data-warehouse-project/datasets/erp_px_cat_g1v2.csv' CSV HEADER;