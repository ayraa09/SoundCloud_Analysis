CREATE TABLE Users(
User_ID INT PRIMARY KEY,
Username VARCHAR(100),
email VARCHAR(100),
Subscription BOOLEAN
);

CREATE TABLE Artists(
Artist_ID INT PRIMARY KEY,
Artistname VARCHAR(100),
Genre VARCHAR(100)
);

CREATE TABLE Tracks(
Track_ID INT PRIMARY KEY,
Track_name VARCHAR(500),
Artist_ID INT,
Album_name VARCHAR(500),
Release_date DATE,
Duration TIME,
Genre VARCHAR(100),
FOREIGN KEY (Artist_ID) REFERENCES Artists(Artist_ID)
);

ALTER TABLE Tracks
ADD COLUMN Streams INT DEFAULT 0;

CREATE TABLE Playlists(
Playlist_ID INT PRIMARY KEY,
Playlist_name VARCHAR(100),
User_ID INT,
FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);

CREATE TABLE Playlist_tracks(
Playlist_ID INT, 
Track_ID INT,
FOREIGN KEY (Playlist_ID) REFERENCES Playlists(Playlist_ID),
FOREIGN KEY (Track_ID) REFERENCES Tracks(Track_ID)
);

ALTER TABLE Playlist_tracks
ADD COLUMN Track_name VARCHAR(500);

CREATE TABLE Streaming(
User_ID INT,
Track_ID INT,
Streams INT DEFAULT 1,
FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
FOREIGN KEY (Track_ID) REFERENCES Tracks(Track_ID)
);

INSERT INTO Users (User_ID, Username, email, Subscription) VALUES
(1, 'armaan', 'arm@gmail.com', TRUE),
(2, 'sarah98', 'sarah@gmail.com',FALSE),
(3, 'musiclover', 'musiclover@hotmail.com',TRUE),
(4, 'rocker21', 'rockfan@gmail.com',TRUE),
(5, 'popqueen', 'queenpop@gmail.com', TRUE),
(6, 'chillvibes', 'chill@gmail.com',FALSE),
(7, 'sihiee', 'sihi@gmail.com',FALSE),
(8, 'btsarmy', 'armyfan@hotmail.com',FALSE),
(9, 'minem', 'rapgod@hotmail.com',TRUE),
(10, 'lizzolove', 'tyla@gmail.com',TRUE),
(11, 'indiehead', 'sjovik@hotmail.com',FALSE),
(12, 'edmfan', 'nilstankovi@gmail.com',TRUE),
(13, 'akrutist', 'ak40@gmail.com',FALSE),
(14, 'lanabanana', 'ashley@hotmail.com',TRUE),
(15, 'eminemstan', 'lucas@gmail.com',FALSE),
(16, 'swiffer', 'saarh@hotmail.com',FALSE),
(17, 'lordbenson', 'qdonut@hotmail.com',FALSE),
(18, 'newpopstar', 'ashkeyo@hotmail.com', TRUE),
(19, 'mixtapehero', 'mixtapehero@gmail.com',FALSE),
(20, 'bella', 'isabelcr@hotmail.com',FALSE);

INSERT INTO Artists (Artist_ID, Artistname, Genre) VALUES
(1, 'Taylor Swift', 'Pop'),
(2, 'Seedhemaut', 'Desi Hip-Hop'),
(3, 'Billie Eilish', 'Pop'),
(4, 'Talwiinder', 'Desi Hip-Hop'),
(5, 'Adele', 'Soul'),
(6, 'Ariana Grande', 'Pop'),
(7, 'Post Malone', 'Hip-Hop'),
(8, 'Ed Sheeran', 'Pop'),
(9, 'Dua Lipa', 'Pop'),
(10, 'NANKU', 'Desi Hip-Hop'),
(11, 'Eminem', 'Hip-Hop'),
(12, 'Diljit Dosanjh', 'Hip-Hop'),
(13, 'Kendrick Lamar', 'Hip-Hop'),
(14, 'Arijit Singh', 'Soul'),
(15, 'Shawn Mendes', 'Pop'),
(16, 'Olivia Rodrigo', 'Pop'),
(17, 'KR$NA', 'Desi Hip-Hop'),
(18, 'Atif Aslam', 'Soul'),
(19, 'Doja Cat', 'Pop/Hip-Hop'),
(20, 'Talha Anjum', 'Desi Hip-Hop');

