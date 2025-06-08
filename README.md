# Montgomery County Crime Database**

This project models and analyzes crime data from Montgomery County, Maryland using a fully normalized relational database schema. Designed and built by me, the system is scalable, ethical, and query-optimized.

---

## 📂 Project Structure

| Folder        | Contents |
|---------------|----------|
| `sql/`        | All SQL scripts for table creation, sample data, and analysis views |
| `ERD/`        | Entity-Relationship Diagram (`.png`) exported from MySQL Workbench |
| `docs/`       | Project documentation including ethics and lessons learned |

---

## 🛠️ Technologies

- **MySQL 8+**
- **MySQL Workbench**
- SQL Views and Queries
- ER Modeling & Normalization

---

## 🧱 Database Structure

The database includes the following tables:

- `Location`: Stores address, type, and ZIP code
- `Crime_Incidents`: Links to location; stores type and date
- `Victims`: Associated with a specific incident
- `Suspects`: Associated with a specific incident
- `Reports`: Documents the case with linked suspect & incident
- `Law_Enforcement_Agencies`: Agency and reporting officer per report

---

## 🔍 Sample Analytical Views

```sql
-- View: Total crimes by type
CREATE VIEW View_Crimes_By_Type AS
SELECT Incident_type, COUNT(*) AS TotalCrimes
FROM Crime_Incidents
GROUP BY Incident_type;

