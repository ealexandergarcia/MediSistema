# Consultas



1. **Número de pacientes atendidos por cada médico**



```sql

SELECT 
    m.nombre AS medico_nombre,
    COUNT(c.paciente_fk) AS numero_pacientes_atendidos
FROM 
    medico m
LEFT JOIN 
    cita c ON m.id = c.medico_fk
GROUP BY 
    m.id, m.nombre;


```



2. **Total de días de vacaciones planificadas y disfrutadas por cada empleado**



```sql

SELECT 
	m.nombre,
	datediff(c.fechaFin,c.fechaInicio) as TotalDías,
    c.status as estadoVaciones
FROM MediSistema.vacaciones c 
JOIN
	medico m ON c.medico_fk = m.id
where c.status = "aprobada";

```



3. **Médicos con mayor cantidad de horas de consulta en la semana**



```sql



```



4.  **Número de sustituciones realizadas por cada médico sustituto**



```sql



```



5.  **Número de médicos que están actualmente en sustitución**



```sql
SELECT 
	status,
    count(status) as medicos
FROM MediSistema.medico
GROUP BY 
    status;


```



6. **Horas totales de consulta por médico por día de la semana**



```sql
SELECT 
    m.nombre AS medico,
    DATE(h.fechaInicio) AS fecha,
    SUM(TIMESTAMPDIFF(HOUR, h.fechaInicio, h.fechaFin)) AS horas_consulta
FROM 
    medico m
JOIN 
    horario h ON m.id = h.medico_fk
GROUP BY 
    m.id, DATE(h.fechaInicio)
ORDER BY 
    m.nombre, fecha;



```



7.  **Médico con mayor cantidad de pacientes asignados**



```sql

SELECT 
    m.id AS medico_id,
    m.nombre AS medico_nombre,
    COUNT(c.paciente_fk) AS total_pacientes
FROM 
    medico m
LEFT JOIN 
    cita c ON m.id = c.medico_fk
GROUP BY 
    m.id, m.nombre
ORDER BY 
    total_pacientes DESC
LIMIT 1;


```



8. **Empleados con más de 10 días de vacaciones disfrutadas**



```sql



```



9.  **Médicos que actualmente están realizando una sustitución**



```sql

SELECT 
    m.id AS medicoId,
    m.nombre AS nombreMedico,
    tm.tipo AS tipoMedico
FROM 
    medico m
JOIN 
    tipoMedico tm ON m.tipoMedico_fk = tm.id
WHERE 
    m.status = 'sustitucion';


```



10.  **Promedio de horas de consulta por médico por día de la semana**



```sql

SELECT 
    m.nombre AS medico,
    DAYOFWEEK(h.fechaInicio) AS dia_semana,
    AVG(TIMESTAMPDIFF(HOUR, h.fechaInicio, h.fechaFin)) AS promedio_horas_consulta
FROM 
    horario h
JOIN 
    medico m ON h.medico_fk = m.id
GROUP BY 
    m.id, dia_semana
ORDER BY 
    m.nombre, dia_semana;


```



11.  **Empleados con mayor número de pacientes atendidos por los médicos bajo su supervisión**



```sql



```



12.  **Médicos con más de 5 pacientes y total de horas de consulta en la semana**



```sql



```



13.  **Total de días de vacaciones planificadas y disfrutadas por cada tipo de empleado**



```sql



```



14. **Total de pacientes por cada tipo de médico**



```sql
SELECT 
    tm.tipo AS tipoMedico,
    COUNT(c.paciente_fk) AS totalPacientes
FROM 
    cita c
JOIN 
    medico m ON c.medico_fk = m.id
JOIN 
    tipoMedico tm ON m.tipoMedico_fk = tm.id
GROUP BY 
    tm.tipo;




```



15. **Total de horas de consulta por médico y día de la semana**



```sql

SELECT 
    m.nombre AS medico,
    DAYOFWEEK(h.fechaInicio) AS dia_semana,
    SUM(TIMESTAMPDIFF(HOUR, h.fechaInicio, h.fechaFin)) AS horas_consulta
FROM 
    horario h
JOIN 
    medico m ON h.medico_fk = m.id
GROUP BY 
    m.id, dia_semana
ORDER BY 
    m.nombre, dia_semana;


```



16. **Número de sustituciones por tipo de médico**



```sql
SELECT 
    tm.tipo AS tipoMedico,
    COUNT(m.id) AS numeroSustituciones
FROM 
    medico m
JOIN 
    tipoMedico tm ON m.tipoMedico_fk = tm.id
WHERE 
    m.status = 'sustitucion'
GROUP BY 
    tm.tipo;



```



17. **Total de pacientes por médico y por especialidad**



```sql
SELECT 
    m.nombre AS medico,
    tm.tipo AS especialidad,
    COUNT(c.paciente_fk) AS totalPacientes
FROM 
    cita c
JOIN 
    medico m ON c.medico_fk = m.id
JOIN 
    tipoMedico tm ON m.tipoMedico_fk = tm.id
GROUP BY 
    m.id, tm.tipo;



```



18. **Empleados y médicos con más de 20 días de vacaciones planificadas**



```sql



```



19. **Médicos con el mayor número de pacientes actualmente en sustitución**



```sql

SELECT 
    m.nombre AS nombreMedico,
    COUNT(c.paciente_fk) AS numeroPacientes
FROM 
    medico m
LEFT JOIN 
    cita c ON m.id = c.medico_fk AND c.status = 'confirmada'
WHERE 
    m.status = 'sustitucion'
GROUP BY 
    m.id, m.nombre
ORDER BY 
    numeroPacientes DESC;


```



20. **Total de horas de consulta por especialidad y día de la semana**



```sql

SELECT 
    tm.tipo AS especialidad,
    DAYOFWEEK(h.fechaInicio) AS dia_semana,
    SUM(TIMESTAMPDIFF(HOUR, h.fechaInicio, h.fechaFin)) AS horas_consulta
FROM 
    horario h
JOIN 
    medico m ON h.medico_fk = m.id
JOIN 
    tipoMedico tm ON m.tipoMedico_fk = tm.id
GROUP BY 
    tm.id, dia_semana
ORDER BY 
    tm.tipo, dia_semana;


```

