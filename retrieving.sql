## Retrieve all drivers 
SELECT * FROM Driver; 

## Retrieve all trucks 
SELECT * FROM Trucks; 

## Retrieve all trips 
SELECT * FROM Trips; 

## Retrieve all expenses 
SELECT * FROM Expenses; 

## Retrieve trips with their driver and truck information 
SELECT Trips.trip_id, Trips.destination, Trips.revenue_made, Driver.name, Trucks.model 
FROM Trips 
JOIN Driver ON Trips.driver_id = Driver.driver_id 
JOIN Trucks ON Trips.truck_id = Trucks.truck_id; 

## Retrieve expenses with their truck information 
SELECT Expenses.expense_id, Expenses.fuel, Expenses.maintenance, Expenses.repairs, Expenses.driver_allowance, Expenses.total, Trucks.model 
FROM Expenses 
JOIN Trips ON Expenses.expense_id = Trips.expenses_id 
JOIN Trucks ON Trips.truck_id = Trucks.truck_id; 

## Retrieve trips ordered by highest revenue 
SELECT * FROM Trips 
ORDER BY revenue_made DESC; 

## Retrieve expenses ordered by highest total expense 
SELECT * FROM Expenses 
ORDER BY total DESC; 

## Retrieve all trips for driver 1 
SELECT * FROM Trips 
WHERE driver_id = 1; 

## Retrieve all trips for truck 1 
SELECT * FROM Trips 
WHERE truck_id = 1;