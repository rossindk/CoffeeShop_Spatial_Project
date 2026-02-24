# Spatial Analysis of Coffee Shop Distribution in Jakarta
A Spatial Analysis Project using PostGIS, SQL, and QGIS

# Project Overview
This project analyzes the spatial distribution of coffee shops across Jakarta and evaluates their accessibility relative to population density. By integrating geospatial datasets, administrative boundaries, and demographic statistics, the study aims to identify spatial patterns, service gaps, and potential business opportunities.
The analysis was conducted using a spatial database workflow with PostgreSQL/PostGIS, SQL-based analytics, and visualization in QGIS.

# Objectives
- Analyze the spatial distribution of coffee shops in Jakarta
- Measure café accessibility relative to population demand
- Identify underserved areas with limited café availability
- Demonstrate spatial database design and SQL-based analysis workflows

# Data Sources
- Coffee shop locations: OpenStreetMap (OSM)
- Administrative boundaries: GADM
- Population statistics: Jakarta Open Data Portal

# Tools & Technologies
- PostgreSQL + PostGIS
- SQL (Spatial Queries & Analytical Views)
- QGIS
- OpenStreetMap Data

# Methodology
1. Data Preparation
   - Extracted coffee shop point data from OpenStreetMap
   - Imported administrative boundary shapefiles into PostGIS
   - Cleaned and standardized naming inconsistencies across datasets
2. Spatial Database Structuring
   - Designed relational tables for café locations, administrative regions, and population data
   - Generated spatial geometry columns using PostGIS functions
   - Linked datasets using spatial joins and region identifiers
3. Spatial Analysis
   - Calculated the number of cafés per subdistrict
   - Integrated population statistics into spatial tables
   - Computed café accessibility metrics per 10,000 residents
4. Visualization
   - Created choropleth maps in QGIS to illustrate accessibility patterns across Jakarta
     
# Key Findings
- Highest accessibility levels occur in Central and South Jakarta
- Several densely populated areas show low café availability
- Some subdistricts have no recorded cafés in the dataset
- Café distribution strongly aligns with commercial activity zones

# Project Structure
data/        → Sample datasets and metadata
sql/         → Database schema and analysis queries
maps/        → QGIS project files
images/      → Visualization outputs

# Why This Project Matters
This project demonstrates how spatial data integration and SQL-based analysis can be used to evaluate urban service accessibility. The workflow reflects real-world GIS practices commonly applied in urban planning, location intelligence, and market analysis.
<img width="1478" height="796" alt="SC MAP" src="https://github.com/user-attachments/assets/ac5dafbf-2e7a-4181-92ab-825d489b1214" />

# SQL Scripts

All database schema creation, data cleaning, spatial joins, and analytical queries used in this project are available in the **/sql** directory.


