DROP TABLE PLAYERS;
DROP TABLE WAITINGLIST;
DROP TABLE COURTSCHEDULE;
DROP TABLE RESERVATIONTYPES;
DROP TABLE COURTS;

CREATE TABLE Players 
(
	Name VARCHAR(50),
	Age INT,
	Skill_Level VARCHAR(50),
	CONSTRAINT pk_players PRIMARY KEY (Name)
);

CREATE TABLE WaitingList
(
	Player_Name_FK VARCHAR(50),
	Preferred_Day VARCHAR(50),
	StartTime_FK INT,
	EndTime_FK INT,
	CONSTRAINT pk_WaitingList PRIMARY KEY (Player_Name_FK)
);

CREATE TABLE CourtSchedule
(
	Court_Number_FK INT,
	Date INT,
	StartTime INT,
	EndTime INT, 
	DayOfWeek VARCHAR(20),
	ReservationName_FK VARCHAR(50)
);

CREATE TABLE ReservationTypes
(
	ReservationName VARCHAR(50),
	Price INT,
	CONSTRAINT pk_ReservationTypes PRIMARY KEY (ReservationName)
);

CREATE TABLE Courts
(
	Court_Number INT,
	Surface_Type VARCHAR(50),
	CONSTRAINT pk_Courts PRIMARY KEY (Court_Number)
);

INSERT INTO Players VALUES ('Rianne Liu',47,'Beginner');
INSERT INTO Players VALUES ('Anoushka Hinton',56,'Intermediate');
INSERT INTO Players VALUES ('Frederic Patrick',33,'Semi-Pro');
INSERT INTO Players VALUES ('Sohail Justice',15,'Semi-Pro');
INSERT INTO Players VALUES ('Drake Cardenas',18,'Novice');
INSERT INTO Players VALUES ('Chris Lin',48,'Novice');
INSERT INTO Players VALUES ('Nayan Mendoza',16,'Novice');
INSERT INTO Players VALUES ('James Hunt',69,'Semi-Pro');
INSERT INTO Players VALUES ('Kaan Lara',22,'Semi-Pro');
INSERT INTO Players VALUES ('Christy Lowry',27,NULL);
INSERT INTO Players VALUES ('Safwan Petty',57,'Professional');
INSERT INTO Players VALUES ('Pooja Broadhurst',37,'Novice');
INSERT INTO Players VALUES ('Donell Wang',14,'Semi-Pro');
INSERT INTO Players VALUES ('Finnian Bell',49,'Semi-Pro');
INSERT INTO Players VALUES ('Hollie Church',66,'Novice');
INSERT INTO Players VALUES ('Glen Ryder',41,'Professional');
INSERT INTO Players VALUES ('Bayley Bone',57,'Intermediate');
INSERT INTO Players VALUES ('Ayla Parkinson',61,'Intermediate');
INSERT INTO Players VALUES ('Ravi Laing',11,'Intermediate');
INSERT INTO Players VALUES ('Eloise Wiggins',41,'Semi-Pro');
INSERT INTO Players VALUES ('Rumaysa Charles',14,NULL);
INSERT INTO Players VALUES ('Imaan Roberson',52,'Beginner');
INSERT INTO Players VALUES ('Loren Atkins',67,'Novice');
INSERT INTO Players VALUES ('Bernadette Rooney',19,'Novice');

INSERT INTO WaitingList VALUES ('Rianne Liu', 'M', 1200, 1300);
INSERT INTO WaitingList VALUES ('Bernadette Rooney','M', 1200, 1300);
INSERT INTO WaitingList VALUES ('Glen Ryder', 'M', 1200, 1300);
INSERT INTO WaitingList VALUES ('Finnian Bell','M', 1200, 1300);
INSERT INTO WaitingList VALUES ('Christy Lowry','M', 1200, 1300);
INSERT INTO WaitingList VALUES ('Donell Wang','M', 1200, 1300);
INSERT INTO WaitingList VALUES ('Pooja Broadhurst','M', 1200, 1300);
INSERT INTO WaitingList VALUES ('Ravi Laing','M', 1200, 1300);
INSERT INTO WaitingList VALUES ('Anoushka Hinton', 'M', 1200, 1300);
INSERT INTO WaitingList VALUES ('Imaan Roberson','M', 1200, 1300);


