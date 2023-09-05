-- drop tables if exist

drop table if exists contacts;
drop table if exists category;
drop table if exists subcategory;
drop table if exists campaign;

-- create contacts table and set our primary key

CREATE TABLE contacts (
    contact_id VARCHAR(4) NOT NULL,
    first_name VARCHAR (150)  NOT NULL,
    last_name VARCHAR (150)  NOT NULL,
    email VARCHAR (150)  NOT NULL,
	primary key (contact_id)
);

-- create category table and set our primary key

CREATE TABLE category (
    category_id varchar (150)   NOT NULL,
    category varchar (150)  NOT NULL,
	primary key (category_id)
);

-- create subcategory table and set our primary key

CREATE TABLE subcategory (
    subcategory_id varchar (150)  NOT NULL,
    subcategory varchar (150)  NOT NULL,
	primary key (subcategory_id)
);

-- create campaign table and set our primary key and foreign keys

CREATE TABLE campaign (
    cf_id VARCHAR (5) NOT NULL,
    contact_id VARCHAR (4) NOT NULL,
    company_name VARCHAR (50)  NOT NULL,
    description VARCHAR (100)  NOT NULL,
    goal DECIMAL NOT NULL,
    pledged DECIMAL   NOT NULL,
    outcome VARCHAR (20)  NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR (2)  NOT NULL,
    currency VARCHAR (3)  NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR (5)  NOT NULL,
    subcategory_id VARCHAR (5)  NOT NULL,
	primary key (cf_id),
	foreign key (contact_id) references contacts(contact_id),
	foreign key (category_id) references category(category_id),
	foreign key (subcategory_id) references subcategory(subcategory_id)
);

select * from contacts
select * from category
select * from subcategory
select * from campaign