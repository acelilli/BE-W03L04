CREATE TABLE ModelloAuto (
    idModello INT PRIMARY KEY IDENTITY,
    NomeModello NVARCHAR(100),
    IMGmodello NVARCHAR(MAX),
    Prezzo_Partenza DECIMAL(10, 2),
    Anni_Garanzia smallINT
);

CREATE TABLE Optionals (
    idOptional INT PRIMARY KEY IDENTITY,
    TipoOptional nVARCHAR(100),
    Prezzo_Optional DECIMAL(10, 2)
);

CREATE TABLE Preventivo (
    idPreventivo INT PRIMARY KEY IDENTITY,
    idModello INT,
    idOptional INT,
    FOREIGN KEY (idModello) REFERENCES ModelloAuto(idModello),
    FOREIGN KEY (idOptional) REFERENCES Optionals(idOptional)
);