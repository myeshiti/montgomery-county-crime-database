
-- Sample Data for CrimeData
INSERT INTO CrimeData (IncidentDate, CrimeType, LocationType, ZipCode, Address) VALUES
('2023-11-03', 'Theft', 'Residential', '20850', '123 Main St'),
('2023-12-15', 'Assault', 'Commercial', '20852', '456 Market Ln'),
('2024-01-10', 'Burglary', 'Residential', '20877', '789 Hilltop Rd'),
('2024-02-20', 'Vandalism', 'Public Property', '20878', '321 Civic Center'),
('2024-03-05', 'Robbery', 'Street', '20874', '654 Sunset Blvd');

-- Sample Data for Officers
INSERT INTO Officers (Name, BadgeNumber, Department) VALUES
('John Smith', 'A123', 'Downtown Unit'),
('Maria Gonzalez', 'B456', 'Suburban Patrol'),
('Derek Chan', 'C789', 'Night Shift'),
('Hannah Kim', 'D321', 'Community Affairs');

-- Sample Data for Reports
INSERT INTO Reports (CrimeID, OfficerID, ReportDate, Summary) VALUES
(1, 1, '2023-11-04', 'Theft of bicycle from residence. No suspects.'),
(2, 2, '2023-12-16', 'Assault at shopping mall. Victim transported to hospital.'),
(3, 3, '2024-01-11', 'Burglary at private residence during night hours.'),
(4, 4, '2024-02-21', 'Graffiti reported on public library walls.'),
(5, 1, '2024-03-06', 'Armed robbery on street corner. Suspects fled scene.');
