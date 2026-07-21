# SIM Card Management Data Warehouse and Analytics Project







Welcome to the **SIM Card Management Data Warehouse and Analytics Project** repository.  
This project demonstrates an end-to-end SQL Server and Power BI solution for reconciling SIM card, device, and user data across multiple operational systems.

Designed as a portfolio project, it showcases practical capability in:
- SQL development
- Data warehousing
- ETL pipeline design
- Data modelling
- Data quality and reconciliation
- Power BI reporting

***

## Project Background

This project is based on a real operational challenge where mobile and SIM-related data is spread across multiple systems and is not always aligned.

The main source systems are:
- **Vodafone portal** — stores user associations, email addresses, mobile numbers, SIM status, IMEI, and cost codes.
- **Active Directory (on-prem)** — stores internal user information including telephone and mobile attributes.
- **Mobile rollout / issue data** — stores assignment information for colleagues receiving new phones during a rollout under **Business Unit A**.

Because data is maintained across different systems, records can be incomplete, duplicated, or inconsistent. This project addresses that issue by building a structured warehouse that ingests raw extracts, standardises the data, reconciles records between sources, and prepares trusted datasets for Power BI reporting.

***

## Project Objective

The objective of this project is to build a modern SQL Server-based data warehouse that creates a single source of truth for SIM card and mobile assignment reporting.

The solution is designed to answer business questions such as:
- Who has which SIM or mobile number?
- Do Vodafone and Active Directory records match?
- Which records are missing critical fields such as email, mobile number, IMEI, status, or cost code?
- Which SIMs are active, disabled, assigned, unassigned, or available for reassignment?
- Which records belong to **Business Unit A**?
- What changed before and after the handset rollout?

***

## Data Architecture

This project follows a **Medallion Architecture** design using **Bronze**, **Silver**, and **Gold** layers.



### 1. Bronze Layer
Stores raw source extracts exactly as received from Vodafone, Active Directory, and rollout tracking files. This layer preserves source fidelity and supports traceability.

### 2. Silver Layer
Cleanses, standardises, deduplicates, and reconciles data between systems. This includes email normalisation, phone-number formatting, status mapping, and exception flagging.

### 3. Gold Layer
Contains business-ready reporting tables and star-schema-style models optimised for Power BI dashboards, KPI reporting, and operational analysis.

***

## Project Overview

This project involves:

1. **Data Architecture**  
   Designing a SQL Server data warehouse using Medallion Architecture.

2. **ETL / ELT Pipelines**  
   Loading Vodafone, Active Directory, and rollout datasets into Bronze, transforming them into Silver, and publishing trusted Gold-layer outputs.

3. **Data Modelling**  
   Building reporting-friendly structures such as dimensions and fact tables for SIM assignments, user records, statuses, devices, cost codes, and data-quality exceptions.

4. **Analytics and Reporting**  
   Creating SQL-based analytics and Power BI dashboards to support operational reporting, exception handling, and before-vs-after rollout analysis.

***

## Business Value

This solution is intended to provide measurable business value by:
- Improving visibility of SIM ownership and mobile assignments
- Reducing manual effort spent cross-checking Vodafone and AD records
- Highlighting missing or inconsistent data
- Supporting control of active, disabled, and reusable SIMs
- Tracking rollout progress for **Business Unit A**
- Demonstrating improvement in data quality before and after rollout activities

***

## Key Reporting Areas

The Power BI solution focuses on the following reporting areas:

### Executive Overview
High-level KPIs such as total SIMs, active SIMs, disabled SIMs, assigned SIMs, unassigned SIMs, and reusable SIMs.

### Data Quality and Reconciliation
Match rate between Vodafone and Active Directory, unmatched records, duplicate numbers, and records missing critical fields.

### SIM Assignment Reporting
Visibility of which user has which mobile number, device, SIM status, IMEI, and cost code.

### Rollout Tracking
Before-and-after comparison of rollout data to show assignment progress, issue resolution, and reduction in data-quality problems.

### Operational Exception Reporting
Action-focused lists showing records that require review, correction, or reassignment.

***

## KPIs

Example KPIs used in this project include:

- Total SIM count
- Active SIM count
- Disabled SIM count
- Assigned SIM count
- Unassigned SIM count
- Reusable SIM count
- Vodafone-to-AD match rate
- Unmatched Vodafone records
- Unmatched AD records
- Missing email, mobile, IMEI, or cost code count
- Rollout completion rate for **Business Unit A**
- Mismatch reduction after rollout

