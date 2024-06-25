-- drop tables are list in this logical order to make sure the query runs more than once if for whatever reason we'd like to drop tables.
-- DROP TABLE IF EXISTS campaign;
-- DROP TABLE IF EXISTS category;
-- DROP TABLE IF EXISTS subcategory;
-- DROP TABLE IF EXISTS contacts;

-- creating tables 
CREATE TABLE category(
	category_id varchar(5) PRIMARY KEY NOT NULL,
	category varchar(60) NOT NULL
);

CREATE TABLE subcategory(
	subcategory_id varchar(10)PRIMARY KEY NOT NULL,
	subcategory varchar(60)	NOT NULL
);

CREATE TABLE contacts(
	contact_id int PRIMARY KEY NOT NULL,
	first_name varchar(60)NOT NULL,
	last_name varchar(60)NOT NULL,
	email varchar(60)NOT NULL	
);

CREATE TABLE campaign(
	cf_id int PRIMARY KEY NOT NULL,
	contact_id int NOT NULL,
	company_name varchar(60)NOT NULL,
	description varchar(60)NOT NULL,
	goal float NOT NULL,
	pledged float NOT NULL,
	outcome varchar(60)NOT NULL,
	backers_count int NOT NULL,
	country char(2)NOT NULL,
	currency char(3)NOT NULL,
	launched_date date NOT NULL,
	end_date date NOT NULL,
	category_id varchar(5) NOT NULL,
	subcategory_id varchar(10) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);

-- displaying columns to confirm we have the correct data per table

SELECT *
FROM category;

SELECT *
FROM subcategory;

SELECT *
FROM contacts;

SELECT *
FROM campaign;