INSERT INTO Tracks (Track_ID, Track_name, Artist_ID, Album_name, Release_date, Duration, Genre, Streams)
VALUES
(1, 'All Too Well (10 minute version)', 1, 'Fearless', '2021-11-12', '00:10:13', 'Pop', 1300),
(2, 'Duniya', 2, 'Duniya', '2021-12-01', '00:03:20', 'Desi Hip-Hop', 150),
(3, 'Bad Guy', 3, 'When We All Fall Asleep Where Do We Go?', '2019-03-29', '00:03:14', 'Pop', 450),
(4, 'Dhundhala', 4, 'Talwiinder', '2022-05-13', '00:02:58', 'Desi Hip-Hop', 1200),
(5, 'Someone Like You', 5, '21', '2011-01-24', '00:04:45', 'Soul', 400),
(6, '34+35', 6, 'Positions', '2020-02-08', '00:03:27', 'Pop', 500),
(7, 'Circles', 7, 'Hollywood’s Bleeding', '2019-09-06', '00:03:35', 'Hip-Hop', 350),
(8, 'Shape of You', 8, '÷ (Divide)', '2017-01-06', '00:03:53', 'Pop', 1000),
(9, 'Levitating', 9, 'Future Nostalgia', '2020-03-27', '00:03:23', 'Pop', 700),
(10, 'Kaafizyada', 10, 'Naharpur prints', '2023-08-20', '00:03:10', 'Desi Hip-Hop', 1300),
(11, 'Lose Yourself', 11, '8 Mile', '2002-10-28', '00:05:26', 'Hip-Hop', 1200),
(12, 'Do you know', 12, 'Do you know', '2018-09-01', '00:03:43', 'Hip-Hop', 500),
(13, 'HUMBLE.', 13, 'DAMN.', '2017-04-14', '00:02:57', 'Hip-Hop', 750),
(14, 'Tum Hi Ho', 14, 'Aashiqui 2', '2013-10-05', '00:04:22', 'Soul', 1200),
(15, 'Stitches', 15, 'Handwritten', '2015-04-14', '00:03:26', 'Pop', 850),
(16, 'drivers license', 16, 'SOUR', '2021-01-08', '00:04:02', 'Pop', 300),
(17, 'Mann ki Manzil', 17, 'Mann ki Manzil', '2023-01-25', '00:03:30', 'Desi Hip-Hop', 180),
(18, 'Tera Hone Laga Hoon', 18, 'Ajab Prem Ki Ghazab Kahani', '2009-11-06', '00:04:04', 'Soul', 1500),
(19, 'Kiss Me More', 19, 'Planet Her', '2021-04-23', '00:03:28', 'Pop/Hip-Hop', 650),
(20, 'Khayal Rakhna', 20, 'Khayal Rakhna', '2023-07-15', '00:03:55', 'Desi Hip-Hop', 200);

UPDATE Tracks
SET Album_name='Red'
WHERE Track_ID=1;

INSERT INTO Playlists (Playlist_ID, Playlist_name, User_ID) VALUES
(1, 'Desi', 1),
(2, 'Chill Vibes', 3),
(3, 'Workout Jams', 5),
(4, 'Hip-Hop Legends', 7),
(5, 'K-Pop Forever', 8),
(6, 'Rap Classics', 9);

INSERT INTO Playlist_tracks (Playlist_ID, Track_ID, Track_name) VALUES
(2, 1, 'Love Story'),
(2, 8, 'Shape of You'),
(5, 6, 'Thank U, Next'),
(2, 7, 'Circles'),
(2, 5, 'Someone Like You'),
(2, 9, 'Levitating'),
(4, 4, 'Gaddi Lamborghini'),
(3, 19, 'Kiss Me More'),
(3, 15, 'Stitches'),
(4, 11, 'Lose Yourself'),
(4, 13, 'Do you know'),
(1, 12, 'Tum Hi Ho'),
(5, 14, 'HUMBLE.'),
(1, 10, 'Dhundhala'),
(5, 16, 'drivers license'),
(6, 3, 'Bad Guy'),
(1, 18, 'Tera Hone Laga Hoon'),
(1, 2, 'Duniya'),
(1, 20, 'Khayal Rakhna'),
(2, 17, 'Mann ki Manzil');

INSERT INTO Streaming (User_ID,Track_ID,Streams) VALUES
(1, 1, 10),
(3, 5, 12),
(5, 16, 5),
(7, 13, 8),
(8, 4, 7),
(9, 2, 3),
(10, 18, 15),
(1, 8, 14),
(2, 7, 8),
(6, 19, 4),
(11, 11, 10),
(4, 14, 6),
(13, 10, 15),
(15, 12, 4),
(16, 17, 6),
(19, 20, 10),
(18, 9, 8),
(17, 6, 2),
(12, 3, 5),
(1, 1, 10),
(1, 2, 5),
(1, 3, 7),
(2, 4, 12),
(2, 5, 5),
(2, 6, 4),
(3, 1, 9),
(3, 6, 10),
(3, 8, 7),
(4, 1, 8),
(4, 2, 6),
(4, 4, 11),
(5, 3, 8),
(5, 5, 12),
(6, 1, 10),
(6, 4, 14),
(7, 5, 6),
(7, 6, 8),
(8, 2, 11),
(8, 3, 12),
(9, 1, 14),
(9, 2, 12),
(10, 1, 9),
(10, 6, 8),
(11, 3, 5),
(12, 14, 6),
(12, 19, 5),
(14, 1, 8),
(15, 2, 7),
(17, 2, 9),
(19, 3, 11);

