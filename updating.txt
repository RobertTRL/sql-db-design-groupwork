-- 1. Give Driver 1 (Joe Ben) a raise and update his years of experience
UPDATE Driver
SET salary = 20000, experience_driving = 6
WHERE driver_id = 1;

-- 2. Correct a typo in Trip 1's destination and increase the revenue made
UPDATE Trips
SET destination = 'Industrial Area', revenue_made = 75000
WHERE trip_id = 1;

-- 3. Adjust the fuel cost for Expense 1 (e.g., fuel prices went up) and recalculate the total
UPDATE Expenses
SET fuel = 5000, total = 12500
WHERE expense_id = 1;

-- 4. Reassign Trip 4 to a different driver due to a schedule change
UPDATE Trips
SET driver_id = 2
WHERE trip_id = 4;

-- 5. Update the model name for Truck 3 to be more specific
UPDATE Trucks
SET model = 'Suzuki Carry'
WHERE truck_id = 3;