/*
===============================================================================
Create Bronze Tables
===============================================================================
Script Purpose:
    Creates the Bronze layer tables used for raw source data loads.

Note:
    Existing Bronze tables are dropped and recreated.
===============================================================================
*/

-- Recreate the ADManager Bronze table
IF OBJECT_ID('bronze.admanager_report', 'U') IS NOT NULL
    DROP TABLE bronze.admanager_report;
GO

CREATE TABLE bronze.admanager_report (
    admanager_serial_number    INT,
    admanager_sam_account_name NVARCHAR(50),
    admanager_email_address    NVARCHAR(50),
    admanager_telephone_number NVARCHAR(50),
    admanager_mobile           NVARCHAR(50),
);
GO

-- Recreate the Vodafone Bronze table
IF OBJECT_ID('bronze.vodafone_report', 'U') IS NOT NULL
    DROP TABLE bronze.vodafone_report;
GO

CREATE TABLE bronze.vodafone_report (
    vodafone_phone_number       NVARCHAR(50),
    vodafone_user               NVARCHAR(50),
    vodafone_email              NVARCHAR(50),
    vodafone_billing_account    NVARCHAR(50),
    vodafone_corporate          NVARCHAR(50),
    vodafone_subsidiary         NVARCHAR(50),
    vodafone_status             NVARCHAR(50),
    vodafone_status_sim_card    NVARCHAR(50),
    vodafone_activation_date    DATE,
    vodafone_suspended_date     DATE,
    vodafone_price_plan         NVARCHAR(50),
    vodafone_price_options      NVARCHAR(50),
    vodafone_address            NVARCHAR(50),
    vodafone_cost_code1         NVARCHAR(50),
    vodafone_cost_code2         NVARCHAR(50),
    vodafone_cost_code3         NVARCHAR(50),
    vodafone_cost_code4         NVARCHAR(50),
);
GO

-- Recreate the mobile rollout Bronze table
IF OBJECT_ID('bronze.mobile_rollout_list', 'U') IS NOT NULL
    DROP TABLE bronze.mobile_rollout_list;
GO

CREATE TABLE bronze.mobile_rollout_list (
    rollout_active_sim                  NVARCHAR(50),
    rollout_ready                       NVARCHAR(50),
    rollout_personal_reference          NVARCHAR(50),
    rollout_employee                    NVARCHAR(50),
    rollout_email_address               NVARCHAR(50),
    rollout_meeting_date                DATE,
    rollout_meeting_location            NVARCHAR(50),
    rollout_meeting_day                 NVARCHAR(50),
    rollout_week_commencing             DATE,
    rollout_agent_phone                 NVARCHAR(50),
    rollout_asset_tag_phone             NVARCHAR(50),
    rollout_in_box_phone                NVARCHAR(50),
    rollout_sim_card_number             NVARCHAR(50),
    rollout_handed_to_operative         NVARCHAR(50),
    rollout_contact_photos_need_copying NVARCHAR(50),
    rollout_team                        NVARCHAR(50),
    rollout_job_title                   NVARCHAR(50),
    rollout_reporting_manager           NVARCHAR(50),
    rollout_mobile_phone                NVARCHAR(50),
    rollout_phone_sim                   NVARCHAR(50),
    rollout_mp_eos                      NVARCHAR(50),
    rollout_tablet                      NVARCHAR(50),
    rollout_tablet_sim                  NVARCHAR(50),
    rollout_t_eos                       NVARCHAR(50),
    rollout_replacement_mobile_phone    NVARCHAR(50),
    rollout_replacement_phone_needed    NVARCHAR(50),
    rollout_agent_2                     NVARCHAR(50),
    rollout_asset_tag2                  NVARCHAR(50),
    rollout_in_box_tablet               NVARCHAR(50),
    rollout_replacement_tablet          NVARCHAR(50),
    rollout_replacement_tablet_needed   NVARCHAR(50),
    rollout_tablet_latest_update        NVARCHAR(50),
    rollout_match_tablet                NVARCHAR(50),
    rollout_phone_latest_update         NVARCHAR(50),
    rollout_match_phone                 NVARCHAR(50),
    rollout_none_needed                 NVARCHAR(50),
    rollout_ak                          NVARCHAR(50),
);
GO
