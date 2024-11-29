-- @param name Name
-- @type name varchar
-- @default name NULL

WITH base AS (
    SELECT 'Website Redesign' as project,'2024-12-31' as deadline,'Alice' as team_member_name,'Designer' as team_member_role,'50000' as budget
    UNION
    SELECT 'Website Redesign','2024-12-31','Bob','Developer','50000'
    UNION
    SELECT 'Website Redesign','2024-12-31','Charlie','Project Manager','50000'
    UNION
    SELECT 'Mobile App Development','2025-03-31','David','Lead Developer','75000'
    UNION
    SELECT 'Mobile App Development','2025-03-31','Eve','UI/UX Designer','75000'
    UNION
    SELECT 'Mobile App Development','2025-03-31','Frank','QA Tester','75000'
    UNION
    SELECT 'Cloud Migration','2025-06-30','Grace','Cloud Architect','120000'
    UNION
    SELECT 'Cloud Migration','2025-06-30','Heidi','DevOps Engineer','120000'
    UNION
    SELECT 'Cloud Migration','2025-06-30','Ivan','Security Specialist','120000'
)
SELECT * 
FROM base 
WHERE (team_member_name ILIKE :name OR :name IS NULL)
