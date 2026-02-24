-- CREATE CORE TABLES
-- Jakarta Coffee Spatial Analysis Project
-- =========================================
-- TABLE: region_subdistrict
CREATE TABLE region_subdistrict (
    region_id SERIAL PRIMARY KEY,
    province VARCHAR(100),
    district VARCHAR(100),
    subdistrict VARCHAR(100)
);

-- TABLE: cafe_jakarta

CREATE TABLE cafe_jakarta (
    cafe_id SERIAL PRIMARY KEY,
    name VARCHAR(250),
    address VARCHAR(500),
    subdistrict VARCHAR(250),
    district VARCHAR(250),
    province VARCHAR(250),
    latitude DOUBLE PRECISION,
    longitude DOUBLE PRECISION,
    geom GEOMETRY(Point, 4326),
    region_id INTEGER
);

-- TABLE: population_subdistrict

CREATE TABLE population_subdistrict (
    pop_id SERIAL PRIMARY KEY,
    periode VARCHAR(20),
    district VARCHAR(100),
    subdistrict VARCHAR(100),
    total_population INTEGER,
    population_density NUMERIC
);