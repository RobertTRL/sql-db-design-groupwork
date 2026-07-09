CREATE VIEW IF NOT EXISTS TripProfit AS
SELECT
    t.trip_id,
    t.destination,
    t.truck_id,
    t.driver_id,
    t.revenue_made,
    COALESCE(e.total, 0) AS total_expenses,
    t.revenue_made - COALESCE(e.total, 0) AS profit
FROM Trips t
LEFT JOIN Expenses e ON t.expenses_id = e.expense_id;

SELECT * FROM TripProfit ORDER BY profit DESC;

SELECT
    tr.truck_id,
    tr.model,
    SUM(tp.profit) AS total_profit
FROM TripProfit tp
JOIN Trucks tr ON tp.truck_id = tr.truck_id
GROUP BY tr.truck_id
ORDER BY total_profit DESC
LIMIT 1;

SELECT
    tr.truck_id,
    tr.model,
    SUM(tp.total_expenses) AS total_expenses
FROM TripProfit tp
JOIN Trucks tr ON tp.truck_id = tr.truck_id
GROUP BY tr.truck_id
ORDER BY total_expenses DESC
LIMIT 1;