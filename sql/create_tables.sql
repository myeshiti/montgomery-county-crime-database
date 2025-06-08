
-- Create table for CrimeData
CREATE TABLE CrimeData (
    CrimeID INT AUTO_INCREMENT PRIMARY KEY,
    IncidentDate DATE NOT NULL,
    CrimeType VARCHAR(100),
    LocationType VARCHAR(100),
    ZipCode VARCHAR(10),
    Address VARCHAR(255)
);

-- Create table for Officers
CREATE TABLE Officers (
    OfficerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    BadgeNumber VARCHAR(50),
    Department VARCHAR(100)
);

-- Create table for Reports
CREATE TABLE Reports (
    ReportID INT AUTO_INCREMENT PRIMARY KEY,
    CrimeID INT,
    OfficerID INT,
    ReportDate DATE,
    Summary TEXT,
    FOREIGN KEY (CrimeID) REFERENCES CrimeData(CrimeID),
    FOREIGN KEY (OfficerID) REFERENCES Officers(OfficerID)
);
