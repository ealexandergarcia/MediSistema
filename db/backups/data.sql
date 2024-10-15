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
