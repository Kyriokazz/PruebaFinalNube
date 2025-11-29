CREATE TABLE IF NOT EXISTS log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    hora TIME NOT NULL, 
    actividad VARCHAR(100) NOT NULL,
    estado VARCHAR(100) NOT NULL,
    imagen VARCHAR(255) NOT NULL
);

INSERT INTO log (hora, actividad, estado, imagen) VALUES 
('09:49:00', 'Estructura repositorio', 'Completado', 'esrep.png'),
('09:52:00', 'Levantar contenedor', 'Completado', 'levcon.png'),
('09:55:00', 'Contenedores UP', 'Completado', 'contenedores.png'),
('09:58:00', 'Healthchecks Web', 'Healthy', 'healthchecks.png'),
('09:58:00', 'Healthchecks DB', 'Healthy', 'healthchecks2.png'),
('10:01:00', 'WEB visible', 'Visible', 'web.png'),
('10:04:00', 'Logo visible', 'Visible', 'logo.png'),
('10:07:00', 'Tabla log', 'Visible', 'tabla.png'),
('10:10:00', 'Datos coinciden', 'Coinciden', 'datos.png'),
('10:13:00', 'Ping web DB', 'Correcto', 'pings.png'),
('10:16:00', 'Logs web', 'Visibles', 'logs.png'),
('10:19:00', 'Imagenes Docker', 'Visibles', 'imagenes.png'),
('10:22:00', 'Volumen BD', 'Completado', 'volumen.png');
