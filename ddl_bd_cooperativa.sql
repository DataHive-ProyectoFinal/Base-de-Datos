-- Crear base de datos
CREATE DATABASE cooperativa CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE cooperativa;

-- Tabla usuarios
CREATE TABLE usuarios (
    ci VARCHAR(20) PRIMARY KEY,
    contrasena VARCHAR(255) NOT NULL
);

-- Tabla socio
CREATE TABLE socio (
    ci_usuario VARCHAR(20) PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    edad INT,
    gmail VARCHAR(100),
    estado ENUM('activo', 'inactivo'),
    FOREIGN KEY (ci_usuario) REFERENCES usuarios(ci)
);

-- Tabla administrador
CREATE TABLE administrador (
    ci_usuario VARCHAR(20) PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    edad INT,
    gmail VARCHAR(100),
    rol VARCHAR(50),
    FOREIGN KEY (ci_usuario) REFERENCES usuarios(ci)
);

-- Tabla vivienda
CREATE TABLE vivienda (
    id INT AUTO_INCREMENT PRIMARY KEY,
    habitaciones INT,
    proceso_construccion VARCHAR(100)
);

-- Tabla integrante_familia
CREATE TABLE integrante_familia (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_vivienda INT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    edad INT,
    FOREIGN KEY (id_vivienda) REFERENCES vivienda(id)
);

-- Tabla id_jornada
CREATE TABLE id_jornada (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ci_usuario VARCHAR(20),
    descripcion TEXT,
    horas_semanales INT,
    FOREIGN KEY (ci_usuario) REFERENCES usuarios(ci)
);

-- Tabla horas_incumplidas
CREATE TABLE horas_incumplidas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_jornada INT,
    motivo TEXT,
    pago_compensatorio DECIMAL(10,2),
    FOREIGN KEY (id_jornada) REFERENCES id_jornada(id)
);

-- Tabla pagos
CREATE TABLE pagos (
    id_pago INT AUTO_INCREMENT PRIMARY KEY,
    ci_usuario VARCHAR(20),
    fecha_vencimiento DATE,
    tipo_pago VARCHAR(50),
    monto DECIMAL(10,2),
    FOREIGN KEY (ci_usuario) REFERENCES usuarios(ci)
);

-- Tabla tipo_pago
CREATE TABLE tipo_pago (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_pago INT,
    estado_pago ENUM('atrasado', 'actualizado'),
    FOREIGN KEY (id_pago) REFERENCES pagos(id_pago)
);

-- Tabla reportes
CREATE TABLE reportes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    contenido TEXT
);
