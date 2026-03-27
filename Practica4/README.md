# Práctica 04: Números Naturales y Recursión

**Información del Estudiante**
* **Nombre:** Oscar Leonardo Olvera Ruiz
* **Usuario de GitHub:** lewenhar7
* **Asignatura:** Estructuras Discretas
* **Información de la versión:** 2.1
* **Profesor:** Rafael Reyes Sánchez
* **Ayudante de laboratorio:** Irvin Javier Cruz Gónzalez
* **Ayudante:** Daniel Rojo Mata
* **Fecha:** 26 de marzo del 2026
* **Copyright:** © 2026

---

**Tiempo requerido:** 4 horas

## Objetivo

Implementar estructuras de datos algebraicas y recursión en Haskell para representar números naturales, enteros y matrioskas, evitando el uso de tipos primitivos.
Tiempo requerido: 4 horas aproximadamente.

## Respuestas al Ejercicio 8 

1. ¿Cuál es la diferencia de las operaciones implementadas en ambos archivos? ¿Como se manejan todos los casos en cada implementación?
La principal diferencia es cómo estructuran la recursión y el pattern matching. En el archivo `enteros.hs`, la implementación intenta ser exhaustiva definiendo casi todas las combinaciones posibles de signos y utilizando sentencias `if-then-else` dentro de las funciones para tomar decisiones. En cambio, en `entero.hs` se maneja de forma más limpia aprovechando el pattern matching directo de Haskell; divide los problemas estrictamente en casos base (con Zero) y casos recursivos, y hace que las funciones de suma y resta se llamen entre sí para resolver los cambios de signo, lo que reduce la cantidad de código.

2. ¿Por qué se tiene implementada la operación mayorEnt en el archivo enteros.hs?
Se implementó porque en ese código, la función `restaEnt` necesita saber qué magnitud es más grande cuando se restan dos números positivos (Suc n y Suc m). Dependiendo de cuál es mayor, el resultado será positivo, negativo o cero. La función `mayorEnt` actúa como un auxiliar lógico para que el `if-then-else` de la resta sepa por qué camino ir.

3. Si pudieras quedarte con una sola implementación. ¿Cuál sería? Justifica tu respuesta.
Me quedaría con la implementación de `entero.hs`. Es mucho más apegada al paradigma funcional que estamos viendo. El código de `enteros.hs` se siente muy imperativo al abusar de los `if-then-else` y repetir tantos casos. La versión de `entero.hs` es más elegante porque confía en la recursión mutua entre la suma y la resta para manejar los signos negativos, lo que hace el código más corto y fácil de leer.

## Extra

En la canción de "El pollito pío", la recursión se nota en cómo se van acumulando los animales. Toda recursión necesita un caso base y un paso recursivo. Aquí, nuestro caso base es el pollito, porque es la condición de paro donde siempre termina la estrofa. El paso recursivo se da cuando entra un animal nuevo: este hace su sonido y automáticamente manda a llamar a la secuencia anterior en orden inverso. En el fondo, solo estamos apilando animales en memoria para luego desapilarlos uno por uno hasta llegar al pollito.
