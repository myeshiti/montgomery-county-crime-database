# Montgomery County Crime Data Analysis & Database System

This project is a complete, real-world data system built to analyze crime incidents in Montgomery County, Maryland. It combines SQL database design, real civic data integration, and Python-powered data visualization — all structured to deliver insights on crime trends by type, location, and time.

---

## Project Overview

- Designed and built a **fully normalized relational database** with 6 interrelated tables
- Connected to **real Montgomery County crime data** from the Open Data Portal
- Loaded and analyzed data using **Python and pandas**
- Generated insightful **visualizations** (e.g., top crime types, monthly trends)
- Followed **ethical design** practices, including privacy and bias consideration
- Documented all aspects of the project for transparency and reproducibility

---

## Project Structure

```
montgomery-county-crime-database/
├── sql/
│ ├── create_tables_updated.sql
│ ├── sample_data_updated.sql
│ └── analysis_queries_updated.sql
├── ERD/
│ └── crime-database-erd.png
├── docs/
│ ├── ethics_considerations.md
│ └── lessons_learned.md
├── notebooks/
│ └── montgomery_crime_analysis.ipynb
└── README.md
```

---

## Database Schema

The relational database includes:

- `Location` – Address, ZIP code, and type of area  
- `Crime_Incidents` – Core table linking to location and incident type  
- `Victims` – Age, gender, and name fields for affected individuals  
- `Suspects` – Identity and gender fields  
- `Reports` – Summary and date of report per incident  
- `Law_Enforcement_Agencies` – Agency name and officer information

All tables are linked by primary and foreign keys, following 3rd normal form.

---

## Real-World Data Analysis


This Jupyter Notebook uses real crime incident data from Montgomery County to:

- Load, clean, and transform the data
- Visualize the **Top 10 crime types** in the county
- Plot **crime trends over time** by month
- Prepare insights that could support public safety decisions

---

## Ethical Considerations

- All data used complies with public record laws and privacy standards
- Personally identifiable information was excluded or anonymized
- Data modeling was carefully designed to minimize bias

---

## Lessons Learned

This project deepened my skills in:
- SQL schema design and normalization
- Data transformation and cleaning with Python
- Writing analytical queries with `CREATE VIEW`
- Visual storytelling with real datasets
- Managing ethical concerns in tech and data


---

## Built With

- MySQL & MySQL Workbench
- Python 3.11, pandas, matplotlib
- Jupyter Notebook
- Real-world civic data

---

## Future Extensions

- Automate updates from Montgomery County’s open data API
- Add Power BI or Tableau dashboards
- Expand to surrounding counties (Prince George’s, Frederick)

