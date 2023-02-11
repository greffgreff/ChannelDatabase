CREATE TABLE Users (
	Id TEXT PRIMARY KEY, 
	Username TEXT NOT NULL UNIQUE,
	Bios TEXT,
	Firstname TEXT,
	Lastname TEXT,
	Email TEXT NOT NULL,
	Phone TEXT,
	JoinDate TIMESTAMP NOT NULL,
	EditDate TIMESTAMP
);

CREATE TABLE Channels (
	Id TEXT PRIMARY KEY,
	ChannelType TEXT NOT NULL,
	Name TEXT,
	Image TEXT,
	EncryptionKey TEXT NOT NULL,
	CreationDate TIMESTAMP,
	EditDate TIMESTAMP,
	DeletionDate TIMESTAMP
);

CREATE TABLE ChannelMembers (
	Id TEXT PRIMARY KEY,
	UserId TEXT NOT NULL REFERENCES Users(Id),
	ChannelId TEXT NOT NULL REFERENCES Channels(Id),
	Nickname TEXT NOT NULL,
	Image TEXT,
	Role TEXT,
	JoinDate TIMESTAMP NOT NULL,
	LeaveDate TIMESTAMP,
	EditDate TIMESTAMP
);

CREATE TABLE ChatHistory(
	Id TEXT PRIMARY KEY,
	Author TEXT NOT NULL REFERENCES ChannelMembers(Id),
	Content TEXT,
	SendDate TIMESTAMP NOT NULL,
	EditDate TIMESTAMP,
	DeletionDate TIMESTAMP
);