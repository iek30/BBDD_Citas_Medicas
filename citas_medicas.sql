CREATE DATABASE CITAS_MEDICAS;
USE CITAS_MEDICAS;

-- Tabla PERSONA
CREATE TABLE PERSONA (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido1 VARCHAR(50) NOT NULL,
    apellido2 VARCHAR(50),
    dni VARCHAR(9) UNIQUE NOT NULL,
    telf VARCHAR(9) NOT NULL,
    email VARCHAR(100) NOT NULL,
    usuario VARCHAR(50) UNIQUE NOT NULL,
    contraseña VARCHAR(50) NOT NULL
);

-- Tabla ESPECIALIZACIÓN
CREATE TABLE ESPECIALIZACION (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL
);

-- Tabla PACIENTE
CREATE TABLE PACIENTE (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_persona INT NOT NULL,
    fecha_nac DATE NOT NULL,
    tarjeta_sanitaria VARCHAR(12) NOT NULL,
    FOREIGN KEY (id_persona) REFERENCES PERSONA(id)
);

-- Tabla CENTRO MÉDICO
CREATE TABLE CENTRO_MEDICO (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    ciudad VARCHAR(50) NOT NULL
);

-- Tabla MÉDICO
CREATE TABLE MEDICO (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_persona INT NOT NULL,
    id_centro_medico INT NOT NULL,
    FOREIGN KEY (id_persona) REFERENCES PERSONA(id),
    FOREIGN KEY (id_centro_medico) REFERENCES CENTRO_MEDICO(id)
);

-- Tabla MÉDICO / ESPECIALIZACIÓN
CREATE TABLE MEDICO_ESPECIALIZACION (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_medico INT NOT NULL,
    id_especializacion INT NOT NULL,
    FOREIGN KEY (id_medico) REFERENCES MEDICO(id),
    FOREIGN KEY (id_especializacion) REFERENCES ESPECIALIZACION(id)
);

-- Tabla CITA
CREATE TABLE CITA (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_medico INT NOT NULL,
    id_paciente INT NOT NULL,
    id_centro_medico INT NOT NULL,
    planta VARCHAR(2) NOT NULL,
    sala VARCHAR(2) NOT NULL,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    FOREIGN KEY (id_medico) REFERENCES MEDICO(id),
    FOREIGN KEY (id_paciente) REFERENCES PACIENTE(id),
    FOREIGN KEY (id_centro_medico) REFERENCES CENTRO_MEDICO(id)
);

-- Tabla DIAGNÓSTICO
CREATE TABLE DIAGNOSTICO (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_medico INT NOT NULL,
    id_paciente INT NOT NULL,
    id_cita INT NOT NULL,
    diagnostico VARCHAR(300) NOT NULL,
    receta VARCHAR(300),
    FOREIGN KEY (id_medico) REFERENCES MEDICO(id),
    FOREIGN KEY (id_paciente) REFERENCES PACIENTE(id),
    FOREIGN KEY (id_cita) REFERENCES CITA(id)
);
