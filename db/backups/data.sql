-- Insertar tipos de médicos
INSERT INTO `tipoMedico` (`tipo`) VALUES 
('General'), 
('Pediatra'), 
('Cardiólogo'), 
('Dermatólogo');

-- Insertar tipos de empleados
INSERT INTO `tipoEmpleado` (`tipo`) VALUES 
('Administrativo'), 
('Recepcionista'), 
('Personal de limpieza');

-- Insertar empleados
INSERT INTO `empleado` (`nombre`, `status`, `tipoEmpleado_fk`) VALUES 
('Juan Pérez', 'activo', 1), 
('María Gómez', 'inactivo', 2), 
('Luis Fernández', 'activo', 1);

-- Insertar médicos
INSERT INTO `medico` (`tipoMedico_fk`, `status`, `nombre`) VALUES 
(1, 'activo', 'Dr. Carlos Sánchez'), 
(2, 'activo', 'Dra. Ana Torres'), 
(3, 'inactivo', 'Dr. Alberto Ruiz');

-- Insertar pacientes
INSERT INTO `paciente` (`nombre`, `edad`, `eps`) VALUES 
('Pedro Martínez', 30, 'EPS Salud'), 
('Lucía Rodríguez', 25, 'EPS Bienestar'), 
('Andrés Jiménez', 40, 'EPS Vida');

-- Insertar horarios
INSERT INTO `horario` (`medico_fk`, `fechaInicio`, `fechaFin`) VALUES 
(1, '2024-10-01 09:00:00', '2024-10-01 12:00:00'), 
(2, '2024-10-01 13:00:00', '2024-10-01 16:00:00'),
(1, '2024-10-02 09:00:00', '2024-10-02 12:00:00');

-- Insertar vacaciones
INSERT INTO `vacaciones` (`fechaInicio`, `fechaFin`, `status`, `medico_fk`, `empleado_fk`) VALUES 
('2024-12-15 00:00:00', '2024-12-20 00:00:00', 'aprobada', 1, NULL),
('2024-11-01 00:00:00', '2024-11-05 00:00:00', 'pendiente', NULL, 2);

-- Insertar citas
INSERT INTO `cita` (`medico_fk`, `paciente_fk`, `fechaInicio`, `fechaFin`, `status`) VALUES 
(1, 1, '2024-10-05 10:00:00', '2024-10-05 10:30:00', 'pendiente'),
(2, 2, '2024-10-06 11:00:00', '2024-10-06 11:30:00', 'confirmada'),
(1, 3, '2024-10-07 14:00:00', '2024-10-07 14:30:00', 'cancelada');



-------------------------------------------------


INSERT INTO tipoMedico (tipo) VALUES
('Generalista'),
('Pediatra'),
('Cardiologo'),
('Dermatologo'),
('Ginecologo'),
('Oftalmologo'),
('Neurocirujano'),
('Traumatologo'),
('Psiquiatra'),
('Endocrinologo'),
('Oncologo'),
('Urologo'),
('Gastroenterologo'),
('Ortopedista'),
('Reumatologo'),
('Neumologo'),
('Otorrinolaringologo'),
('Medicina Interna'),
('Cirujano General'),
('Medicina Familiar');


-------------------------------------------------

INSERT INTO tipoEmpleado (tipo) VALUES
('ATS'),
('auxiliares de enfermería'),
('celadores'),
('administrativos');

----------------------------------------------------

INSERT INTO empleado (nombre, status, tipoEmpleado_fk) VALUES
('Juan Perez', 'activo', 1),
('Maria Lopez', 'activo', 2),
('Carlos Gomez', 'inactivo', 3),
('Laura Sanchez', 'activo', 4),
('Ana Torres', 'activo', 1),
('Diego Ramirez', 'inactivo', 2),
('Sofia Martinez', 'activo', 3),
('Luis Morales', 'activo', 4),
('Marta Fernandez', 'activo', 1),
('Jorge Castillo', 'activo', 2),
('Claudia Ortega', 'inactivo', 3),
('Pedro Ruiz', 'activo', 4),
('Patricia Jimenez', 'activo', 1),
('Ricardo Romero', 'inactivo', 2),
('Silvia Silva', 'activo', 3),
('Fernando Vargas', 'activo', 4),
('Carmen Rojas', 'inactivo', 1),
('Natalia Medina', 'activo', 2),
('Victor Ponce', 'activo', 3),
('Elena Cortes', 'inactivo', 4),
('Hugo Almeida', 'activo', 1);


