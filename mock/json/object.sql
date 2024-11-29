WITH base AS (
    SELECT json_array_elements(
        json_build_array(
            -- First Project Record
            json_build_object(
                'project', 'Website Redesign',
                'deadline', '2024-12-31',
                'team', json_build_array(
                    json_build_object('name', 'Alice', 'role', 'Designer'),
                    json_build_object('name', 'Bob', 'role', 'Developer'),
                    json_build_object('name', 'Charlie', 'role', 'Project Manager')
                ),
                'budget', 50000
            ),
            -- Second Project Record
            json_build_object(
                'project', 'Mobile App Development',
                'deadline', '2025-03-31',
                'team', json_build_array(
                    json_build_object('name', 'David', 'role', 'Lead Developer'),
                    json_build_object('name', 'Eve', 'role', 'UI/UX Designer'),
                    json_build_object('name', 'Frank', 'role', 'QA Tester')
                ),
                'budget', 75000
            ),
            -- Third Project Record
            json_build_object(
                'project', 'Cloud Migration',
                'deadline', '2025-06-30',
                'team', json_build_array(
                    json_build_object('name', 'Grace', 'role', 'Cloud Architect'),
                    json_build_object('name', 'Heidi', 'role', 'DevOps Engineer'),
                    json_build_object('name', 'Ivan', 'role', 'Security Specialist')
                ),
                'budget', 120000
            )
        )
    )::json as data
)
SELECT 
    data -> 'project' as project, 
    data -> 'deadline' as deadline,
    data -> 'team' as team,
    data -> 'budget' as budget  
FROM base
