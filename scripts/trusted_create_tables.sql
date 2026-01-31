/*
=============================================================
Create Tables
=============================================================
Script Purpose:
    This script creates all the tables from 'DataWarehouseProject' after checking if they already exists. 
    If the tables exists, they are dropped and recreated.
	
WARNING:
    Running this script will drop all tables and recreate them, be sure to have backups before running it.
*/

DROP TABLE IF EXISTS trusted.crm_customer_info;
CREATE TABLE trusted.crm_customer_info(
	customer_id integer,
	customer_key character varying(50),
	customer_first_name character varying(50),
	customer_last_name character varying(50),
	customer_marital_status character varying(50),
	customer_gender character varying(50),
	customer_create_date date,
    datawarehouse_create_date date DEFAULT GETDATE()
);

DROP TABLE IF EXISTS trusted.crm_product_info;
CREATE TABLE trusted.crm_product_info(
    product_id integer,
    product_key character varying(50),
    product_name character varying(50),
    product_cost integer,
    product_line character varying(50),
    product_start_date date,
    product_end_date date
    datawarehouse_create_date date DEFAULT GETDATE()
);

DROP TABLE IF EXISTS trusted.crm_sales_details;
CREATE TABLE trusted.crm_sales_details(
    sales_order_number character varying(50),
    sales_product_key character varying(50),
    sales_customer_id character varying(50),
    sales_order_date integer,
    sales_ship_date integer,
    sales_due_date integer,
    sales_sales integer,
    sales_quantity integer,
    sales_price integer
    datawarehouse_create_date date DEFAULT GETDATE()
);

DROP TABLE IF EXISTS trusted.erp_cust_az12;
CREATE TABLE trusted.erp_cust_az12(
    c_id character varying(50),
    birth_date date,
    gender character varying(50)
    datawarehouse_create_date date DEFAULT GETDATE()
);

DROP TABLE IF EXISTS trusted.erp_loc_a101;
CREATE TABLE trusted.erp_loc_a101(
    c_id character varying(50),
    country character varying(50)
    datawarehouse_create_date date DEFAULT GETDATE()
);

DROP TABLE IF EXISTS trusted.erp_px_cat_g1v2;
CREATE TABLE trusted.erp_px_cat_g1v2(
    id character varying(50),
    category character varying(50),
    sub_category character varying(50),
    maintenance character varying(50)
    datawarehouse_create_date date DEFAULT GETDATE()
);