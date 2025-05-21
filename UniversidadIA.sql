CREATE DATABASE UniversidadIA;
GO

USE UniversidadIA;
GO

CREATE TABLE Estudiantes (
    ID INT PRIMARY KEY,
    Nombre NVARCHAR(100),
    Carrera NVARCHAR(100)
);

CREATE TABLE Cursos (
    ID INT PRIMARY KEY,
    Nombre NVARCHAR(100),
    Area NVARCHAR(100)
);

CREATE TABLE Inscripciones (
    ID_Estudiante INT,
    ID_Curso INT,
    Nota DECIMAL(4,2),
    FOREIGN KEY (ID_Estudiante) REFERENCES Estudiantes(ID),
    FOREIGN KEY (ID_Curso) REFERENCES Cursos(ID)
);

CREATE TABLE HerramientasIA (
    ID INT PRIMARY KEY,
    Nombre NVARCHAR(100),
    Tipo NVARCHAR(50)
);

CREATE TABLE UsoIA (
    ID_Estudiante INT,
    ID_Herramienta INT,
    Actividad NVARCHAR(100),
    FOREIGN KEY (ID_Estudiante) REFERENCES Estudiantes(ID),
    FOREIGN KEY (ID_Herramienta) REFERENCES HerramientasIA(ID)
);

-- Insertar estudiantes
INSERT INTO Estudiantes VALUES (1, 'Ana', 'Ciencia de Datos');
INSERT INTO Estudiantes VALUES (2, 'Carlos', 'Ingeniería en Sistemas');
INSERT INTO Estudiantes VALUES (3, 'Sofía', 'Ciencia de Datos');
INSERT INTO Estudiantes VALUES (4, 'Pedro', 'Ingeniería en Computación');

-- Insertar cursos
INSERT INTO Cursos VALUES (1, 'Programación I', 'Fundamentos');
INSERT INTO Cursos VALUES (2, 'Análisis de Datos', 'Especialidad');
INSERT INTO Cursos VALUES (3, 'Inteligencia Artificial', 'Especialidad');

-- Inscripciones
INSERT INTO Inscripciones VALUES (1, 1, 90.5);
INSERT INTO Inscripciones VALUES (1, 2, 88.0);
INSERT INTO Inscripciones VALUES (2, 1, 78.5);
INSERT INTO Inscripciones VALUES (3, 2, 92.0);
INSERT INTO Inscripciones VALUES (4, 1, 85.0);
INSERT INTO Inscripciones VALUES (4, 3, 89.5);

-- Herramientas de IA
INSERT INTO HerramientasIA VALUES (1, 'ChatGPT', 'Asistente');
INSERT INTO HerramientasIA VALUES (2, 'Bard', 'Asistente');
INSERT INTO HerramientasIA VALUES (3, 'Copilot', 'Programación');

-- Uso de herramientas
INSERT INTO UsoIA VALUES (1, 1, 'Tareas');
INSERT INTO UsoIA VALUES (2, 2, 'Investigación');
INSERT INTO UsoIA VALUES (3, 1, 'Investigación');
INSERT INTO UsoIA VALUES (4, 3, 'Programación');
