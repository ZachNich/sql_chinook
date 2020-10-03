--return customers (full name, cust id, country) who are NOT in USA;

SELECT FirstName || ' ' || LastName AS FullName, CustomerId, Country
FROM Customer
WHERE NOT Country='USA';