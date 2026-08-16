-- ========================================================
-- Enterprise Practice: Elsamag IT Solutions
-- Author & Lead Technical Consultant: Samuel Chinwendu Agu
-- Repository: https://github.com/Elsamag/sql-fintech-aml-reconciliation-engine
-- File: src/aml_reconciliation_engine.sql
-- Objective: Multi-Table Set Membership Subquery Engine
-- ========================================================

SELECT 
    account_holder
FROM 
    accounts
WHERE 
    account_id IN (
        SELECT 
            account_id
        FROM 
            transfer_logs
        WHERE 
            status = 'Unverified'
    );
