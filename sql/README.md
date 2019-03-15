# SQL

### Courses
- DataCamp course:  [Intro to SQL for Data Science](https://www.datacamp.com/courses/intro-to-sql-for-data-science)


## `SELECT`ing columns

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

## Filtering columns

### `BETWEEN`
Checking for ranges like this is very common, so in SQL the BETWEEN keyword provides a useful shorthand for filtering values within a specified range. This query is equivalent to the one above:
```sql
SELECT title
FROM films
WHERE release_year
BETWEEN 1994 AND 2000;
```

### `WHERE IN`
```sql
SELECT name
FROM kids
WHERE age IN (2, 4, 6, 8, 10);
```

### `IS NULL` ---> missing
```sql
SELECT name
FROM people
WHERE deathdate IS NULL;
```

### `LIKE` and `NOT LIKE`
The % wildcard will match zero, one, or many characters in text. For example, the following query matches companies like 'Data', 'DataC' 'DataCamp', 'DataMind', and so on:
```sql
SELECT name
FROM companies
WHERE name LIKE 'Data%';
```
Where the second letter of name has an "r"
```sql
SELECT name
FROM people
WHERE name LIKE '_r%';
```
---

## Aggregate Functions

### `AVG`, `SUM`, `MIN`
```sql
SELECT AVG(budget)
FROM films;
```

### `WHERE`

---

## ARITHMETIC
However, the following gives a result of 1:
```sql
SELECT (4 / 3);
```

This gives you the result you would expect: 1.333.
```sql
SELECT (4.0 / 3.0) AS result;
```

## `AS` aliasing (renaming)
Aliases are helpful for making results more readable!
```sql
SELECT MAX(budget) AS max_budget,
       MAX(duration) AS max_duration
FROM films;
```





