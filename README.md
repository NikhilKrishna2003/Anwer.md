Q1. Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.

In the SQL script, the relationship between the "Product" and "Product_Category" entities is established through a foreign key constraint.

The line "FOREIGN KEY (category_id) REFERENCES product_category(id)" estsblishes the relation between "PRODUCT" and "PRODUCT_CATEGORY"

A FOREIGN key is a column or a set of columns in a relational database table that provides a link between data in two tables. It establishes 
a relationship between the data in the two tables by referencing the primary key or a unique key in another table.

The REFERENCES keyword is used in the context of defining a foreign key constraint. It specifies the table and column that the foreign key is referencing.

In the "Product" table, the column category_id is used as a foreign key, which references the primary key id of the "Product_Category" table. 

This means that each entry in the "Product" table must have a corresponding entry in the "Product_Category" table.

Each product belongs to one specific category.

The category_id column in the "Product" table holds the identifier of the category to which the product belongs.

This relationship allows for queries and operations that involve retrieving products based on their categories, ensuring data integrity and consistency 
in the database schema.
