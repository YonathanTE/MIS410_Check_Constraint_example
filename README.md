# Check Constraint
The query is for a check constraint that is utilized for a table based on products with SQL Server 2014. The goal is to ensure that attempts to add into the products table follow the guidelines of the constraint written.

## Guidelines
Write SQL to create appropriate check constraints for the following table:
TABLE: Product 
- Category may be NULL or it is one of two values 'Perishable' or 'Durable'
- Subcategory is always NULL if category is NULL
- UPC_CODE is always 32 characters and is allowed to have only alphabets, digits, hyphen
- dateIntroduced cannot be more than 6 months into the future

### Entity Relationship Diagram
![ERD](https://user-images.githubusercontent.com/68878624/146376097-42c98d76-d07a-4a42-b0c3-4cb3da3df0b9.png)
