# Naming Conventions

This document defines the naming conventions used in the **SIM Card Management Data Warehouse** project. It reflects the actual naming approach used across the Bronze, Silver, and Gold layers so that the warehouse remains consistent, readable, and easy to maintain.

## General Principles

The following rules are used throughout the project:

- Use **snake_case** for all object names.
- Use **lowercase** letters only.
- Separate words with underscores (`_`).
- Use **English** for all names.
- Avoid SQL reserved words.
- Keep names clear, descriptive, and consistent across the warehouse.

## Schema Conventions

Schemas are used to separate the warehouse layers:

| Schema | Purpose |
|---|---|
| `bronze` | Raw source data loaded as received |
| `silver` | Cleaned and standardised data |
| `gold` | Business-ready reporting tables and views |

## Table Conventions

### Bronze
Bronze tables retain source-oriented naming so the origin of each dataset remains clear.

Pattern:
`<source>_<report>`

### Silver
Silver tables use cleaned operational names that reflect structured entities or reconciled datasets.

Pattern:
`<source>_<entity>` or `<domain>_<entity>`

### Gold
Gold tables and views use business-facing names designed for analytics and reporting.

Pattern:
`<category>_<entity>`

Common prefixes:
- `dim_` for dimensions
- `fact_` for fact tables
- `report_` for reporting views or summary outputs

## Column Conventions

- Surrogate keys use the suffix `_key`, for example `user_key`.
- Business fields use descriptive names such as `email_address`, `mobile_number`, and `cost_code`.
- Technical metadata columns use the prefix `dwh_`, for example `dwh_load_date` and `dwh_batch_id`.

## Stored Procedure Conventions

Stored procedures are named according to their purpose and warehouse layer.

Pattern:
`load_<layer>_<entity>`

Examples:
- `load_bronze_vodafone_report`
- `load_silver_mobile_assignment`
- `load_gold_fact_sim_assignment`

## Project Examples

The following examples show how the naming convention is applied in this project:

| Layer | Object Type | Example |
|---|---|---|
| Bronze | Raw table | `bronze.vodafone_report` |
| Silver | Cleansed table | `silver.sim_reconciliation` |
| Gold | Fact table | `gold.fact_sim_assignment` |

## Final Note

These conventions are intended to match the way the warehouse is actually built in this project. A consistent naming standard makes the solution easier to understand, easier to maintain, and stronger to present as a public portfolio project.
