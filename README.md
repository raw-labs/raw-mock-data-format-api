# RAW Mock Data Format API Template

## Table of Contents

1. [Introduction](#introduction)
   - [Description](#description)
   - [How It Works](#how-it-works)
   - [Features](#features)
2. [Getting Started](#getting-started)
3. [Overview](#overview)
4. [Endpoints](#endpoints)
5. [Short Intro to RAW APIs](#short-intro-to-raw-apis)
6. [Next Steps](#next-steps)
7. [License](#license)
8. [Contact](#contact)

## Introduction

### Description

This repository provides a **Mock Data Format API Template** using the RAW Labs platform. It demonstrates how to create API endpoints that return mock JSON and CSV responses using SQL queries. This template serves as a starting point for building APIs that can be used for prototyping, testing, or demonstrating functionality without requiring a live data source.

### How It Works

The RAW Labs platform allows you to create APIs by writing SQL queries that generate and manipulate data. By leveraging RAW's SQL capabilities, you can construct mock data directly within your queries and expose them via API endpoints. The endpoints accept query parameters that are injected into the SQL queries using the `:<variable_name>` notation, following RAW's conventions.

### Features

- **Mock Data Generation**: Provides pre-defined mock data in JSON and CSV formats.
- **Dynamic Filtering**: Supports query parameters to filter mock data dynamically.
- **Flexible Data Structures**: Demonstrates how to construct complex data structures using SQL.
- **Integration with Applications**: Designed to be consumed by applications or services that need test data.
- **Customization**: Easily modify the SQL queries to fit your testing or prototyping needs.

## Getting Started

1. **Deploy the API:**
   - Visit the [Mock Data Format API Starter Template](https://www.raw-labs.com/templates/mock-data-format-api-starter).
   - Click the **"Get Started"** button to deploy the template.
   - If you don’t have a RAW account, you’ll be prompted to create one for free. Deployment and account setup are seamless—just one click away!

2. **Explore the API:**
   - Access your API immediately inside the RAW application.
   - View endpoint details and invoke them directly to see how they function.

3. **Customize as Needed:**
   - Modify the API to suit your requirements.
   - Once you’re satisfied, re-publish the changes to make your API available instantly.

## Overview

The template focuses on providing mock data in both **JSON** and **CSV** formats. The data represents project information, including project names, deadlines, team members, roles, and budgets.

**Key Data Fields:**

- **project**: Name of the project.
- **deadline**: Project deadline.
- **team_member_name**: Name of a team member.
- **team_member_role**: Role of the team member in the project.
- **budget**: Budget allocated for the project.

## Endpoints

The following endpoints are available:

### **CSV Endpoints**

1. **GET `/mock/csv/basic`**

   - **Description**: Returns mock CSV data parsed from an inline string.
   - **Query Parameters**: None.
   - **Source Code**:
     - SQL Query: [/mock/csv/basic.sql](./mock/csv/basic.sql)
     - Endpoint Definition: [/mock/csv/basic.yml](./mock/csv/basic.yml)

2. **GET `/mock/csv/basic-filtered`**

   - **Description**: Returns mock CSV data with dynamic filtering based on the `name` parameter.
   - **Query Parameters**:
     - `name` (optional): Filter results by team member name.
   - **Source Code**:
     - SQL Query: [/mock/csv/basic-filtered.sql](./mock/csv/basic-filtered.sql)
     - Endpoint Definition: [/mock/csv/basic-filtered.yml](./mock/csv/basic-filtered.yml)

3. **GET `/mock/csv/union`**

   - **Description**: Returns mock CSV data constructed using SQL `UNION` statements.
   - **Query Parameters**: None.
   - **Source Code**:
     - SQL Query: [/mock/csv/union.sql](./mock/csv/union.sql)
     - Endpoint Definition: [/mock/csv/union.yml](./mock/csv/union.yml)

4. **GET `/mock/csv/union-filtered`**

   - **Description**: Returns mock CSV data constructed using SQL `UNION` statements, with dynamic filtering based on the `name` parameter.
   - **Query Parameters**:
     - `name` (optional): Filter results by team member name.
   - **Source Code**:
     - SQL Query: [/mock/csv/union-filtered.sql](./mock/csv/union-filtered.sql)
     - Endpoint Definition: [/mock/csv/union-filtered.yml](./mock/csv/union-filtered.yml)

### **JSON Endpoints**

5. **GET `/mock/json/basic`**

   - **Description**: Returns mock JSON data parsed from an inline string.
   - **Query Parameters**: None.
   - **Source Code**:
     - SQL Query: [/mock/json/basic.sql](./mock/json/basic.sql)
     - Endpoint Definition: [/mock/json/basic.yml](./mock/json/basic.yml)

6. **GET `/mock/json/basic-filtered`**

   - **Description**: Returns mock JSON data parsed from an inline string, with dynamic filtering based on the `name` parameter.
   - **Query Parameters**:
     - `name` (optional): Filter results by team member name.
   - **Source Code**:
     - SQL Query: [/mock/json/basic-filtered.sql](./mock/json/basic-filtered.sql)
     - Endpoint Definition: [/mock/json/basic-filtered.yml](./mock/json/basic-filtered.yml)

7. **GET `/mock/json/object`**

   - **Description**: Returns mock JSON data constructed using SQL JSON functions.
   - **Query Parameters**: None.
   - **Source Code**:
     - SQL Query: [/mock/json/object.sql](./mock/json/object.sql)
     - Endpoint Definition: [/mock/json/object.yml](./mock/json/object.yml)

8. **GET `/mock/json/object-filtered`**

   - **Description**: Returns mock JSON data constructed using SQL JSON functions, with dynamic filtering based on the `name` parameter.
   - **Query Parameters**:
     - `name` (optional): Filter results by team member name.
   - **Source Code**:
     - SQL Query: [/mock/json/object-filtered.sql](./mock/json/object-filtered.sql)
     - Endpoint Definition: [/mock/json/object-filtered.yml](./mock/json/object-filtered.yml)

## Short Intro to RAW APIs

In RAW, APIs consist of two parts: a YAML file for endpoint configuration and a SQL file for the query logic. The YAML file path defines the API’s endpoint. For example, `/mock/json/basic.yml` corresponds to the API path `/mock/json/basic`.

SQL queries can include dynamic parameters using the `:<variable_name>` syntax. For instance:

```sql
WHERE team_member_name ILIKE :name OR :name IS NULL
```

Here, `:name` becomes a query parameter, accessible via the API as `?name=<value>`.

To document parameters, enforce types, or set default values, add metadata at the top of the SQL file as in:

```sql
-- @param name Name
-- @type name varchar
-- @default name NULL
```

## Next Steps

Visit the [Mock Data Format API Starter Template](https://www.raw-labs.com/templates/mock-data-format-api-starter), deploy this template, and get started using RAW.

When you create your RAW account, you will be able to view and run these endpoints in the RAW catalog, as well as quickly modify these endpoints or create new ones in the RAW workspace, in our easy-to-use web IDE.

## License

This project is licensed under the **Apache License 2.0**. See the [LICENSE](LICENSE) file for details.

## Contact

- **Email**: [support@raw-labs.com](mailto:support@raw-labs.com)
- **Website**: [https://www.raw-labs.com](https://www.raw-labs.com)
- **Twitter**: [@RAWLabs](https://twitter.com/RAWLabs)
- **Community Forum**: [Forum](https://community.raw-labs.com)

For more information, visit our [documentation](https://docs.raw-labs.com/).