***

## Dashboard Preview

The Power BI dashboard is designed to provide a business-ready view of SIM ownership, data-quality issues, rollout progress, and reusable inventory.

> Add Power BI screenshots here once the report is complete.

```md
![Executive Overview](docs/dashboard-executive-overview.png)
![Data Quality Dashboard](docs/dashboard-data-quality.png)
![Rollout Dashboard](docs/dashboard-rollout.png)
```

Suggested visuals for this section:
- Executive overview dashboard
- Data quality and reconciliation dashboard
- SIM assignment drill-through page
- Rollout progress dashboard

***

## Source Systems

| Source | Description |
|---|---|
| Vodafone export | SIM inventory, user association, mobile number, status, IMEI, and cost code |
| Active Directory export | Internal user identity data including email, telephone, and mobile attributes |
| Mobile rollout data | Phone issue and assignment data for users in scope during rollout |

***

## Project Requirements

### Data Engineering Objective
Develop a SQL Server-based data warehouse that consolidates mobile and SIM-related data from Vodafone, Active Directory, and rollout tracking sources into a trusted reporting model.

### Specifications
- **Data Sources:** Import source extracts from Vodafone, AD, and rollout files.
- **Data Quality:** Cleanse and standardise source values before reporting.
- **Integration:** Reconcile multiple systems into a single reporting model.
- **Analysis:** Support operational reporting and before-vs-after rollout analysis.
- **Documentation:** Clearly document the architecture, transformation logic, KPIs, and data model.

### Analytics and Reporting Objective
Develop SQL-based analytics and Power BI reports that provide insight into:
- SIM ownership and assignment
- Data quality and reconciliation
- Mobile-number consistency between systems
- Cost-code reporting, including **Business Unit A**
- Rollout progress and measurable improvement over time

***

## Suggested Repository Structure

```text
sim-management-data-warehouse/
│
├── datasets/                           # Raw source extracts (Vodafone, AD, rollout data)
│
├── docs/                               # Project documentation and architecture
│   ├── requirements.md                 # Business and functional requirements
│   ├── data_architecture.drawio        # Medallion architecture diagram
│   ├── data_flow.drawio                # End-to-end data flow
│   ├── data_models.drawio              # Star schema / reporting model
│   ├── data_catalog.md                 # Field definitions and metadata
│   ├── naming-conventions.md           # Naming standards for SQL objects and files
│   └── kpi-definitions.md              # KPI logic and business definitions
│
├── scripts/
│   ├── bronze/                         # Raw load scripts
│   ├── silver/                         # Cleansing, standardisation, reconciliation logic
│   ├── gold/                           # Reporting tables, views, fact and dimension models
│   └── tests/                          # Data quality and validation scripts
│
├── powerbi/                            # Power BI files, screenshots, and report notes
│
├── README.md                           # Project overview
├── LICENSE
└── .gitignore
```

***

## Tools and Technologies

This project uses the following tools:

- **SQL Server Express** — warehouse database engine
- **SQL Server Management Studio (SSMS)** — database development and administration
- **Power BI** — dashboarding and analytics
- **Draw.io** — architecture, flow, and model diagrams
- **GitHub** — version control and portfolio presentation
- **CSV files** — operational extracts from Vodafone, Active Directory, and rollout tracking data

***

## Why This Project Matters

This project goes beyond report building. It demonstrates how data engineering and analytics can solve a real operational problem by improving visibility, trust, and control over mobile asset data.

It also showcases practical experience in:
- Working with multiple operational data sources
- Applying Bronze, Silver, and Gold design principles
- Building data-quality rules into ETL logic
- Designing SQL models for reporting
- Translating technical outputs into business-facing dashboards

***

## About Me

Hi, I’m **Oscar Henry**.

I’m an IT professional with experience across IT support, Microsoft 365 administration, Active Directory, Azure, and infrastructure operations. I am building a portfolio that demonstrates practical capability in SQL, data warehousing, reporting, and operational analytics through business-focused projects like this one.

## Connect With Me

- [LinkedIn](https://www.linkedin.com/in/oscarhenry001)

***

## License

This project is licensed under the [MIT License](LICENSE).
