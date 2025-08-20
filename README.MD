Relational Database Management System - MySQL
Software to manage a database

Write SQL queries to get specific info

Database Schema - tables and relations database is going to store

SQL - fundamentals, database design, schema design

What is a database?
Any collection of related info

- phonebook
- shopping list
- todo list
- your 5 best friends
- Facebook user base

Databses can be stored in different ways

- on paper
- in your mind
- on a computer
- this powerpoint
- comments section

Computers + Databases = <3

Amazon

- keeps track of products reviews purchase orders, credit cards, users, media
- trillions of pieces of information need to be stored and readily available
- information is extremely valuable and critical to amazon’s functioning
- security is essential, they store credit card ssd address phone
- information is stored on a computer

Shopping List

- keeps track of consumer products that need to be purchased
- 10-20 pieces of information need to be stored and readily available
- information is for convenience sake only and not necessary for shopping
- security is not important
- information is stored on a piece of paper or even just in someone’s memory

Database management system DBMS

- special software that helps users create and maintain a database
- makes it easy to manage large amounts of information
- handles security
- backups
- importing/exporting data
- concurrency
- interacts with software applications
  Programming languages

Amazon database diagram

- amazon interacts with DBMS to create read update delete

CRUD

- create database entries
- reading info from database retrieving or getting info
- updating existing info
- deleting info

Relational Databases (SQL)

- organize data into one or more tables
- each table has columns and rows
- a unique key identifies each row
- most popular

Non-relational (noSQL not just SQL)

- Organize data is anything but a traditional table
- key-value stores
- documents (JSON, XML, etc)
- Graphs
- Flexible Tables

Relational databases (SQL)

- Relational database management systems
- help users create and maintain a relational database
- mySQL, Oracle, postgreSQL, mariaDB

Structured Query Language (SQL)

- standardized language for interacting with RDBMS
- used to perform CRUD operations, as well as other administrative tasks (user management, security, backup)
- used to define tables and structures
- SQL code used on one RDBMS is not always portable to another without modification

Non relational databases (noSQL)

- stores data in anything but static table
- JSON, XML, blob,
- graph relational nodes

Key-value hash

- keys are mapped to values (strings, json, blob, etc…)

Non relational database management systems (NRDBMS)

- help users create and maintain a non relational database
- mongoDB, dynamoDB, apache cassandra, firebase, etc.

Implementation Specific

- any non relational database falls under this category, so there’s no set language standard
- most NRDBMS will implement their own language for performing CRUD and administrative operations on the database

Database Queries

- Queries are requests made to the database management system for specific information
- As the database’s structure become more and more complex, it becomes more difficult to get the specific pieces of information we want
- a google search is a query

Wrap up

- database is any collection of related info
- computer great for storing databases
- database management system dbms make it easy to create maintain and secure a database
- DBMS allow you to perform the CRUD operations and other administrative tasks
- two types of databases relational and non relational
- relational databases use sql and store data in tables with rows and columns
- non relational data store data using other data structures

SQL

- SQL is a language used for interacting with RDBMS
- you can use SQL to get RDBMS to do things for you
- Create retrieve update and delete data
- create and manage databases
- design and create database tables
- perform administration tasks (security, user management, import/export)

- SQL implementations vary between systems
- not all RDBMS follow the SQL standard to a ’T’
- The concepts are the same but the implementation may vary

- SQL is a hybrid language it’s 4 types of languages in one

1. Data Query Language

- Used to query the database for information
- get information that is already stored there

2. Data definition language

- Used for defining database schemas
- schema overall layout of database what tables are going to be in database what columns tables are going to have and data types columns are going to be able to store

3. Data control language

- used for controlling access to the data in the database
- user and permissions management

4. Data manipulation language

- used for inserting updating and deleting data from the database

Queries

- A query is a set of instructions given to the RDBMS written in SQL that tell the RDBMS what info you want it to retrieve for you
- tons of data in a DB
- often hidden in a complex schema
- goal is to get the data you need

MYSQL server and run SQL to create and do stuff with databases

ER diagram
Entity an object we want to model and store information about
Design db - db schema - all different tables and attributes on those tables
Requirements of data stored in db and relationships data is going to have

You can use a ER diagram middle man db storage requirements and db schema in dbms
ER diagram map different relationships different entities, different attributes for those entities to organize our data into a db schema

ER diagram different shapes symbols and text combined to define a relationship model

Entity - object you want to model and store

Attributes - specific pieces of info about an entity

Primary key - attribute uniquely identify an entity in the db table

Composite attribute - attribute broken up into sub attributes

Multi-valued attribute - an attribute that can have more than one value

Derived attribute - an attribute that can be derived from the other attributes

Multiple entities - you can define more than one entity in the diagram

Relationships - defines relationship between two entities

Total participation - all members must participate in the relationship

Relationship attribute - an attribute about the relationship

Relationship cardinality - the number of instances of an entity from a relation that can be associated with the relation

Weak entity - an entity that cannot be uniquely identified by its attributes alone

Identifying relationship - a relationship that serves to uniquely identify the weak entity

—

Company Data Storage Requirements

The company is organized into branches. Each branch has a unique number, a name

The company makes it’s money by selling to clients. Each client has a name and a unique number to identify it.

The foundation of the company is it’s employees. Each employee has a name, birthday, sex, salary and a unique number.

An employee can work for one branch at a time

Each branch will be managed by one of the employees that work there. We’ll also want to keep track of when the current manager started as manager.

An employee can act as a supervisor for other employees at the branch, an employee may also act as the supervisor for employees at other branches. An employee can have at most one supervisor.

A branch may handle a number of clients, with each client having a name and a unique number to identify it. A single client may only be handled by one branch at a time.

Employees can work with clients controlled by their branch to sell them stuff. If nescessary multiple employees can work with the same client. We’ll want to keep track of how many dollars worth of stuff each employee sells to each client they work with.

Many branches will need to work with suppliers to buy inventory. For each supplier we’ll keep track of their name and the type of product they’re selling the branch. A single supplier may supply products to multiple branches.

—

ER diagram mapping

1. Mapping of regular entity types - for each regular entity type create a relation table that includes all the simple attributes of that entity.

2. Mapping of weak entity types - for each weak entity type create a relation table that includes all simple attributes of the weak entity - the primary key of the new relation should be the partial key of the weak entity plus the primary key of it’s owner

3. Mapping of binary 1:1 relationship types - include one side of the relationship as a foreign key in the other favor total participation

4. Mapping of binary 1:N relationship types - include the 1 side’s primary key as a foreign key on the N side relation (table)

5. Mapping of binary M:N relationship types - create a new relation table who’s primary key is a combination of both entities primary key’s. Also include any relationship attributes