----------------------------------------------------


INSERT INTO medico (tipoMedico_fk, status, nombre) VALUES
(1, 'activo', 'Dr. Juan Salazar'),
(2, 'activo', 'Dr. Maria Gonzalez'),
(3, 'inactivo', 'Dr. Carlos Mendoza'),
(4, 'activo', 'Dr. Laura Castro'),
(1, 'activo', 'Dr. Ana Ruiz'),
(2, 'inactivo', 'Dr. Diego Torres'),
(3, 'activo', 'Dr. Sofia Jimenez'),
(4, 'activo', 'Dr. Luis Alvarado'),
(1, 'activo', 'Dr. Marta Villanueva'),
(2, 'inactivo', 'Dr. Jorge Herrera'),
(3, 'activo', 'Dr. Claudia Lopez'),
(4, 'activo', 'Dr. Pedro Martinez'),
(1, 'inactivo', 'Dr. Patricia Diaz'),
(2, 'activo', 'Dr. Ricardo Torres'),
(3, 'activo', 'Dr. Silvia Gonzalez'),
(4, 'inactivo', 'Dr. Fernando Ramirez'),
(1, 'activo', 'Dr. Carmen Ponce'),
(2, 'activo', 'Dr. Natalia Morales'),
(3, 'inactivo', 'Dr. Victor Rojas'),
(4, 'activo', 'Dr. Elena Castro'),
(1, 'activo', 'Dr. Hugo Medina');


INSERT INTO paciente (nombre, edad, eps) VALUES
('Pedro Aguirre', 30, 'EPS Salud'),
('Ana Torres', 25, 'EPS Vida'),
('Carlos Ramos', 40, 'EPS Medico'),
('Lucia Herrera', 35, 'EPS Bienestar'),
('Javier Castro', 50, 'EPS Protegido'),
('Patricia Lopez', 60, 'EPS Salud Total'),
('Diego Morales', 28, 'EPS Amiga'),
('Maria Jimenez', 45, 'EPS Esperanza'),
('Felipe Vargas', 32, 'EPS Soluciones'),
('Sofia Ortega', 55, 'EPS Avance'),
('Andres Rios', 38, 'EPS Salud Clara'),
('Claudia Silva', 48, 'EPS Compensar'),
('Miguel Rojas', 27, 'EPS Unir'),
('Isabel Gonzalez', 41, 'EPS Sanitas'),
('Ricardo Ruiz', 36, 'EPS Sura'),
('Laura Martinez', 29, 'EPS Coomeva'),
('Victor Almeida', 53, 'EPS Nueva EPS'),
('Elena Mendoza', 31, 'EPS Cafesalud'),
('Daniela Cortes', 44, 'EPS Medimás'),
('Julian Ponce', 22, 'EPS Colpatria'),
('Hugo Romero', 39, 'EPS Colsana');


INSERT INTO horario (medico_fk, fechaInicio, fechaFin) VALUES
(1, '2024-10-01 09:00:00', '2024-10-01 17:00:00'),
(2, '2024-10-01 10:00:00', '2024-10-01 18:00:00'),
(3, '2024-10-02 09:00:00', '2024-10-02 17:00:00'),
(4, '2024-10-02 10:00:00', '2024-10-02 18:00:00'),
(5, '2024-10-03 09:00:00', '2024-10-03 17:00:00'),
(6, '2024-10-03 10:00:00', '2024-10-03 18:00:00'),
(7, '2024-10-04 09:00:00', '2024-10-04 17:00:00'),
(8, '2024-10-04 10:00:00', '2024-10-04 18:00:00'),
(9, '2024-10-05 09:00:00', '2024-10-05 17:00:00'),
(10, '2024-10-05 10:00:00', '2024-10-05 18:00:00'),
(11, '2024-10-06 09:00:00', '2024-10-06 17:00:00'),
(12, '2024-10-06 10:00:00', '2024-10-06 18:00:00'),
(13, '2024-10-07 09:00:00', '2024-10-07 17:00:00'),
(14, '2024-10-07 10:00:00', '2024-10-07 18:00:00'),
(15, '2024-10-08 09:00:00', '2024-10-08 17:00:00'),
(16, '2024-10-08 10:00:00', '2024-10-08 18:00:00'),
(17, '2024-10-09 09:00:00', '2024-10-09 17:00:00'),
(18, '2024-10-09 10:00:00', '2024-10-09 18:00:00'),
(19, '2024-10-10 09:00:00', '2024-10-10 17:00:00'),
(20, '2024-10-10 10:00:00', '2024-10-10 18:00:00'),
(21, '2024-10-11 09:00:00', '2024-10-11 17:00:00');



