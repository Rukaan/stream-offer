# Stream Offer

This project appears to be a data processing pipeline for analyzing internet traffic data. It includes data generation, schema definitions, and SQL-based data enrichment steps.

## Project Structure

- `01.data-gen_internet_traffic.json`: Sample data for internet traffic.
- `02.schema_internet_traffic.json`: JSON schema for the internet traffic data.
- `02.schema_user_profile.json`: JSON schema for user profile data.
- `02.1 table user_profile.sql`: SQL script to create the `user_profile` table.
- `03.1 table internet_traffic_rekeyed.sql`: SQL script for re-keying the internet traffic data.
- `03.2 table internet_traffic_enrichment.sql`: SQL script for enriching the internet traffic data.
- `03.3 table internet_traffic_enrichment_domain.sql`: SQL script for enriching the data with domain information.
- `03.4 table internet_traffic_enrichment_gender.sql.sql`: SQL script for enriching the data with gender information.
- `flow.png`: A diagram illustrating the data flow.

## Getting Started

1. **Data Generation**: The `01.data-gen_internet_traffic.json` file provides the initial dataset.
2. **Schema Definition**: The JSON schema files in the `02.schema` directory define the structure of the data.
3. **Database Setup**: Use the SQL scripts in the `02.1` and `03.*` directories to create and populate the necessary tables.
4. **Data Enrichment**: The SQL scripts in the `03.*` directories perform data enrichment tasks.

