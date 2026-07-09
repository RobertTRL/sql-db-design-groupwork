PRAGMA foreign_keys = ON;

CREATE TABLE Trucks (
    truck_id INTEGER PRIMARY KEY,
    model VARCHAR(50),
    date_bought DATE
);
CREATE TABLE Driver (
    driver_id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    license_number VARCHAR(20),
    experience_driving INTEGER,
    salary INTEGER
);

CREATE TABLE Expenses (
    expense_id INTEGER PRIMARY KEY,
    fuel INTEGER,
    maintenance INTEGER,
    repairs INTEGER,
    driver_allowance INTEGER,
    total INTEGER
);

CREATE TABLE Trips (
    trip_id INTEGER PRIMARY KEY,
    destination VARCHAR,
    driver_id INTEGER,
    revenue_made INTEGER,
    expenses_id INTEGER,
    truck_id INTEGER,
    FOREIGN KEY (driver_id) REFERENCES Driver(driver_id),
    FOREIGN KEY (expenses_id) REFERENCES Expenses(expense_id),
    FOREIGN KEY (truck_id) REFERENCES Trucks(truck_id)
);