# Check Constraint
The query is for a check constraint that is utilized for a table based on products on SQL Server 2014. The goal is to ensure that attempts to add into the products table follow the guidelines of the constraint written.

## Guidelines
Write SQL to create appropriate check constraints for the following table:
TABLE: Product 
- Category may be NULL or it is one of two values 'Perishable' or 'Durable'
- Subcategory is always NULL if category is NULL
- UPC_CODE is always 32 characters and is allowed to have only alphabets, digits, hyphen
- dateIntroduced cannot be more than 6 months into the future

## Below is an Entity Relationship Diagram to display the columns available in each of the tables:
![Main_ERD_for_MI410](https://user-images.githubusercontent.com/68878624/146239408-6b717748-7eec-4a26-9a68-65a8f6a8a5ab.png)
