/*
=============================================================
Create the schemas
=============================================================
Script Purpose:
    This script creates the schemas.
	
WARNING:
    Running this script will drop all schemas and recreate them. Be sure to backup everything first.
*/

DROP SCHEMA IF EXISTS staging;
CREATE SCHEMA staging;

DROP SCHEMA IF EXISTS trusted;
CREATE SCHEMA trusted;

DROP SCHEMA IF EXISTS analytics;
CREATE SCHEMA analytics;
