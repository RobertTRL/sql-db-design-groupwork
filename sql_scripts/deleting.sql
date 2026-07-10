PRAGMA foreign_keys = ON;

BEGIN TRANSACTION;

DELETE FROM Trips WHERE trip_id IN (1, 2, 3, 4);

DELETE FROM Expenses WHERE expense_id IN (1, 2, 3, 4);

DELETE FROM Trucks WHERE truck_id IN (1, 2, 3, 4);

DELETE FROM Driver WHERE driver_id IN (1, 2, 3, 4);

COMMIT;

