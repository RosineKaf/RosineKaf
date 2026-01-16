/*
Project: Cyclistic Bike-Share Analysis
Author: Rosine Armelle Tinbo KAFANDO
GitHub: https://github.com/RosineKaf
Description: Analyses métier et KPIs
Tools: SQL (BigQuery)
*/

-- =========================================================
-- KPI 1 : Stations les plus utilisées par type d’utilisateur
-- =========================================================
SELECT
    member_casual,
    start_station_name,
    COUNT(ride_id) AS total_trips
FROM `cyclisticproject-451118.cyclic_data.all_trips_cleaned`
WHERE start_station_name IS NOT NULL
GROUP BY member_casual, start_station_name
ORDER BY total_trips DESC
LIMIT 10;


-- =========================================================
-- KPI 2 : Durée moyenne des trajets (en minutes)
-- =========================================================
SELECT
    member_casual,
    ROUND(AVG(ride_length_min), 2) AS avg_duration_min
FROM `cyclisticproject-451118.cyclic_data.all_trips_cleaned`
WHERE ride_length_min > 0
GROUP BY member_casual;


-- =========================================================
-- KPI 3 : Heures de pointe des trajets
-- =========================================================
SELECT
    member_casual,
    start_hour,
    COUNT(ride_id) AS total_trips
FROM `cyclisticproject-451118.cyclic_data.all_trips_cleaned`
GROUP BY member_casual, start_hour
ORDER BY member_casual, start_hour;


-- =========================================================
-- KPI 4 : Distance moyenne des trajets (en km)
-- =========================================================
SELECT
    member_casual,
    ROUND(AVG(trip_distance_km), 2) AS avg_distance_km
FROM `cyclisticproject-451118.cyclic_data.all_trips_cleaned`
WHERE trip_distance_km > 0
GROUP BY member_casual;


-- =========================================================
-- KPI 5 : Nombre de trajets par jour de la semaine
-- =========================================================
SELECT
    member_casual,
    day_of_week,
    COUNT(ride_id) AS total_trips
FROM `cyclisticproject-451118.cyclic_data.all_trips_cleaned`
GROUP BY member_casual, day_of_week
ORDER BY member_casual, day_of_week;
