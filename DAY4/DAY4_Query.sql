-- USE sololearn;
CREATE TABLE PetOwners(
	ownerID INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    contact VARCHAR(45)
);
CREATE TABLE Pets(
	petID INT PRIMARY KEY AUTO_INCREMENT,
    ownerID INT NOT NULL,
    name VARCHAR(45) NOT NULL,
    species VARCHAR(45),
    breed VARCHAR(45),
    FOREIGN KEY (ownerID) REFERENCES PetOwners(ownerID)
);
CREATE TABLE Rooms(
	roomID INT PRIMARY KEY AUTO_INCREMENT,
	roomNumber VARCHAR(45) NOT NULL,
    roomType VARCHAR(45),
    pricePerNight DECIMAL(10,2)
);
CREATE TABLE Reservations(
	reservationID INT PRIMARY KEY AUTO_INCREMENT,
    petID INT NOT NULL,
    roomID INT NOT NULL,
    startDate DATE,
    endDate DATE,
    FOREIGN KEY (petID) REFERENCES Pets(petID),
	FOREIGN KEY (roomID) REFERENCES Rooms(roomID)
);
CREATE TABLE Services(
	servicesID INT PRIMARY KEY AUTO_INCREMENT,
    reservationID INT NOT NULL,
    serviceName VARCHAR(45),
    servicePrice DECIMAL(10,2),
    FOREIGN KEY (reservationID) REFERENCES Reservations(reservationID)
);