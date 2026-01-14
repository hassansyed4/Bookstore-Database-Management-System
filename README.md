#Bookstore Database Management System

## Overview

This project involves designing and implementing a relational Bookstore Database using Oracle SQL to support efficient management of books, authors, users, orders, and promotions. The system emphasizes data integrity, normalization, and auditability, making it suitable for real-world transactional database use cases.

## Business Problem

Manual or poorly structured bookstore data systems often lead to redundancy, inconsistent records, and limited reporting capabilities. This project addresses these challenges by building a well-normalized relational schema with enforced constraints, ensuring accurate data storage and reliable query performance.

## Data Model & Structure

Core Entities:

Books

Authors

Categories

Users

Orders

Promotions

Relationships:

One-to-many and many-to-many relationships modeled using foreign keys

ER Modeling:

Designed using an Entity-Relationship Diagram to define entities, attributes, and relationships clearly

## Database Logic & Processing

Designed normalized tables with primary and foreign key constraints

Enforced referential integrity using constraints

Implemented triggers for audit logging and data consistency

Used SQL joins to support reporting and transactional queries

Inserted and validated sample data for testing and verification

## Key Features

Oracle SQL–based relational database design

ER diagram–driven schema development

Foreign key constraints for data integrity

Triggers for automated audit logging

Structured DDL scripts for schema creation

Insert scripts for realistic test data population

## Tech Stack

Oracle SQL

ER Modeling

Database Normalization

SQL Joins

Triggers & Constraints

Relational Database Design

## Repository Files

Bookstore_Management_DDL.ddl – Core database schema definition

Updated_Library_Management_DDL.ddl – Extended schema version

ER Diagram.png – Visual representation of database design

Insert_Data_into_Updated_BookStoreManagement.sql – Data insertion scripts

Insert_Data_into_Updated_LibraryManagement.sql – Additional sample data

Proposal for Bookstore Management System.pdf – Project proposal

MyProjectPresentation_PDF.pdf – Project presentation

## Output

A fully functional relational database schema capable of supporting bookstore operations with reliable data integrity, audit tracking, and efficient querying.

## Status

Design, implementation, and validation completed. The project is structured for future enhancements such as reporting dashboards, stored procedures, and application-level integration.
