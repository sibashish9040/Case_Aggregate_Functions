# Case_Aggregate_Functions


This repository provides simple yet practical SQL use cases demonstrating:
- `CASE WHEN` statements for conditional logic
- Common SQL aggregation functions (`COUNT`, `SUM`, `AVG`, `MAX`)

These queries are compatible with Microsoft SQL Server (`MS SQL Server`) and are based on a hypothetical sales database structure.

---

## 📂 Files Included

### 1. `Case when statements.sql`
This file demonstrates the power of `CASE WHEN` for transforming and analyzing data:
- **Sales Category Report**: Categorize sales into `High`, `Medium`, and `Low`, then aggregate and sort them.
- **Gender Labeling**: Replace gender codes (`M`/`F`) with full text (`Male`/`Female`).
- **Abbreviated Country Codes**: Map country names to abbreviations.
- **Null Handling in Scores**: Compute average scores treating nulls as zero.
- **Flagged Sales Count**: Count how many times each customer made a high-value order (`Sales > 30`).

### 2. `aggregation functions.sql`
This file demonstrates common aggregation operations:
- **Count Records**: Total number of customers.
- **Sum Values**: Total sales value.
- **Average Calculations**: Compute average order sales and average customer score.
- **Max Score**: Find the highest score from the customer data.

---

## 🗃️ Sample Schema References
These queries assume the following tables exist in the `SalesDB.Sales` schema:
- `Orders(OrderID, Sales, CustomerID)`
- `Customers(CustomerID, LastName, Country, Score)`
- `Employees(EmployeeID, Gender, ...)`

---

## ⚙️ How to Use

1. Open Microsoft SQL Server Management Studio (SSMS).
2. Connect to your SQL Server instance.
3. Run the queries directly after ensuring the database and tables match the assumed structure.


---

## 📧 Contact

Feel free to raise issues or suggest improvements!

---

