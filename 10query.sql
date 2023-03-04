
-- 1
SELECT Ticket_ID, Price, ROUND(Price) AS RDPrice
FROM ticket
WHERE Price = '10072.77';

-- 2 #แก้
SELECT Citizen_ID, Nationally, CONCAT(Email,'(', Fname,')') AS EmailOwn
FROM passenger
WHERE Nationally = 'Chinese';

-- 3
SELECT Pay_ID, Amount
FROM Payment
WHERE Promotion_code IS NOT NULL AND Amount LIKE '2%'
ORDER BY Amount ASC;

-- 4
SELECT COUNT(Boarding_No) AS BD_NoCount
FROM boardingpass
WHERE Boarding_No LIKE  'AxAx%';

-- 5 
SELECT Flight_No, Total_passenger_No, CONCAT(departure_city,'(', F_option, ')') AS Depart_Opt
FROM Flight
WHERE Total_passenger_No < 300;

-- 6 #แก้
SELECT Citizen_ID, Gender, CONCAT(Fname,' ', Lname) AS Fullname
FROM passenger 
   WHERE Citizen_ID IN (SELECT Citizen_ID 
         FROM passenger
         WHERE Gender = “M” AND Citizen_ID LIKE '_ _ _ _ _ _ _ _ _ _ _ _ _');



-- 7 #รันไม่ได้
SELECT Total_passenger_No, Seat_No, Flight_No  # change total to the first row
   FROM Seat
   INNER JOIN Flight
   ON  Seat.Flight_No = Flight.Flight_No
WHERE Seat_class = 'Business';

-- 8
SELECT Pay_ID, Patment_date, P_code
   FROM Payment
   INNER JOIN promotion
   ON  Payment.Promotion_code = promotion.P_code
WHERE Percentage_discount < 10;

-- 9 #รันไม่ได้
SELECT Boarding_No, Price, Purchasing_date
FROM boardingpass
INNER JOIN ticket ON  boardingpass.Boarding_No = ticket.Boarding_No
WHERE Special_meal IS NOT NULL
ORDER BY Purchasing_date ASC;

-- 10 #รันไม่ได้
SELECT  Seat_No, Seat_type, Seat_class, Flight_No
   FROM Seat
   LEFT JOIN seat_color
   ON Seat.Seat_No = seat_color.Seat_No
WHERE Seat_color IS NULL;

