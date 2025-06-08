
-- View 1: Total Crimes by Location Type
CREATE VIEW View_Crimes_By_LocationType AS
SELECT L.Location_type, COUNT(*) AS TotalCrimes
FROM Crime_Incidents CI
JOIN Location L ON CI.Location_ID = L.Location_ID
GROUP BY L.Location_type
ORDER BY TotalCrimes DESC;

-- View 2: Total Crimes by Type
CREATE VIEW View_Crimes_By_Type AS
SELECT Incident_type, COUNT(*) AS TotalCrimes
FROM Crime_Incidents
GROUP BY Incident_type
ORDER BY TotalCrimes DESC;

-- View 3: Total Crimes by Zip Code
CREATE VIEW View_Crimes_By_ZipCode AS
SELECT L.Zip_code, COUNT(*) AS TotalCrimes
FROM Crime_Incidents CI
JOIN Location L ON CI.Location_ID = L.Location_ID
GROUP BY L.Zip_code
ORDER BY TotalCrimes DESC;

-- View 4: Crimes by Month (e.g., for 2023)
CREATE VIEW View_Crimes_By_Month AS
SELECT EXTRACT(MONTH FROM CI.Date) AS Month, COUNT(*) AS TotalCrimes
FROM Crime_Incidents CI
WHERE EXTRACT(YEAR FROM CI.Date) = 2023
GROUP BY Month
ORDER BY Month;

-- View 5: Crimes by Day of the Week
CREATE VIEW View_Crimes_By_DayOfWeek AS
SELECT EXTRACT(DAYOFWEEK FROM CI.Date) AS DayOfWeek, COUNT(*) AS TotalCrimes
FROM Crime_Incidents CI
GROUP BY DayOfWeek
ORDER BY DayOfWeek;
