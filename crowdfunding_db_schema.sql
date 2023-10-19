CREATE TABLE category(
	category_id VARCHAR(5) NOT NULL,
	category VARCHAR(25),
	PRIMARY KEY (category_id)
);

CREATE TABLE subcategory(
	subcategory_id VARCHAR(10) NOT NULL,
	subcategory VARCHAR(25),
	PRIMARY KEY (subcategory_id)
);

CREATE TABLE contacts(
	contact_id INT NOT NULL,
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	email VARCHAR(100),
	PRIMARY KEY (contact_id)
);

CREATE TABLE campaign(
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR(50),
	description VARCHAR(150),
	goal DECIMAL,
	pledged DECIMAL,
	outcome VARCHAR(25),
	backers_count INT,
	country VARCHAR(5),
	currency VARCHAR(5),
	launched_date DATE,
	end_date DATE,
	category_id VARCHAR(5),
	subcategory_id VARCHAR(10),
	PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);

SELECT *
FROM campaign;

SELECT *
FROM category;

SELECT *
FROM contacts;

SELECT *
FROM subcategory;