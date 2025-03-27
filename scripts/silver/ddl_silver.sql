/*
	===============================================================================================
	DDL SCRIPT: CREATE SILVER TABLES
	===============================================================================================

	Purpose:  
	-- This script checks if specific tables exist in the 'silver' schema and drops them before recreating them. 
	-- The tables store customer, product, sales, and ERP data.  
 
	WARNING:  
	⚠️ ALL DATA IN THESE TABLES WILL BE LOST! ⚠️  
	-- This script drops and recreates tables, meaning any existing data will be deleted.  
	-- Ensure a backup exists before running this script in a production environment.  
	-- Dropping tables might impact other processes that depend on them.  
*/



IF OBJECT_ID('silver.crm_cust_info', 'U') IS NOT NULL
	DROP TABLE silver.crm_cust_info;
CREATE TABLE silver.crm_cust_info(
	cst_id				INT,
	cst_key				VARCHAR(50),
	cst_firstname		VARCHAR(50),
	cst_lastname		VARCHAR(50),
	cst_marital_status	VARCHAR(50),
	cst_gndr			VARCHAR(50),
	cst_create_date		DATE
);

IF OBJECT_ID('silver.crm_prd_info', 'U') IS NOT NULL
	DROP TABLE silver.crm_prd_info;
CREATE TABLE.silver.crm_prd_info(
	prd_id			INT,
	prd_key			VARCHAR(50),
	prd_nm			VARCHAR(50),
	prd_cost		INT,
	prd_line		VARCHAR(50),	
	prd_start_dt	DATE,
	prd_end_dt		DATE
);

IF OBJECT_ID('silver.crm_sales_details', 'U') IS NOT NULL
	DROP TABLE silver.crm_sales_details;
CREATE TABLE silver.crm_sales_details(
	sls_ord_num		VARCHAR(50),
	sls_prd_key		VARCHAR(50),
	sls_cust_id		INT,
	sls_order_dt	INT,
	sls_ship_dt		INT,
	sls_due_dt		INT,
	sls_sales		INT,
	sls_quantity	INT,
	sls_price		INT
);

IF OBJECT_ID('silver.erp_cust_az12', 'U') IS NOT NULL
	DROP TABLE silver.erp_cust_az12;
CREATE TABLE silver.erp_cust_az12(
	cid		VARCHAR(50),
	bdate	DATE,
	gen		VARCHAR(50)
); 

IF OBJECT_ID('silver.erp_loc_a101', 'U') IS NOT NULL
	DROP TABLE silver.erp_loc_a101;
CREATE TABLE silver.erp_loc_a101(
	cid		VARCHAR(50),
	cntry	VARCHAR(50)
);

IF OBJECT_ID('silver.erp_px_cat_g1v2', 'U') IS NOT NULL
	DROP TABLE silver.erp_px_cat_g1v2;
CREATE TABLE silver.erp_px_cat_g1v2(
	id			VARCHAR(50),
	cat			VARCHAR(50),
	subcat		VARCHAR(50),
	maintenance	VARCHAR(50)
);

