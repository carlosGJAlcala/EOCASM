
# EOCASM

**Descripción:**
EOCASM es un conjunto de ejemplos desarrollados en lenguaje ensamblador (ASM) para ilustrar conceptos clave en la asignatura de Estructura Organizativa de Computadores. Estos ejemplos están diseñados para ayudar a los estudiantes a comprender mejor el funcionamiento interno de los sistemas informáticos a nivel de hardware y software.

## Contenido del Repositorio

El repositorio incluye los siguientes archivos ASM:

- `ENTRADASSALIDAS.asm`: Ejemplo que demuestra operaciones básicas de entrada y salida en ensamblador.
- `PALINDROMOS.asm`: Programa que verifica si una cadena de caracteres es un palíndromo.
- `ejercicioA-B.asm`: Solución a los ejercicios A y B propuestos en clase.
- `ejercicioC.asm`: Solución al ejercicio C propuesto en clase.
- `int10A.asm`: Ejemplo que utiliza la interrupción 10h para operaciones de video.
- `practica3.asm`: Código correspondiente a la práctica 3 del curso.
- `resmumen0505.asm`: Resumen de conceptos clave discutidos el 5 de mayo.
- `resumen2203.asm`: Resumen de conceptos clave discutidos el 22 de marzo.


## Requisitos

Para ensamblar y ejecutar los ejemplos proporcionados, necesitarás:

- Un ensamblador compatible, como [NASM](https://www.nasm.us/).
- Un entorno de ejecución adecuado para código ensamblador, como DOSBox o una máquina virtual con DOS.

## Instrucciones de Uso

1. **Clona el repositorio:**

   ```bash
   git clone https://github.com/carlosGJAlcala/EOCASM.git
   ```

2. **Navega al directorio del proyecto:**

   ```bash
   cd EOCASM
   ```

3. **Ensamblar el código:**

   Utiliza NASM para ensamblar el archivo deseado. Por ejemplo:

   ```bash
   nasm -f bin -o ENTRADASSALIDAS.com ENTRADASSALIDAS.asm
   ```

4. **Ejecuta el programa:**

   Ejecuta el archivo ensamblado en un entorno compatible. Por ejemplo, utilizando DOSBox:

   ```bash
   dosbox ENTRADASSALIDAS.com
   ```

## Contribuciones

Las contribuciones son bienvenidas. Si deseas colaborar:

1. Realiza un fork del repositorio.
2. Crea una nueva rama para tus cambios.
3. Envía un pull request detallando las modificaciones propuestas.

## Licencia

Este proyecto se distribuye bajo la licencia MIT. Para más detalles, consulta el archivo `LICENSE` en el repositorio.

