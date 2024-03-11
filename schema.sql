CREATE DATABASE detail;
USE detail;

CREATE TABLE product(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    description TEXT,
    SKU VARCHAR(50),
    category_id INT,
    inventory_id INT,
    price DECIMAL(10,3),
    discount_id INT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP,
	FOREIGN KEY (category_id) REFERENCES product_category(id),
    FOREIGN KEY (inventory_id) REFERENCES product_inventory(id),
	FOREIGN KEY (discount_id) references discount(id)
);


CREATE TABLE product_category(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    description TEXT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE product_inventory(
	id INT PRIMARY KEY,
    quantity INT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE discount(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    description TEXT,
    discount_percent DECIMAL(10,2),
    active BOOLEAN,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);