INSERT INTO vacaciones (fechaInicio, fechaFin, status, medico_fk, empleado_fk) VALUES
('2024-12-01', '2024-12-10', 'pendiente', 1, 1),
('2024-12-11', '2024-12-20', 'aprobada', 2, 2),
('2024-12-21', '2024-12-30', 'rechazada', 3, 3),
('2025-01-01', '2025-01-10', 'pendiente', 4, 4),
('2025-01-11', '2025-01-20', 'aprobada', 5, 5),
('2025-01-21', '2025-01-30', 'rechazada', 6, 6),
('2025-02-01', '2025-02-10', 'pendiente', 7, 7),
('2025-02-11', '2025-02-20', 'aprobada', 8, 8),
('2025-02-21', '2025-02-28', 'rechazada', 9, 9),
('2025-03-01', '2025-03-10', 'pendiente', 10, 10),
('2025-03-11', '2025-03-20', 'aprobada', 11, 11),
('2025-03-21', '2025-03-30', 'rechazada', 12, 12),
('2025-04-01', '2025-04-10', 'pendiente', 13, 13),
('2025-04-11', '2025-04-20', 'aprobada', 14, 14),
('2025-04-21', '2025-04-30', 'rechazada', 15, 15),
('2025-05-01', '2025-05-10', 'pendiente', 16, 16),
('2025-05-11', '2025-05-20', 'aprobada', 17, 17),
('2025-05-21', '2025-05-30', 'rechazada', 18, 18),
('2025-06-01', '2025-06-10', 'pendiente', 19, 19),
('2025-06-11', '2025-06-20', 'aprobada', 20, 20),
('2025-06-21', '2025-06-30', 'rechazada', 21, 21);


INSERT INTO cita (medico_fk, paciente_fk, fechaInicio, fechaFin, status) VALUES
(1, 1, '2024-10-01 09:00:00', '2024-10-01 09:30:00', 'pendiente'),
(1, 2, '2024-10-01 10:00:00', '2024-10-01 10:30:00', 'confirmada'),
(2, 3, '2024-10-01 11:00:00', '2024-10-01 11:30:00', 'cancelada'),
(3, 4, '2024-10-02 09:00:00', '2024-10-02 09:30:00', 'pendiente'),
(4, 5, '2024-10-02 10:00:00', '2024-10-02 10:30:00', 'confirmada'),
(5, 6, '2024-10-03 09:00:00', '2024-10-03 09:30:00', 'cancelada'),
(6, 7, '2024-10-03 10:00:00', '2024-10-03 10:30:00', 'pendiente'),
(7, 8, '2024-10-04 09:00:00', '2024-10-04 09:30:00', 'confirmada'),
(8, 9, '2024-10-04 10:00:00', '2024-10-04 10:30:00', 'cancelada'),
(9, 10, '2024-10-05 09:00:00', '2024-10-05 09:30:00', 'pendiente'),
(10, 11, '2024-10-05 10:00:00', '2024-10-05 10:30:00', 'confirmada'),
(11, 12, '2024-10-06 09:00:00', '2024-10-06 09:30:00', 'cancelada'),
(12, 13, '2024-10-06 10:00:00', '2024-10-06 10:30:00', 'pendiente'),
(13, 14, '2024-10-07 09:00:00', '2024-10-07 09:30:00', 'confirmada'),
(14, 15, '2024-10-07 10:00:00', '2024-10-07 10:30:00', 'cancelada'),
(15, 16, '2024-10-08 09:00:00', '2024-10-08 09:30:00', 'pendiente'),
(16, 17, '2024-10-08 10:00:00', '2024-10-08 10:30:00', 'confirmada'),
(17, 18, '2024-10-09 09:00:00', '2024-10-09 09:30:00', 'cancelada'),
(18, 19, '2024-10-09 10:00:00', '2024-10-09 10:30:00', 'pendiente'),
(19, 20, '2024-10-10 09:00:00', '2024-10-10 09:30:00', 'confirmada'),
(20, 21, '2024-10-10 10:00:00', '2024-10-10 10:30:00', 'cancelada');
