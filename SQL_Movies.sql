CREATE DATABASE Movies

USE Movies


CREATE TABLE Genres
(
	ID INT IDENTITY PRIMARY KEY,
	Genre NVARCHAR(20) NOT NULL,
)

CREATE TABLE Movies 
(
	ID INT IDENTITY PRIMARY KEY,
	Name NVARCHAR(20) NOT NULL,
	Studios NVARCHAR(40),
	Date INT NOT NULL,
	GenreID INT CONSTRAINT FK_Movies_GenreID FOREIGN KEY(GenreID) REFERENCES Genres(ID),
)
	
ALTER TABLE Movies
ADD ActorsID INT CONSTRAINT FK_Movies_ActorsID FOREIGN KEY(ActorsID) REFERENCES Actors(ID)

CREATE TABLE Actors
(
	ID INT IDENTITY PRIMARY KEY,
	Name NVARCHAR(20) NOT NULL,
	Surname NVARCHAR(30) NOT NULL,
	Age TINYINT NOT NULL,
	ActorMoviesID INT FOREIGN KEY REFERENCES ActorsMovies(ID) 
)

CREATE TABLE ActorsMovies
(
	ID INT IDENTITY PRIMARY KEY,
	NameMovies NVARCHAR(20),
)


INSERT INTO Genres
VALUES
('Drama'),
('Family'),
('Comedy'),
('Romance'),
('Horror')


INSERT INTO ActorsMovies
VALUES
('Mussolini The Story'),
('A Christmas Carol'),
('Scrooge'),
('Its a Wonderful Life'),
('Tasmanian Devils')



INSERT INTO Actors
VALUES
('George Campbell','Scott',78,1),
('Roger','Rees',69,2),
('David','Warner',75,2),
('Albert','Finney',82,3),
('James ','Stewart',99,4),
('Danica','McKellar',36,5)


INSERT INTO Movies
VALUES
('Mussolini The Story','Triangle Productions',1985,1,1),
('A Christmas Carol','Triangle Productions',2013,2,2),
('Tasmanian Devils','Vesuvius Productions',2013,5,5),
('Scrooge','Cinema Center Films',1970,1,4),
('Its a Wonderful Life','Liberty Films',1946,2,5)