-- Creating users
INSERT INTO Users(id, username, bios, firstname, lastname, email, phone, joindate, editdate)
VAlUES('4c836536-aa2d-11ed-afa1-0242ac120002', 'noahgreff#12123', 'None a yo bis', 'Noah', 'Greff', 'noahgreff@gmail.com', '+31 08 23 54 23 54', CURRENT_TIMESTAMP, NULL);
INSERT INTO Users(id, username, bios, firstname, lastname, email, phone, joindate, editdate)
VAlUES('c6615e58-aa2d-11ed-afa1-0242ac120002', 'greffhonore#3522', 'Confused', 'Honore', 'Greff', 'honore@gmail.com', NULL, CURRENT_TIMESTAMP, NULL);
INSERT INTO Users(id, username, bios, firstname, lastname, email, phone, joindate, editdate)
VAlUES('e75d693a-aa2d-11ed-afa1-0242ac120002', 'greffgreff#2352', 'Maybe sleeping', 'Chandler', 'Greff', 'chandlergreff80@gmail.com', '+31 08 49 42 17 17', CURRENT_TIMESTAMP, NULL);

-- Creating personal channel
INSERT INTO Channels(Id, ChannelType, Name, Image, EncryptionKey, CreationDate, EditDate, DeletionDate) 
VALUES('ee98abd0-aa1c-11ed-afa1-0242ac120002', 'PersonalChat', NULL, 'https://i.imgur.com/gxPewqw.jpg', '1234 1234 1234 1234', CURRENT_TIMESTAMP, NULL, NULL);

INSERT INTO ChannelMembers(Id, UserId, ChannelId, Nickname, Image, Role, JoinDate, EditDate, LeaveDate)
VALUES(GEN_RANDOM_UUID(), '4c836536-aa2d-11ed-afa1-0242ac120002', 'ee98abd0-aa1c-11ed-afa1-0242ac120002', 'Spare parts', NULL, 'Memeber', CURRENT_TIMESTAMP, NULL, NULL);
INSERT INTO ChannelMembers(Id, UserId, ChannelId, Nickname, Image, Role, JoinDate, EditDate, LeaveDate)
VALUES(GEN_RANDOM_UUID(), 'e75d693a-aa2d-11ed-afa1-0242ac120002', 'ee98abd0-aa1c-11ed-afa1-0242ac120002', 'Greff', NULL, 'Memeber', CURRENT_TIMESTAMP, NULL, NULL);

-- Creating group channel
INSERT INTO Channels(Id, ChannelType, Name, Image, EncryptionKey, CreationDate, EditDate, DeletionDate) 
VALUES('e4e6a47a-aa1c-11ed-afa1-0242ac120002', 'GroupChat', 'The bois', 'https://i.imgur.com/gxPewqw.jpg', '1234 1234 1234 1234', CURRENT_TIMESTAMP, NULL, NULL);

INSERT INTO ChannelMembers(Id, UserId, ChannelId, Nickname, Image, Role, JoinDate, EditDate, LeaveDate)
VALUES('9621ac36-aa35-11ed-afa1-0242ac120002', '4c836536-aa2d-11ed-afa1-0242ac120002', 'e4e6a47a-aa1c-11ed-afa1-0242ac120002', 'Noah Greff', NULL, 'Memeber', CURRENT_TIMESTAMP, NULL, NULL);
INSERT INTO ChannelMembers(Id, UserId, ChannelId, Nickname, Image, Role, JoinDate, EditDate, LeaveDate)
VALUES('fd53a53a-aa35-11ed-afa1-0242ac120002', 'e75d693a-aa2d-11ed-afa1-0242ac120002', 'e4e6a47a-aa1c-11ed-afa1-0242ac120002', 'Chandler Greff', NULL, 'Memeber', CURRENT_TIMESTAMP, NULL, NULL);
INSERT INTO ChannelMembers(Id, UserId, ChannelId, Nickname, Image, Role, JoinDate, EditDate, LeaveDate)
VALUES('080c5710-aa36-11ed-afa1-0242ac120002', 'c6615e58-aa2d-11ed-afa1-0242ac120002', 'e4e6a47a-aa1c-11ed-afa1-0242ac120002', 'Honore Greff', NULL, 'Moderator', CURRENT_TIMESTAMP, NULL, NULL);

--Creating chat history
INSERT INTO ChatHistory(id, author, content, senddate, editdate, deletiondate)
VALUES(GEN_RANDOM_UUID(), '9621ac36-aa35-11ed-afa1-0242ac120002', 'This is a message...😋', CURRENT_TIMESTAMP + interval '30 seconds', NULL, NULL);
INSERT INTO ChatHistory(id, author, content, senddate, editdate, deletiondate)
VALUES(GEN_RANDOM_UUID(), 'fd53a53a-aa35-11ed-afa1-0242ac120002', 'This is another message...', CURRENT_TIMESTAMP + interval '35 seconds', NULL, NULL);
INSERT INTO ChatHistory(id, author, content, senddate, editdate, deletiondate)
VALUES(GEN_RANDOM_UUID(), 'fd53a53a-aa35-11ed-afa1-0242ac120002', 'Here is another one.', CURRENT_TIMESTAMP + interval '37 seconds', NULL, NULL);
INSERT INTO ChatHistory(id, author, content, senddate, editdate, deletiondate)
VALUES(GEN_RANDOM_UUID(), '080c5710-aa36-11ed-afa1-0242ac120002', 'And again another one here!', CURRENT_TIMESTAMP + interval '49 seconds', NULL, NULL);
INSERT INTO ChatHistory(id, author, content, senddate, editdate, deletiondate)
VALUES(GEN_RANDOM_UUID(), '080c5710-aa36-11ed-afa1-0242ac120002', 'Ok this is the last one', CURRENT_TIMESTAMP + interval '55 seconds', NULL, NULL);
