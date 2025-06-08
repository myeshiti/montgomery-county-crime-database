
-- Sample Data for Location
INSERT INTO Location (Location_type, Address, Zip_code) VALUES
('Residential', '123 Elm St', 20850),
('Commercial', '456 Market Ln', 20852),
('Public Property', '789 Park Ave', 20877);

-- Sample Data for Crime_Incidents
INSERT INTO Crime_Incidents (Location_ID, Date, Incident_type) VALUES
(1, '2023-10-10', 'Theft'),
(2, '2023-11-15', 'Assault'),
(3, '2024-01-20', 'Vandalism');

-- Sample Data for Victims
INSERT INTO Victims (Incident_ID, Age, Gender, Victim_name) VALUES
(1, 30, 'Female', 'Jane Doe'),
(2, 42, 'Male', 'John Smith');

-- Sample Data for Suspects
INSERT INTO Suspects (Incident_ID, Suspect_name, Gender) VALUES
(1, 'Alice Johnson', 'Female'),
(2, 'Bob Lee', 'Male'),
(3, 'Chris Green', 'Non-binary');

-- Sample Data for Reports
INSERT INTO Reports (Incident_ID, Suspect_ID, Date_of_report, Description) VALUES
(1, 1, '2023-10-11', 'Reported stolen bike'),
(2, 2, '2023-11-16', 'Fight at shopping mall'),
(3, 3, '2024-01-21', 'Graffiti found on city hall');

-- Sample Data for Law_Enforcement_Agencies
INSERT INTO Law_Enforcement_Agencies (Agency_name, Report_ID, Reporting_officer, Contact_information) VALUES
('MCPD Downtown', 1, 'Officer Daniels', 3015550101),
('MCPD North', 2, 'Officer Vega', 3015550111),
('MCPD South', 3, 'Officer Lee', 3015550122);
