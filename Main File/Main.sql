
use bsc;
show tables;


SELECT
    Origin,
    Destination,
    COUNT(*) AS Total_Flights
FROM book3
GROUP BY Origin, Destination
ORDER BY Total_Flights DESC
LIMIT 10;


SELECT
    CONCAT(Origin, '-', Destination) AS Route,
    AVG(Revenue) AS Revenue,
    AVG(Profit) AS Profit
FROM Book3
GROUP BY Origin, Destination
ORDER BY Profit DESC;

SELECT
    CONCAT(Origin, '-', Destination) AS Route,
    AVG(Profit) AS Avg_Profit
FROM Book3
GROUP BY Origin, Destination
HAVING AVG(Profit) < 0;

SELECT
    CONCAT(Origin, '-', Destination) AS Route,
    (SUM(SeatsSold) * 100.0 / SUM(SeatsAvailable)) AS Occupancy_Percentage
FROM Book3
GROUP BY Origin, Destination;

SELECT
    RouteCode,
    Month,
    SUM(Profit) AS Total_Profit
FROM Book3
GROUP BY RouteCode, Month
ORDER BY RouteCode, Month;

SELECT
    RouteType,
    SUM(Revenue) AS Total_Revenue,
    SUM(Profit) AS Total_Profit
FROM Book3
GROUP BY RouteType;

SELECT
    AircraftType,
    SUM(Revenue) AS Total_Revenue,
    SUM(Profit) AS Total_Profit
FROM Book3
GROUP BY AircraftType;

SELECT
    RouteCode,
    ROUND(AVG(Revenue) / AVG(FlightDurationMins), 2) AS Revenue_Per_Minute
FROM Book3
GROUP BY RouteCode
ORDER BY Revenue_Per_Minute DESC;