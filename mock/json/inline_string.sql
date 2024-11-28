WITH base AS (
    SELECT json_array_elements('[
    {
    "project": "Website Redesign",
    "deadline": "2024-12-31",
    "team": [
        {
        "name": "Alice",
        "role": "Designer"
        },
        {
        "name": "Bob",
        "role": "Developer"
        },
        {
        "name": "Charlie",
        "role": "Project Manager"
        }
    ],
    "budget": 50000
    },
    {
    "project": "Mobile App Development",
    "deadline": "2025-03-31",
    "team": [
        {
        "name": "David",
        "role": "Lead Developer"
        },
        {
        "name": "Eve",
        "role": "UI/UX Designer"
        },
        {
        "name": "Frank",
        "role": "QA Tester"
        }
    ],
    "budget": 75000
    },
    {
    "project": "Cloud Migration",
    "deadline": "2025-06-30",
    "team": [
        {
        "name": "Grace",
        "role": "Cloud Architect"
        },
        {
        "name": "Heidi",
        "role": "DevOps Engineer"
        },
        {
        "name": "Ivan",
        "role": "Security Specialist"
        }
    ],
    "budget": 120000
    }
]'::json) AS data
)
SELECT 
    data -> 'project' as project, 
    data -> 'deadline' as deadline,
    data -> 'team' as team,
    data -> 'budget' as budget  
FROM base
