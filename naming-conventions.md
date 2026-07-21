# Naming Conventions

This document describes the naming conventions used in the **SIM Card Management Data Warehouse** project. The naming approach was chosen to keep the warehouse consistent, readable, and easy to understand across the Bronze, Silver, and Gold layers.

## General Principles

Object names in this project follow a simple and consistent structure:

- **snake_case** is used for all object names.
- **lowercase** letters are used throughout.
- Words are separated with underscores (`_`).
- **English** is used for all names.
- SQL reserved words are avoided.
- Names are kept clear and descriptive so the purpose of each object is easy to recognise.

## Schema Conventions

The warehouse is organised into three schemas that reflect the project architecture:

| Schema | Purpose |
|---|---|
| `bronze` | Stores raw source data as received |
| `silver` | Stores cleaned and standardised data |
| `gold` | Stores business-ready reporting tables and views |

## Table Conventions

### Bronze
In the Bronze layer, table names stay close to the original source reports so the source of each dataset remains easy to trace.

Pattern:
`<source>_<report>`

### Silver
In the Silver layer, table names reflect cleaned operational entities and reconciled datasets.

Pattern:
`<source>_<entity>` or `<domain>_<entity>`

### Gold
In the Gold layer, table and view names follow business-facing naming aligned to analytics and reporting.

Pattern:
`<category>_<entity>`

Common prefixes used in Gold:
- `dim_` for dimensions
- `fact_` for fact tables
- `report_` for reporting views or summary outputs

## Column Conventions

Column names in this project follow the same naming style as tables and schemas.

- Surrogate keys use the suffix `_key`, for example `user_key`.
- Business fields use descriptive names such as `email_address`, `mobile_number`, and `cost_code`.
- Technical metadata columns use the prefix `dwh_`, for example `dwh_load_date` and `dwh_batch_id`.

## Stored Procedure Conventions

Stored procedures are named according to both their purpose and the warehouse layer they support.

Pattern:
`load_<layer>_<entity>`

Examples:
- `load_bronze_vodafone_report`
- `load_silver_mobile_assignment`
- `load_gold_fact_sim_assignment`

## Project Examples

The examples below show how the naming convention is applied in this project:

| Layer | Object Type | Example |
|---|---|---|
| Bronze | Raw table | `bronze.vodafone_report` |
| Silver | Cleansed table | `silver.sim_reconciliation` |
| Gold | Fact table | `gold.fact_sim_assignment` |