INSERT INTO CourtSchedule VALUES (1, 05082022, 1300, 1400, 'M', 'Group Practice');
INSERT INTO CourtSchedule VALUES (1, 05082022, 1700, 1800, 'M', 'Private Practice');

INSERT INTO CourtSchedule VALUES (1, 05092022, 1230, 1330, 'T', 'Private Practice');
INSERT INTO CourtSchedule VALUES (1, 05092022, 1600, 1700, 'T', 'Group Practice');

INSERT INTO CourtSchedule VALUES (1, 05102022, 800, 900, 'W', 'Court Rental 1HR');
INSERT INTO CourtSchedule VALUES (1, 05102022, 1200, 1300, 'W', 'Court Rental 1HR');
INSERT INTO CourtSchedule VALUES (1, 05112022, 1300, 1500, 'TH', 'Private Practice 2HR');
INSERT INTO CourtSchedule VALUES (1, 05112022, 1600, 1700, 'TH', 'Court Rental 1HR');
INSERT INTO CourtSchedule VALUES (2, 05082022, 800, 900, 'M', 'Private Practice');
INSERT INTO CourtSchedule VALUES (2, 05082022, 1000, 1200, 'M', 'Private Practice 2HR');
INSERT INTO CourtSchedule VALUES (2, 05092022, 1000, 1200, 'T', 'Court Rental 2HR');
INSERT INTO CourtSchedule VALUES (2, 05092022, 1300, 1400, 'T', 'Court Rental 1HR');
INSERT INTO CourtSchedule VALUES (2, 05092022, 1600, 1800, 'T', 'Private Practice 2HR');
INSERT INTO CourtSchedule VALUES (2, 05102022, 1400, 1500, 'W', 'Group Practice');
INSERT INTO CourtSchedule VALUES (2, 05102022, 1600, 1700, 'W', 'Group Practice');
INSERT INTO CourtSchedule VALUES (2, 05102022, 2000, 2200, 'W', 'Court Rental 2HR');
INSERT INTO CourtSchedule VALUES (2, 05112022, 900, 1000, 'TH', 'Private Practice');
INSERT INTO CourtSchedule VALUES (2, 05112022, 1200, 1400, 'TH', 'Private Practice 2HR');
INSERT INTO CourtSchedule VALUES (2, 05112022, 1500, 1600, 'TH', 'Court Rental 1HR');
INSERT INTO CourtSchedule VALUES (2, 05122022, 1000, 1130, 'F', 'Court Rental 2HR');
INSERT INTO CourtSchedule VALUES (2, 05122022, 1400, 1500, 'F', 'Group Practice');
INSERT INTO CourtSchedule VALUES (2, 05122022, 1530, 1630, 'F', 'Court Rental 1HR');
INSERT INTO CourtSchedule VALUES (2, 05122022, 1700, 1800, 'F', 'Court Rental 1HR');

