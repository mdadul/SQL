# SQL

### SQL stands for Structured Query Language.

#### SQL is used to access and manipulate a database. 
MySQL is a program that understands SQL.

### SQL can:
 - insert, update, or delete records in a database.
 - create new databases, tables, stored procedures and views. 
 - retrieve data from a database, etc.
## SELECT 
The **SELECT** statement is used to select data from a database.
The result is stored in a result table, which is called the result-set.
* A query may retrieve information from selected columns or from all columns in the table. 
To create a simple **SELECT** statement, specify the name(s) of the column(s) you need from the table

**Syntax of the SQL SELECT Statement:**
```sql
SELECT column_list
FROM table_name
/* if we want to select all columns from table then, */
SELECT * FROM table_name
```

## The DISTINCT Keyword
The SQL **DISTINCT** keyword is used in conjunction with SELECT to eliminate all duplicate records and return only unique ones.
```sql
SELECT DISTINCT column_name1, column_name2
FROM table_name;
```
## The WHERE Statement
The **WHERE** clause is used to extract only those records that fulfill a specified criterion.
** The syntax for the WHERE clause:**
```sql
SELECT column_list 
FROM table_name
WHERE condition;
```

