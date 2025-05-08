# Proyecto COVID-19 API - Spring Boot

Este proyecto en Java Spring Boot consume una API pública de estadísticas COVID-19 (a través de RapidAPI), almacena la información en una base de datos MySQL y automatiza la descarga de datos mediante un hilo programado.

## 📌 Funcionalidades principales

- Descarga de **regiones**, **provincias** y **reportes** desde la API COVID-19.
- Almacenamiento de los datos en una base de datos relacional.
- Ejecución de una tarea automática (hilo) para descargar provincias después de un retardo configurable.
- Estructuración del proyecto en capas (controladores, servicios, repositorios).
- Buenas prácticas de nombres y separación de responsabilidades (Principio SRP).

## 🚀 Endpoints disponibles

| Método | Ruta              | Descripción                                 |
|--------|-------------------|---------------------------------------------|
| GET    | `/regiones`       | Descarga y guarda las regiones              |
| GET    | `/provinciaapi`   | Descarga y guarda las provincias            |
| GET    | `/reportes`       | Descarga y guarda los reportes              |

## ⚙️ Estructura del proyecto

- `controllers/`: Controlador principal que expone los endpoints.
- `services/`: Contiene la lógica para hacer peticiones HTTP y guardar datos.
- `repositories/`: Interfaces de JPA para persistencia y una clase que lanza el hilo (`RepositorioHiloProceso`).
- `models/`: Clases entidad que representan los datos de regiones, provincias y reportes.

## 🧵 Automatización con Hilo

El archivo `RepositorioHiloProceso.java` crea un hilo que espera una cantidad de segundos definida en el archivo `application.properties` y luego descarga automáticamente las provincias.  
Ejemplo de configuración:

```properties
api.delay.seconds=10

Link video: https://drive.google.com/drive/folders/1KnMYcQRJ_qUCNSyc-GIoJMCIvNK6JAGd?usp=sharing
