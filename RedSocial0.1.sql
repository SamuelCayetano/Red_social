--@block
CREATE TABLE usuarios (
    usuario_ID INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    usuario VARCHAR(20) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    contrasena VARCHAR(10) NOT NULL,
    telefono VARCHAR(9) NOT NULL,
    cumpleanos DATETIME NOT NULL,
    foto_perfil VARCHAR(100),
    sexo ENUM('Masculino', 'Femenino', 'Otro'),
    biografia TEXT,
    facebook VARCHAR(255),
    twitter VARCHAR(255),
    instagram VARCHAR(255)
);

--@block
CREATE TABLE contenido (
    contenido_ID INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(50) NOT NULL,
    descripcion TEXT,
    publicaciones TEXT NOT NULL,
    comentarios TEXT,
    respuestas_comentarios TEXT,
    imagenes VARCHAR(100),
    videos VARCHAR(100),
    fecha_publicacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    reacciones INT
)

--@block
CREATE TABLE amigos (
    nombre_amigo VARCHAR(50) NOT NULL,
    foto_amigo VARCHAR(100) NOT NULL,
    enlace_amigo VARCHAR(100) NOT NULL
)