
-- Table: Location
CREATE TABLE Location (
    Location_ID INT AUTO_INCREMENT PRIMARY KEY,
    Location_type VARCHAR(45),
    Address VARCHAR(45),
    Zip_code INT
);

-- Table: Crime_Incidents
CREATE TABLE Crime_Incidents (
    Incident_ID INT AUTO_INCREMENT PRIMARY KEY,
    Location_ID INT,
    Date DATE,
    Incident_type VARCHAR(45),
    FOREIGN KEY (Location_ID) REFERENCES Location(Location_ID)
);

-- Table: Victims
CREATE TABLE Victims (
    Victim_ID INT AUTO_INCREMENT PRIMARY KEY,
    Incident_ID INT,
    Age INT,
    Gender VARCHAR(45),
    Victim_name VARCHAR(45),
    FOREIGN KEY (Incident_ID) REFERENCES Crime_Incidents(Incident_ID)
);

-- Table: Suspects
CREATE TABLE Suspects (
    Suspect_ID INT AUTO_INCREMENT PRIMARY KEY,
    Incident_ID INT,
    Suspect_name VARCHAR(45),
    Gender VARCHAR(45),
    FOREIGN KEY (Incident_ID) REFERENCES Crime_Incidents(Incident_ID)
);

-- Table: Reports
CREATE TABLE Reports (
    Report_ID INT AUTO_INCREMENT PRIMARY KEY,
    Incident_ID INT,
    Suspect_ID INT,
    Date_of_report DATE,
    Description VARCHAR(45),
    FOREIGN KEY (Incident_ID) REFERENCES Crime_Incidents(Incident_ID),
    FOREIGN KEY (Suspect_ID) REFERENCES Suspects(Suspect_ID)
);

-- Table: Law_Enforcement_Agencies
CREATE TABLE Law_Enforcement_Agencies (
    Agency_ID INT AUTO_INCREMENT PRIMARY KEY,
    Agency_name VARCHAR(45),
    Report_ID INT,
    Reporting_officer VARCHAR(45),
    Contact_information INT,
    FOREIGN KEY (Report_ID) REFERENCES Reports(Report_ID)
);
