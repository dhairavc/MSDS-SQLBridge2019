/* DHAIRAV CHHATBAR
   SQL ASSIGNMENT #1 */


/* Q1: Which destination in the flights database is the furthest distance away, based on information in the flights table. 
Show the SQL query(s) that support your conclusion. */
SELECT origin, dest, max(distance) as maxdistance FROM flights.flights

/* Q2: What are the different numbers of engines in the planes table? For each number of engines, which aircraft have
the most number of seats? Show the SQL statement(s) that support your result. */
select manufacturer, model, max(seats), engine from planes
Group by engine

/* Q3: Show the total number of flights */
SELECT count(year) as NumFlights from flights

/* Q4: Show the total number of flights by airline (carrier) */
SELECT carrier, count(year) as NumFlights from flights
Group By carrier

/* Q5: Show all of the airlines, ordered by number of flights in descending order */
SELECT carrier, count(year) as NumFlights from flights
Group By carrier
Order By NumFlights DESC

/* Q6: Show only the top 5 airlines, by number of flights, ordered by number of flights in descending order */
SELECT carrier, count(year) as NumFlights from flights
Group By carrier
Order By NumFlights DESC
Limit 5

/* Q7: Show only the top 5 airlines, by number of flights of distance 1,000 miles or greater, ordered by number of
flights in descending order. */
SELECT carrier, count(distance) as flightsover1000 from flights
WHERE distance > 1000
GROUP BY carrier
ORDER BY flightsover1000 DESC
LIMIT 5

/* Q8: Create a question that (a) uses data from the flights database, and (b) requires aggregation to answer it, and
write down both the question, and the query that answers the question 

Q: Which 5 arline carriers have the least average deperture delay?
*/
SELECT carrier, avg(dep_delay) as AvgDelay from flights
group by carrier
Order by AvgDelay ASC
Limit 5