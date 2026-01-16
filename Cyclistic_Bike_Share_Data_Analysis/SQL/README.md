
Projet: Cyclistic Bike-Share Analysis
Description: Analyse des habitudes d’utilisation des vélos Cyclistic à Chicago.

# 📁 Dossier SQL – Cyclistic Bike-Share Analysis

Ce dossier contient l’ensemble des scripts SQL utilisés pour le projet **Cyclistic Bike-Share Analysis**.  
Les scripts sont organisés par étape logique afin de refléter une démarche professionnelle d’analyse de données.

---

## 📄 Contenu du dossier

### 01_cleaning_transformation.sql
Ce script correspond à la **phase de préparation et transformation des données**.

Il permet de :
- Créer de nouvelles métriques nécessaires à l’analyse :
  - Distance des trajets (`trip_distance_km`)
  - Durée des trajets (`ride_length_min`)
  - Jour de la semaine (`day_of_week`)
  - Heure de départ (`start_hour`)
- Enrichir la table nettoyée pour faciliter les analyses ultérieures
- Préparer les données pour la visualisation et le reporting

👉 Cette étape correspond à la **data preparation / data transformation**.

---

### 02_analysis_kpis.sql
Ce script correspond à la **phase d’analyse métier et de calcul des indicateurs clés (KPIs)**.

Il permet d’analyser :
- Les stations les plus utilisées par type d’utilisateur
- La durée moyenne des trajets
- Les heures de pointe
- La distance moyenne parcourue
- Les tendances d’utilisation selon le jour de la semaine

👉 Cette étape correspond à la **business analysis et à la production d’insights**.

---

## Outils
- SQL (Google BigQuery)

---

##  Objectif du dossier SQL
L’objectif de ces scripts est de :
- Structurer clairement le travail SQL
- Séparer la transformation des données de l’analyse
- Faciliter la lecture et la compréhension du projet par un recruteur ou un collaborateur


