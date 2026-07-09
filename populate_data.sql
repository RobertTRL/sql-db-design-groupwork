Driver Data
INSERT INTO Driver (driver_id, name, license_number, experience_driving, salary) 
    VALUES (1 ,'Joe Ben', 'YDN-234', 5, 18000), 
    (2 ,'Ken Mwangi', 'KXT-678', 10, 22000), 
    (3 , 'Maina James', 'TMZ-478', 12, 22000), 
    (4 , 'Titus Alusa', 'DMV-680', 3, 18000);


Trucks Data
INSERT INTO Trucks (truck_id, model, date_bought) 
    VALUES 
    (1, 'Toyota', 25/4/2020), 
    (2 , 'Nissan', 3/7/2018), 
    (3, 'Suzuki', 18/11/2015), 
    (4, 'Toyota', '6/1/2022');



Expenses Data
INSERT INTO Expenses (expense_id, fuel, maintenance ,repairs ,driver_allowance , total) 
VALUES 
    (1, 4800, 3000, 1000, 3500, 12300), 
    (2, 3000, 4200, 2000, 2800, 12000), 
    (3, 5000, 3000, 1000, 4300, 13300), 
    (4, 10000, 3000, 5800, 6000, 24800);



Trips Data
INSERT INTO Trips (trip_id, destination, driver_id, revenue_made, expenses_id, truck_id) 
VALUES 
    (1, 'Industry area', 3, 70000, 2, 3),
    (2, 'Tatu Bridge', 1, 180000, 4, 1), 
    (3, 'Kinshasa railway', 4, 102000, 1, 4 ), 
    (4 , 'Rwanda oil reserve', 2, 98000, 3, 2);