----- SQL querying for Analysis-----

--Basic SELECT queries
SELECT * FROM Users;
SELECT * FROM Artists;
SELECT * FROM Tracks;
SELECT * FROM Playlists;
SELECT * FROM Playlist_tracks;
SELECT * FROM Streaming;

/*Q1. To find the names of users that DO NOT use premium*/
SELECT Username
FROM Users
WHERE Subscription=FALSE;

/*Q2. To find users with emails that go with Hotmail*/
SELECT Username
FROM Users
WHERE email LIKE '%hotmail%' ;

/*Q3. To find total streams of any song*/
--Contribution to Billboard charts
SELECT SUM(Streams) AS Total_streams
FROM Streaming
WHERE Track_ID=4;

/*Q4. To find all playlists made by all users*/
--To check activity by users
SELECT Users.Username,Playlists.Playlist_name
FROM Users
INNER JOIN Playlists ON Users.User_ID=Playlists.User_ID;

/*Q5. To find all users and songs streamed by them along with users who
do not stream*/
--To check the activity of the users
SELECT Users.Username,Streaming.Streams,Tracks.Track_name
FROM Users
LEFT JOIN Streaming ON Users.User_ID=Streaming.User_ID
LEFT JOIN Tracks ON Streaming.Track_ID=Tracks.Track_ID;

/*Q6. To find all songs and their respective artists along with artists who
do not have songs*/
--To check activity of artists registered on the app
SELECT Tracks.Track_name,Artists.Artistname
FROM Tracks
RIGHT JOIN Artists ON Tracks.Artist_ID=Artists.Artist_ID;

/*Q7. To find the most streamed artist(s)*/
--Contribution to Billboard charts
SELECT a.Artistname, SUM(s.Streams) AS Numberof_streams
FROM Artists a
JOIN Tracks t ON a.Artist_ID=t.Artist_ID
JOIN Streaming s ON t.Track_ID=s.Track_ID
GROUP BY a.Artistname
ORDER BY Numberof_streams DESC
LIMIT 1 ;

/*Q8. To find most streamed song by each user*/
--To provide year end wrap to the users
SELECT Username,Track_name
FROM Users
JOIN Tracks ON Tracks.Track_ID=(
SELECT Streaming.Track_ID
FROM Streaming
WHERE Streaming.User_ID=Users.User_ID
ORDER BY Streaming.Streams DESC
LIMIT 1
);

/*Q9. Users who listen to the most streamed artist*/
--As an interactive element on the app for users on year end wrap
SELECT *
FROM Users
JOIN Streaming ON Users.User_ID=Streaming.User_ID
JOIN Tracks ON Streaming.Track_ID=Tracks.Track_ID
WHERE Tracks.Artist_ID=(
SELECT Tracks.Artist_ID
FROM Tracks
JOIN Streaming ON Streaming.Track_ID=Tracks.Track_ID
GROUP BY Tracks.Artist_ID
ORDER BY SUM(Streaming.Streams) DESC
LIMIT 1
);

/*Q10. To find the most listened to genre*/
--Contribution to Billboard charts
SELECT Artists.Genre,SUM(Tracks.Streams) AS Total_streams
FROM Artists
JOIN Tracks ON Artists.Artist_ID=Tracks.Artist_ID
GROUP BY Artists.Genre
ORDER BY Total_streams DESC
LIMIT 1;

/*Q11. To view listening habits of a user*/
--Part of year end wrap and interactive element for users
CREATE VIEW Your_Listening_Habit AS
SELECT Users.Username,COUNT(Streaming.Track_ID) AS Songs_listened
FROM Users
LEFT JOIN Streaming ON Users.User_ID=Streaming.User_ID
GROUP BY Users.Username;

SELECT* FROM Your_Listening_Habit;

/*Q12. To view songs by genre*/
CREATE VIEW Songs_By_Genre AS
SELECT Tracks.Track_name,Artists.Genre
FROM Tracks
JOIN Artists ON Tracks.Genre=Artists.Genre;

SELECT* FROM Songs_By_Genre;



















