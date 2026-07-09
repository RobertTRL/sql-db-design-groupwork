-- deleting.txt
-- SQL script to DELETE data safely for this project.
--
-- How to use:
--   sqlite3 clinic.db < deleting.txt
PRAGMA foreign_keys = ON;

BEGIN TRANSACTION;

-- Trips Data (child rows first)
-- Deletes the sample trips inserted by populate_data.txt
DELETE FROM Trips WHERE trip_id IN (1, 2, 3, 4);


-- Expenses Data
-- Deletes the sample expenses inserted by populate_data.txt
DELETE FROM Expenses WHERE expense_id IN (1, 2, 3, 4);


-- Trucks Data
-- Deletes the sample trucks inserted by populate_data.txt
DELETE FROM Trucks WHERE truck_id IN (1, 2, 3, 4);


-- Driver Data (parent rows last)
-- Deletes the sample drivers inserted by populate_data.txt
DELETE FROM Driver WHERE driver_id IN (1, 2, 3, 4);

COMMIT;

-- If you want to remove ALL rows instead, replace the above WHERE
-- clauses with plain DELETE statements (e.g. DELETE FROM Trips;).
-- These tables come from sqlcommands.txt.

