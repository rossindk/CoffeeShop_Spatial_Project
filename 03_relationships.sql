-- TABLE RELATIONSHIPS
-- =========================================
-- Add foreign key relationship

ALTER TABLE cafe_jakarta
ADD CONSTRAINT fk_region
FOREIGN KEY (region_id)
REFERENCES region_subdistrict(region_id);