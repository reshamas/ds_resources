# SQL

### Courses
- DataCamp course:  [Intro to SQL for Data Science](https://www.datacamp.com/courses/intro-to-sql-for-data-science)


### Notes
- Querying is an essential skill for a data scientist, since the data you need for your analyses will often live in databases.
- In this query, SELECT and FROM are called keywords. In SQL, keywords are not case-sensitive, which means you can write the same query as:
```sql
select name
from people;
```
- it's good practice to **make SQL keywords uppercase** to distinguish them from other parts of your query, like column and table names.
- It's also good practice (but not necessary for the exercises in this course) to **include a semicolon at the end of your query**. This tells SQL where the end of your query is!

### Select multiple columns
- To select multiple columns from a table, simply separate the column names with commas!
- For example, this query selects two columns, name and birthdate, from the people table:
```sql
SELECT name, birthdate
FROM people;
```
### Select distinct columns
- Often your results will include many duplicate values. If you want to select all the unique values from a column, you can use the DISTINCT keyword.
- This might be useful if, for example, you're interested in knowing which languages are represented in the films table:
```sql
SELECT DISTINCT language
FROM films;
```

### Count number of rows in a table
```sql
SELECT COUNT(*)
FROM people;
```

