SET LINESIZE 1000;
SET WRAP OFF;

-- ALL TABLES 
SELECT table_name FROM user_tables;

-- ALL OF OUR PACKAGES
SELECT OBJECT_NAME, OBJECT_TYPE
    FROM USER_OBJECTS
    WHERE OBJECT_TYPE = 'PACKAGE';

-- ALL TRIGGERS
SELECT trigger_name, trigger_type, triggering_event, table_owner, table_name, base_object_type, status, trigger_body
    FROM user_triggers
    ORDER BY trigger_name, table_name;


-- !!!!!!!!! MAIN TEST !!!!!!!!! 
-- -----------------------------
EXEC PKG_COSTES.RUN_TEST(10);