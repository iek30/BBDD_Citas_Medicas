-- Inserción de datos de ejemplo

-- Personas
INSERT INTO PERSONA (nombre, apellido1, apellido2, dni, telf, email, usuario, contraseña) VALUES
    ('Juan', 'Perez', 'Gomez', '123456789', '987654321', 'juan@example.com', 'juanito', 'clave123'),
    ('Maria', 'Gonzalez', 'Lopez', '987654321', '123456789', 'maria@example.com', 'marita', 'clave456'),
    ('Carlos', 'Ruiz', '', '456789012', '567890123', 'carlos@example.com', 'carlitos', 'clave789'),
    ('Laura', 'Lopez', 'Martinez', '234567890', '678901234', 'laura@example.com', 'laurita', 'clave012');

-- Especializaciones
INSERT INTO ESPECIALIZACION (nombre) VALUES
    ('Cardiología'),
    ('Dermatología'),
    ('Pediatría'),
    ('Oftalmología');

-- Pacientes
INSERT INTO PACIENTE (id_persona, fecha_nac) VALUES
    (1, '1990-01-01'),
    (2, '1985-05-15');

-- Centros Médicos
INSERT INTO CENTRO_MEDICO (nombre, ciudad) VALUES
    ('Hospital Central', 'Ciudad Hospitalaria'),
    ('Clínica San Juan', 'Ciudad Clínica');

-- Médicos
INSERT INTO MEDICO (id_persona, id_centro_medico) VALUES
    (4, 1),
    (3, 2);

-- Médicos / Especializaciones
INSERT INTO MEDICO_ESPECIALIZACION (id_medico, id_especializacion) VALUES
    (4, 1),
    (4, 2),
    (3, 3);

-- Citas
INSERT INTO CITA (id_medico, id_paciente, id_centro_medico, planta, sala, fecha, hora) VALUES
    (4, 1, 1, '2', 'A', '2024-01-27', '10:00:00'),
    (3, 2, 2, '3', 'B', '2024-01-28', '14:30:00');

-- Diagnósticos
INSERT INTO DIAGNOSTICO (id_medico, id_paciente, id_cita, diagnostico, receta) VALUES
    (4, 1, 4, 'Presión arterial alta', 'Medicamento X, Reposo'),
    (3, 2, 5, 'Alergia cutánea', 'Crema Y, Antihistamínicos');

-- Más inserciones según sea necesario
