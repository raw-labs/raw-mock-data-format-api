-- @param name Name
-- @type name varchar
-- @default name NULL

WITH csv_data AS (
    SELECT $$
"Website, Redesign","2024-12-31","Alice","Designer","50000"
"Website, Redesign","2024-12-31","Bob","Developer","50000"
"Website, Redesign","2024-12-31","Charlie","Project Manager","50000"
"Mobile App Development","2025-03-31","David","Lead Developer","75000"
"Mobile App Development","2025-03-31","Eve","UI/UX Designer","75000"
"Mobile App Development","2025-03-31","Frank","QA Tester","75000"
"Cloud Migration","2025-06-30","Grace","Cloud Architect","120000"
"Cloud Migration","2025-06-30","Heidi","DevOps Engineer","120000"
"Cloud Migration","2025-06-30","Ivan","Security Specialist","120000"
$$ AS full_csv
),
split_rows AS (
    SELECT regexp_split_to_table(full_csv, E'\n') AS row
    FROM csv_data
),
parsed_columns AS (
    SELECT
        (regexp_matches(row, '^"([^"]*)","([^"]*)","([^"]*)","([^"]*)","([^"]*)"$'))[1] AS project,
        (regexp_matches(row, '^"([^"]*)","([^"]*)","([^"]*)","([^"]*)","([^"]*)"$'))[2] AS deadline,
        (regexp_matches(row, '^"([^"]*)","([^"]*)","([^"]*)","([^"]*)","([^"]*)"$'))[3] AS team_member_name,
        (regexp_matches(row, '^"([^"]*)","([^"]*)","([^"]*)","([^"]*)","([^"]*)"$'))[4] AS team_member_role,
        (regexp_matches(row, '^"([^"]*)","([^"]*)","([^"]*)","([^"]*)","([^"]*)"$'))[5] AS budget
    FROM split_rows
    WHERE row <> '' -- Exclude any potential empty lines
)
SELECT * 
FROM parsed_columns
WHERE (team_member_name ILIKE :name OR :name IS NULL)