INSERT INTO CourtSchedule VALUES (3, 05082022, 1500, 1600, 'M', 'Private Practice');
INSERT INTO CourtSchedule VALUES (3, 05082022, 1800, 1900, 'M', 'Group Practice');
INSERT INTO CourtSchedule VALUES (3, 05092022, 1000, 1200, 'T', 'Court Rental 2HR');
INSERT INTO CourtSchedule VALUES (3, 05092022, 1600, 1700, 'T', 'Court Rental 1HR');
INSERT INTO CourtSchedule VALUES (3, 05092022, 1700, 1900, 'T', 'Private Practice 2HR');
INSERT INTO CourtSchedule VALUES (3, 05092022, 2000, 2100, 'T', 'Group Practice');
INSERT INTO CourtSchedule VALUES (3, 05102022, 1500, 1700, 'W', 'Private Practice 2HR');
INSERT INTO CourtSchedule VALUES (3, 05102022, 2000, 2200, 'W', 'Court Rental 2HR');
INSERT INTO CourtSchedule VALUES (3, 05112022, 900, 1000, 'TH', 'Private Practice');
INSERT INTO CourtSchedule VALUES (3, 05112022, 1100, 1300, 'TH', 'Private Practice 2HR');
INSERT INTO CourtSchedule VALUES (3, 05112022, 1600, 1700, 'TH', 'Court Rental 1HR');
INSERT INTO CourtSchedule VALUES (3, 05112022, 1800, 2000, 'TH', 'Court Rental 2HR');
INSERT INTO CourtSchedule VALUES (3, 05122022, 1000, 1200, 'F', 'Court Rental 2HR');
INSERT INTO CourtSchedule VALUES (3, 05122022, 1400, 1500, 'F', 'Group Practice');
INSERT INTO CourtSchedule VALUES (3, 05122022, 1530, 1630, 'F', 'Group Practice');
INSERT INTO CourtSchedule VALUES (3, 05122022, 1700, 1800, 'F', 'Group Practice');
INSERT INTO CourtSchedule VALUES (3, 05122022, 1800, 1900, 'F', 'Group Practice');

INSERT INTO CourtSchedule VALUES (4, 05082022, 1500, 1600, 'M', 'Court Rental 1HR');
INSERT INTO CourtSchedule VALUES (4, 05092022, 1000, 1200, 'T', 'Court Rental 2HR');
INSERT INTO CourtSchedule VALUES (4, 05092022, 1400, 1500, 'T', 'Court Rental 1HR');
INSERT INTO CourtSchedule VALUES (4, 05092022, 1600, 1800, 'T', 'Private Practice 2HR');
INSERT INTO CourtSchedule VALUES (4, 05102022, 900, 1000, 'W', 'Group Practice');
INSERT INTO CourtSchedule VALUES (4, 05102022, 1030, 1130, 'W', 'Group Practice');
INSERT INTO CourtSchedule VALUES (4, 05102022, 1500, 1700, 'W', 'Private Practice 2HR');
INSERT INTO CourtSchedule VALUES (4, 05102022, 2000, 2200, 'W', 'Court Rental 2HR');
INSERT INTO CourtSchedule VALUES (4, 05102022, 2230, 2330, 'W', 'Court Rental 1HR');
INSERT INTO CourtSchedule VALUES (4, 05112022, 900, 1000, 'TH', 'Private Practice');
INSERT INTO CourtSchedule VALUES (4, 05112022, 1015, 1215, 'TH', 'Private Practice 2HR');
INSERT INTO CourtSchedule VALUES (4, 05112022, 1300, 1400, 'TH', 'Court Rental 1HR');
INSERT INTO CourtSchedule VALUES (4, 05112022, 1430, 1530, 'TH', 'Court Rental 1HR');
INSERT INTO CourtSchedule VALUES (4, 05112022, 1530, 1700, 'TH', 'Court Rental 2HR');
INSERT INTO CourtSchedule VALUES (4, 05122022, 1000, 1200, 'F', 'Court Rental 2HR');
INSERT INTO CourtSchedule VALUES (4, 05122022, 1400, 1500, 'F', 'Group Practice');
INSERT INTO CourtSchedule VALUES (4, 05122022, 1530, 1630, 'F', 'Group Practice');
INSERT INTO CourtSchedule VALUES (4, 05122022, 1700, 1800, 'F', 'Group Practice');
INSERT INTO CourtSchedule VALUES (4, 05122022, 1800, 1900, 'F', 'Group Practice');

INSERT INTO ReservationTypes VALUES ('Court Rental 2HR', 175);
INSERT INTO ReservationTypes VALUES ('Court Rental 1HR', 100);
INSERT INTO ReservationTypes VALUES ('Group Practice', 35);
INSERT INTO ReservationTypes VALUES ('Private Practice', 65);

INSERT INTO Courts VALUES (1, 'Intermediate Hard');
INSERT INTO Courts VALUES (2, 'Clay');
INSERT INTO Courts VALUES (3, 'Grass');
INSERT INTO Courts VALUES (4, 'Intermediate Hard');
