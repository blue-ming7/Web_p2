CREATE DATABASE NORM;
USE  NORM;


CREATE TABLE MemberType (
    MemberTypeID INT PRIMARY KEY AUTO_INCREMENT,
    Type VARCHAR(255) NOT NULL,
    Fee INT NOT NULL
);


CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(255) NOT NULL,
    Surname VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    MemberTypeID INT,
    JoinDate DATE,
    DateOfBirth DATE,
    FOREIGN KEY (MemberTypeID) REFERENCES MemberType(MemberTypeID)
);

CREATE TABLE Floors (
    FloorID INT PRIMARY KEY AUTO_INCREMENT,
    FloorNumber INT NOT NULL
);

CREATE TABLE Machine (
    MachineID INT PRIMARY KEY AUTO_INCREMENT,
    Game VARCHAR(255) NOT NULL,
    Year INT NOT NULL,
    FloorID INT,
    MachineNo INT,
    FOREIGN KEY (FloorID) REFERENCES Floors(FloorID)
);

CREATE TABLE Staff (
    StaffID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(255) NOT NULL,
    Surname VARCHAR(255) NOT NULL,
    Role VARCHAR(255) NOT NULL,
    Session INT NOT NULL
);

CREATE TABLE Sessions (
    SessionID INT PRIMARY KEY AUTO_INCREMENT,
    SessionDay VARCHAR(255) NOT NULL , 
    SessionTime VARCHAR(255) NOT NULL,
   Floor INT NOT NULL,
   Type  VARCHAR(255) NOT NULL,
    Price  VARCHAR(255) NOT NULL
       );

CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    SessionID INT,
    Paid BOOLEAN NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (SessionID) REFERENCES Sessions(SessionID)
);

CREATE TABLE Consoles (
    ConsoleID INT PRIMARY KEY AUTO_INCREMENT,
    ConsoleName VARCHAR(255) NOT NULL
);

CREATE TABLE ConsoleGames (
    GameID INT PRIMARY KEY AUTO_INCREMENT,
    GameName VARCHAR(255) NOT NULL,
    PEGI VARCHAR(255) NOT NULL,
    ConsoleID INT,
    FOREIGN KEY (ConsoleID) REFERENCES Consoles(ConsoleID)
);

CREATE TABLE SessionConsoles (
    SessionID INT,
    ConsoleID INT,
    Quantity INT NOT NULL,
    PRIMARY KEY (SessionID, ConsoleID),
    FOREIGN KEY (SessionID) REFERENCES Sessions(SessionID),
    FOREIGN KEY (ConsoleID) REFERENCES Consoles(ConsoleID)
);




INSERT INTO MemberType (Type, Fee) VALUES ('Standard', 1500), ('Premium', 20000);

INSERT INTO Customers (FirstName, Surname, Address, MemberTypeID, JoinDate, DateOfBirth) VALUES
('Saanvi', 'Bhatta', 'Baneshwor, Kathmandu', 1, '2024-01-01', '2015-03-01'),
('Bill', 'Gates', 'Maitidevi, Kathmandu', 2, '2024-07-06', '2001-10-12'),
('Elon', 'Musk', 'Putalisadak, Kathmandu', 3, '2024-03-28', '2003-07-20'),
('Jack', 'Ma', 'N', 4, '0-0-0', '0-0-0'),
('Kamala', 'Harris', 'Kapan, Kathmandu', 5, '2024-01-05', '1973-05-01'),
('Rishi', 'Sunak', 'N', 6, '0-0-0', '0-0-0');


INSERT INTO Floors (FloorNumber) VALUES (1), (2);

INSERT INTO Machine (Game, Year, FloorID,MachineNo) VALUES
('COC', 2010, 1,23),
('GTA', 2013, 1,123),
('Spiderman', 2016, 2,45),
('PUBG', 2004, 1,1234);

INSERT INTO Staff (FirstName, Surname, Role,Session) VALUES
('Sagar', 'Aryal', 'Cafe',1),
('Bikesh', 'Khagdi', 'Maintenance',1),
('Saroj', 'Sapkota', 'Counter',1),
('Jonathan', 'Shrestha', 'Counter',2),
('Rohan', 'Chaudhary', 'Maintenance',2),
('Rajeev', 'Karmacharya', 'Cafe',2);

INSERT INTO Sessions (SessionDay, SessionTime,Floor,Type,Price) VALUES
('Sunday', '9am-9pm',1,'Free','RS 1500'),
('Sunday', '9am-9pm',2,'Free','RS 1000'),
('Saturday', '9am-9pm',1,'Free','RS 1500'),
('Friday', '6pm-10pm',2,'Special','RS 1000');

INSERT INTO Bookings (CustomerID, SessionID, Paid) VALUES
(1, 1, FALSE),
(2, 1, FALSE),
(3, 1, TRUE),
(4, 1, FALSE),
(5, 2, FALSE),
(6, 4, TRUE);

INSERT INTO Consoles (ConsoleName) VALUES ('PS2'), ('PS3'), ('Xbox 360'), ('Nintendo 64'), ('Nintendo Switch');

INSERT INTO ConsoleGames (GameName, PEGI, ConsoleID) VALUES
('Elden Ring: Shadow of the Erdtree', 'PG', 3),
('Final Fantasy VII Rebirth', 'PG', 2),
('Destiny 2: The Final Shape', 'PG', 1),
('Tekken 8', 'PG', 2),
('Persona 3 Reload', 'PG', 4),
('Cavern of Dreams', '15', 5);

INSERT INTO SessionConsoles (SessionID, ConsoleID, Quantity) VALUES
(1, 1, 2),
(2, 2, 2);

-- queries

SELECT * FROM Customers
WHERE CustomerID IN (SELECT CustomerID FROM Bookings WHERE SessionID = 1 AND Paid = FALSE);

SELECT * FROM Machines WHERE FloorID = 1 ORDER BY MachineID DESC;

SELECT COUNT(*) FROM ConsoleGames WHERE ConsoleID = (SELECT ConsoleID FROM Consoles WHERE ConsoleName = 'PS3');

SELECT * FROM Staff WHERE Role = 'Maintenance' AND StaffID IN (
    SELECT StaffID FROM Sessions WHERE SessionID = 1
);

UPDATE Machines SET FloorID = 2 WHERE Game = 'PUBG';

DELETE FROM Machines WHERE Game = 'GTA';











