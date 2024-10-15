CREATE TABLE `tipoMedico` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `tipo` VARCHAR(255) NOT NULL
);

CREATE TABLE `tipoEmpleado` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `tipo` VARCHAR(255) NOT NULL
);

CREATE TABLE `empleado` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nombre` VARCHAR(255) NOT NULL,
    `status` ENUM('activo', 'inactivo') NOT NULL,
    `tipoEmpleado_fk` INT UNSIGNED NOT NULL,  
    FOREIGN KEY (`tipoEmpleado_fk`) REFERENCES `tipoEmpleado`(`id`)
);

CREATE TABLE `medico` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `tipoMedico_fk` INT UNSIGNED NOT NULL,  
    `status` ENUM('activo', 'inactivo', 'sustitucion') NOT NULL,
    `nombre` VARCHAR(255) NOT NULL,
    FOREIGN KEY (`tipoMedico_fk`) REFERENCES `tipoMedico`(`id`)
);

CREATE TABLE `paciente` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nombre` VARCHAR(255) NOT NULL,
    `edad` INT NOT NULL,
    `eps` VARCHAR(255) NOT NULL
);

CREATE TABLE `horario` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `medico_fk` INT UNSIGNED NOT NULL,  
    `fechaInicio` DATETIME NOT NULL,
    `fechaFin` DATETIME NOT NULL,
    FOREIGN KEY (`medico_fk`) REFERENCES `medico`(`id`)
);

CREATE TABLE `vacaciones` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `fechaInicio` DATETIME NOT NULL,
    `fechaFin` DATETIME NOT NULL,
    `status` ENUM('pendiente', 'aprobada', 'rechazada') NOT NULL,
    `medico_fk` INT UNSIGNED NULL,  
    `empleado_fk` INT UNSIGNED NULL,  
    FOREIGN KEY (`medico_fk`) REFERENCES `medico`(`id`),
    FOREIGN KEY (`empleado_fk`) REFERENCES `empleado`(`id`)
);

CREATE TABLE `cita` (
    `medico_fk` INT UNSIGNED NOT NULL,  
    `paciente_fk` INT UNSIGNED NOT NULL,  
    `fechaInicio` DATETIME NOT NULL,
    `fechaFin` DATETIME NOT NULL,
    `status` ENUM('pendiente', 'confirmada', 'cancelada') NOT NULL,
    PRIMARY KEY (`paciente_fk`, `medico_fk`),
    FOREIGN KEY (`paciente_fk`) REFERENCES `paciente`(`id`),
    FOREIGN KEY (`medico_fk`) REFERENCES `medico`(`id`)
);

