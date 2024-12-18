CREATE TABLE User(
    id SERIAL PRIMARY KEY UNIQUE NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(20) NOT NULL,
    name VARCHAR(50) NOT NULL,
    phone VARCHAR(11),
    userType BIT
);
CREATE TABLE Car(
    plate VARCHAR(7) PRIMARY KEY UNIQUE NOT NULL,
    modelo VARCHAR(20) NOT NULL,
    owner INTEGER NOT NULL,
    FOREIGN KEY (owner) REFERENCES User(id) ON DELETE CASCADE
);
CREATE TABLE Vacancy(
    id SERIAL PRIMARY KEY,
    status BIT NOT NULL DEFAULT 0,
    carPlate VARCHAR(7) UNIQUE,
    FOREIGN KEY (carPlate) REFERENCES Car(plate) ON DELETE SET NULL
);