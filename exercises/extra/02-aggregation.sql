 -- 1. Show the flights with planes that are known to have 50 or more seats.

SELECT * FROM flights
 WHERE tailnum IN (
   SELECT tailnum FROM planes
    WHERE seats >= 50
 );

--------------------------------------------------------------------------------
-- 2. Show flights with planes that have flown at least 100 flights

SELECT * FROM flights
 WHERE tailnum IN (
   SELECT tailnum FROM flights
    GROUP BY tailnum
   HAVING count(*) >= 100
 );

--------------------------------------------------------------------------------
-- 3. What does it mean for a flight to have a missing tailnum? and what do the
-- tailnums that don't have a matching record in planes have in common?

-- A missing tailnum means a tail number has not been reported for the flight.

SELECT carrier, count(*) AS n FROM flights
 WHERE NOT EXISTS (
   SELECT 1 FROM planes
    WHERE tailnum = flights.tailnum
 )
 GROUP BY carrier
 ORDER BY n DESC;

-- Most of the tailnums missing from planes have in common that their
-- corresponding airlines is either AA or MQ. These airlines turn out to report
-- fleet number rather than tail number for flights (source: nycflights13 R
-- package vignette)
