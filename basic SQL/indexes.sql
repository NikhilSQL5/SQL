/* ==============================================================================
   SQL Indexing
-------------------------------------------------------------------------------
   This script demonstrates various index types in SQL Server including clustered,
   non-clustered, columnstore, unique, and filtered indexes. It provides examples 
   of creating a heap table, applying different index types, and testing their 
   usage with sample queries.

   Table of Contents:
	   Index Types:
			 - Clustered and Non-Clustered Indexes
			 - Leftmost Prefix Rule Explanation
			 - Columnstore Indexes
			 - Unique Indexes
			 - Filtered Indexes
=================================================================================
*/

/* ==============================================================================
   Clustered and Non-Clustered Indexes
============================================================================== */

-- Create a Heap Table as a copy of Sales.Customers 
SELECT *
INTO Sales.DBCustomers
FROM Sales.Customers;

-- Test Query: Select Data and Check the Execution Plan
SELECT *
FROM Sales.DBCustomers
WHERE CustomerID = 1;

-- Create a Clustered Index on Sales.DBCustomers using CustomerID
CREATE CLUSTERED INDEX idx_DBCustomers_CustomerID
ON Sales.DBCustomers (CustomerID);

-- Attempt to create a second Clustered Index on the same table (will fail) 
CREATE CLUSTERED INDEX idx_DBCustomers_CustomerID
ON Sales.DBCustomers (CustomerID);

-- Drop the Clustered Index 
DROP INDEX idx_DBCustomers_CustomerID
ON Sales.DBCustomers;

-- Test Query: Select Data with a Filter on LastName
SELECT *
FROM Sales.DBCustomers
WHERE LastName = 'Brown';

-- Create a Non-Clustered Index on LastName
CREATE NONCLUSTERED INDEX idx_DBCustomers_LastName
ON Sales.DBCustomers (LastName);

-- Create an additional Non-Clustered Index on FirstName
CREATE INDEX idx_DBCustomers_FirstName
ON Sales.DBCustomers (FirstName);

-- Create a Composite (Composed) Index on Country and Score 
CREATE INDEX idx_DBCustomers_CountryScore
ON Sales.DBCustomers (Country, Score);
