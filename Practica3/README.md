/*
 * Asignatura: Estructuras Discretas
 * Autor: Oscar Leonardo Olvera Ruiz
 * Información de la versión: 1.0
 * Profesor: Rafael Reyes Sánchez
 * Ayudante de laboratorio: Irvin Javier Cruz Gónzalez
 * Ayudante: Daniel Rojo Mata
 * Fecha: 13 de marzo de 2026
 * Copyright: © 2026
 */

# Práctica 03: Tipos de datos y listas por comprensión

**Tiempo requerido:** ~3 horas

## Objetivo
Comprender la sintaxis y creación de tipos de datos en Haskell, así como el uso de las clases de tipos. Dominar la construcción de listas por comprensión aplicando restricciones de funciones básicas y desarrollando una lógica de programación funcional pura.

## Actividades Teóricas

### 1. ¿Cuál es la diferencia entre Num e Int?
`Int` es un **tipo de dato** específico que representa números enteros limitados (dependiendo de la arquitectura de la computadora, usualmente de 64 bits). Por otro lado, `Num` es una **clase de tipos** (typeclass) que agrupa a todos los tipos de datos que se comportan como números y soportan operaciones matemáticas (como `Int`, `Integer`, `Float`, `Double`). Es decir, `Int` es simplemente una de las muchas instancias que pertenecen a la familia `Num`.

![Captura de GHCi sobre Int y Num](Int_Num.png)

### 3. Lista infinita de pares naturales
La definición `allPairs = [(x,y) | x <- [0..], y <- [0..]]` **no funciona** correctamente para listar todos los pares de números naturales.
**Justificación:** Debido al orden de evaluación de las listas por comprensión, Haskell fijará `x = 0` y comenzará a evaluar la lista infinita de `y`. Esto generará `(0,0), (0,1), (0,2)...` hasta el infinito. Como la evaluación de `y` nunca termina, la variable `x` nunca logrará avanzar al valor `1`.
**Versión corregida:** Para garantizar que todos los pares aparezcan, podemos iterar sobre la suma de sus componentes (una técnica conocida como diagonalización). 
`allPairs = [(x, n - x) | n <- [0..], x <- [0..n]]`
*Explicación:* Aquí `n` representa la suma de `x + y`. Primero generamos los pares cuya suma es 0 `(0,0)`, luego los que suman 1 `(0,1), (1,0)`, luego los que suman 2 `(0,2), (1,1), (2,0)`, y así sucesivamente. De esta forma garantizamos recorrer todos los pares sin quedarnos atrapados en el infinito.

## Comentarios Extra
Durante el análisis teórico de esta práctica, resulta interesante observar cómo la evaluación perezosa (lazy evaluation) de Haskell nos permite modelar conceptos matemáticos abstractos, como el infinito, sin desbordar la memoria de la computadora, siempre y cuando estructuremos correctamente nuestras listas por comprensión.
