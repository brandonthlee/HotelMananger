
CREATE TABLE RoomType2 (
    BedType varchar(20) PRIMARY KEY,
    MaxPeople integer);


CREATE TABLE RoomType1 (
    Name VARCHAR(30),
    BasePrice Float,
    isAvialable INTEGER
        check(isAvialable in (0, 1)),
    BedType VARCHAR(20),
    PRIMARY KEY (Name, isAvialable, BedType),
    FOREIGN KEY (BedType) REFERENCES RoomType2(BedType));

CREATE TABLE Hotel(
    HotelID VARCHAR(20) PRIMARY KEY,
    Name VARCHAR(30),
    Address VARCHAR(30),
    Company VARCHAR(20));

CREATE TABLE RoomHas1 (
    Room_num CHAR(3) PRIMARY KEY,
    Floor INTEGER NOT NULL
        check(Floor < 4 and Floor >= 1),
    TypeName VARCHAR(30) NOT NULL,
    isAvialable INTEGER NOT NULL,
    BedType VARCHAR(20),
    FOREIGN KEY (TypeName, isAvialable, BedType) REFERENCES RoomType1(Name, isAvialable, BedType));

CREATE TABLE RoomHas2 (
    Room_num CHAR(3) PRIMARY KEY,
    Floor INTEGER NOT NULL
        check(Floor < 4 and Floor >= 1),
    HotelID VARCHAR(20) NOT NULL,
    isAvialable INTEGER NOT NULL,
    FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID));


CREATE TABLE Guest(
    GuestID char(10) PRIMARY KEY,
        check(GuestID like 'G%'),
    Name varchar(30),
    ID varchar (20) UNIQUE,
    Address varchar(50),
    Phone varchar(20) UNIQUE);
    

CREATE TABLE Member(
    GuestID char(10) PRIMARY KEY,
    MemberID char(10),
        check(MemberID like 'M%'),
    Points INTEGER,
    FOREIGN KEY(GuestID) REFERENCES Guest(GuestID));
    

CREATE TABLE Service(
    ServiceType varchar(20) PRIMARY KEY,
    Fee Integer check(Fee >= 0));
    
CREATE TABLE Reservation ( 
    Reservation_num CHAR(10) PRIMARY KEY
        check(Reservation_num like 'R%'), 
    From1 DATE,
    To1 DATE,
    PromoCode INTEGER 
        check(PromoCode in (0, 1)),
    GuestID CHAR(10) NOT NULL
        check(GuestID like 'G%'), 
    HotelID VARCHAR(20) NOT NULL, 
    CreditCard_num varchar(20),
    NumGuest INTEGER NOT NULL,
    Room_num CHAR(3),
    FOREIGN KEY (GuestID) REFERENCES Guest(GuestID)
        ON DELETE CASCADE,
    FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID)
        ON DELETE CASCADE,
    FOREIGN KEY (Room_num) REFERENCES RoomHas1(Room_num));

CREATE TABLE Payment(
    Payment_num  VARCHAR(20),
    ExpiryDate DATE,
    CreditCard_num VARCHAR(20),
    CardName VARCHAR(30),
    Reservation_num  char(10) NOT NULL,
    Amount  INTEGER check(Amount >= 0) NOT NULL,
    PRIMARY KEY(Payment_num, Reservation_num),
    FOREIGN KEY (Reservation_num) REFERENCES Reservation(Reservation_num),
    UNIQUE(Reservation_num));

CREATE TABLE Employee(
    Employee_num VARCHAR(20) Primary Key,
    Password char(10));

commit;