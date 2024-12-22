-- ********************************************************************************
-- This script creates the database users and grants them the necessary permissions
-- ********************************************************************************

CREATE USER tasktrackr_owner
WITH PASSWORD 'tasktrackr';

GRANT ALL
ON ALL TABLES IN SCHEMA public
TO tasktrackr_owner;

GRANT ALL
ON ALL SEQUENCES IN SCHEMA public
TO tasktrackr_owner;

CREATE USER tasktrackr_appuser
WITH PASSWORD 'tasktrackr';

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO tasktrackr_appuser;

GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA public
TO tasktrackr_appuser;
