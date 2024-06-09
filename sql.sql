CREATE TABLE Gymnasium (
    gym_id INT PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255),
    telephone_number VARCHAR(20)
);

CREATE TABLE Member (
    member_id INT PRIMARY KEY,
    last_name VARCHAR(100),
    first_name VARCHAR(100),
    address VARCHAR(255),
    date_of_birth DATE,
    gender CHAR(1),
    gym_id INT,
    FOREIGN KEY (gym_id) REFERENCES Gymnasium(gym_id)
);

CREATE TABLE Session (
    session_id INT PRIMARY KEY,
    type_of_sport VARCHAR(100),
    schedule DATETIME,
    gym_id INT,
    FOREIGN KEY (gym_id) REFERENCES Gymnasium(gym_id)
);

CREATE TABLE Coach (
    coach_id INT PRIMARY KEY,
    last_name VARCHAR(100),
    first_name VARCHAR(100),
    age INT,
    specialty VARCHAR(100),
    gym_id INT,
    FOREIGN KEY (gym_id) REFERENCES Gymnasium(gym_id)
);
