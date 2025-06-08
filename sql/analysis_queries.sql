
-- View 1: Crimes by Location Type
CREATE VIEW View_Crimes_By_LocationType AS
SELECT LocationType, COUNT(*) AS TotalCrimes
FROM CrimeData
GROUP BY LocationType
ORDER BY TotalCrimes DESC;

-- View 2: Crimes by Type
CREATE VIEW View_Crimes_By_Type AS
SELECT CrimeType, COUNT(*) AS TotalCrimes
FROM CrimeData
GROUP BY CrimeType
ORDER BY TotalCrimes DESC;

-- View 3: Crimes by Zip Code
CREATE VIEW View_Crimes_By_ZipCode AS
SELECT ZipCode, COUNT(*) AS TotalCrimes
FROM CrimeData
GROUP BY ZipCode
ORDER BY TotalCrimes DESC;

-- View 4: Crimes by Month (use 2022 or change year as needed)
CREATE VIEW View_Crimes_By_Month AS
SELECT EXTRACT(MONTH FROM IncidentDate) AS Month, COUNT(*) AS TotalCrimes
FROM CrimeData
WHERE EXTRACT(YEAR FROM IncidentDate) = 2022
GROUP BY Month
ORDER BY Month;

-- View 5: Crimes by Day of the Week
CREATE VIEW View_Crimes_By_DayOfWeek AS
SELECT EXTRACT(DAYOFWEEK FROM IncidentDate) AS DayOfWeek, COUNT(*) AS TotalCrimes
FROM CrimeData
GROUP BY DayOfWeek
ORDER BY DayOfWeek;
