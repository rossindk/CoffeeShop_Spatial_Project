-- ANALYTICAL VIEWS
-- =========================================
-- VIEW 1: Count cafes per subdistrict

CREATE VIEW vw_cafe_count_by_subdistrict AS
SELECT
    region_id,
    subdistrict,
    district,
    COUNT(*) AS total_cafes
FROM cafe_jakarta
GROUP BY region_id, subdistrict, district;

-- VIEW 2: Cafe vs Population Analysis

CREATE VIEW vw_cafe_population_analysis AS
SELECT
    c.region_id,
    c.subdistrict,
    c.district,
    c.total_cafes,
    p.total_population,
    p.population_density
FROM vw_cafe_count_by_subdistrict c
JOIN population_subdistrict p
ON LOWER(TRIM(c.subdistrict)) = LOWER(TRIM(p.subdistrict));

-- VIEW 3: Accessibility Metric

CREATE VIEW vw_cafe_accessibility AS
SELECT
    region_id,
    subdistrict,
    district,
    total_cafes,
    total_population,
    ROUND((total_cafes * 10000 / total_population), 2)
        AS cafes_per_10k_people
FROM vw_cafe_population_analysis;