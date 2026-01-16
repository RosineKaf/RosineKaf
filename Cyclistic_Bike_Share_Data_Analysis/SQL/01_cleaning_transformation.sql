/*
Project: Cyclistic Bike-Share Analysis
Description: Nettoyage et transformation des données Cyclistic
Tools: SQL (BigQuery)
*/

-- =========================================================
-- SECTION 1 : Calcul de la distance des trajets (en km)
-- Utilisation des coordonnées GPS
-- =========================================================
CREATE OR REPLACE TABLE `cyclisticproject-451118.cyclic_data.all_trips_cleaned` AS
SELECT
    *,
    ST_DISTANCE(
        ST_GEOGPOINT(start_lng, start_lat),
        ST_GEOGPOINT(end_lng, end_lat)
    ) / 1000 AS trip_distance_km
FROM `cyclisticproject-451118.cyclic_data.all_trips_cleaned`;


-- =========================================================
-- SECTION 2 : Calcul de la durée des trajets (en minutes)
-- =========================================================
CREATE OR REPLACE TABLE `cyclisticproject-451118.cyclic_data.all_trips_cleaned` AS
SELECT
    *,
    TIMESTAMP_DIFF(ended_at, started_at, SECOND) / 60 AS ride_length_min
FROM `cyclisticproject-451118.cyclic_data.all_trips_cleaned`;


-- =========================================================
-- SECTION 3 : Ajout du jour de la semaine
-- 1 = Dimanche | 7 = Samedi
-- =========================================================
CREATE OR REPLACE TABLE `cyclisticproject-451118.cyclic_data.all_trips_cleaned` AS
SELECT
    *,
    EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week
FROM `cyclisticproject-451118.cyclic_data.all_trips_cleaned`;


-- =========================================================
-- SECTION 4 : Ajout de l’heure de départ
-- =========================================================
CREATE OR REPLACE TABLE `cyclisticproject-451118.cyclic_data.all_trips_cleaned` AS
SELECT
    *,
    EXTRACT(HOUR FROM started_at) AS start_hour
FROM `cyclisticproject-451118.cyclic_data.all_trips_cleaned`;

