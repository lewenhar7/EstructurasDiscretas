# Práctica 5: Listas por Recursión

**Información del Estudiante**

* **Nombre:** Oscar Leonardo Olvera Ruiz
* **Usuario de GitHub:** lewenhar7
* **Asignatura:** Estructuras Discretas
* **Información de la versión:** 1.0
* **Profesor:** Rafael Reyes Sánchez
* ** Ayudante de laboratorio:** Irvin Javier Cruz Gónzalez
* **Ayudante:** Daniel Rojo Mata
* **Fecha:** 10 de abril de 2026
* **Copyright:** © 2026

## Objetivo de la práctica
Comprender y aplicar el concepto de recursividad para la resolución de problemas mediante el procesamiento de listas y la construcción de operaciones aritméticas elementales desde cero. Se aplicaron fundamentos lógicos similares a los axiomas de Peano para prescindir estrictamente del uso de operadores aritméticos nativos y funciones de listas predefinidas como `head`, `tail`, `init` y `last`.

## Tiempo requerido
Aproximadamente 4 horas de análisis lógico, codificación y pruebas.

## Actividades de la práctica
1. **hollerBack:** Conversión de cadenas a mayúsculas de forma recursiva.
2. **decimal_binario:** Algoritmo de conversión de base decimal a binaria.
3. **replica:** Generación de listas con elementos repetidos.
4. **recuperaElemento:** Extracción de elementos por índice mediante *pattern matching*.
5. **rota:** Algoritmo de rotación de listas iterativo que soporta desplazamientos positivos, negativos y mayores a la longitud de la lista.
6. **extranio (Punto Extra):** Implementación de la secuencia de Collatz haciendo uso exclusivo del motor aritmético personalizado.

## 7. Preguntas teóricas

**¿Qué es la Recursión de cola (tail recursion)?**
Es un caso particular de recursividad en el que la llamada recursiva es la última operación matemática o lógica que ejecuta la función. A diferencia de la recursión tradicional —donde el programa debe "pausar" y dejar operaciones pendientes en memoria mientras espera el resultado del caso base—, en la recursión de cola no hay nada más que calcular después de que la función se llama a sí misma. Esto es fundamental porque permite que el compilador aplique una optimización (Tail Call Optimization) que reutiliza el mismo espacio de memoria (el marco de la pila o *stack frame*). En la práctica, esto significa que podemos procesar listas gigantescas sin provocar un error de desbordamiento de pila (`Stack Overflow`).

**¿Cuál es la relación entre las funciones de orden superior foldr y foldl con este tipo de recursión?**
La relación se basa en cómo cada función gestiona las operaciones pendientes y el acumulador. 
Por un lado, `foldl` (pliegue por la izquierda) es el ejemplo clásico de recursión de cola. Procesa la lista de izquierda a derecha pasando un "acumulador" en cada paso; al llegar al final de la lista, el resultado ya está calculado en el acumulador y se devuelve directamente sin resolver operaciones pendientes.
Por el contrario, `foldr` (pliegue por la derecha) no es recursiva de cola de manera estricta. Al procesar los elementos, `foldr` necesita llegar hasta el final de la lista (el caso base) para recién empezar a aplicar la función de combinación de vuelta hacia el primer elemento. Esto significa que deja una cadena de operaciones en espera, consumiendo memoria en la pila proporcional al tamaño de la lista.

## Comentarios extra
Para acatar rigurosamente las restricciones impuestas sobre los operadores aritméticos (`+`, `-`, `*`, `div`, `even`), se construyó el módulo `Auxiliar.hs`. Toda operación matemática dentro de esta práctica se procesa mediante recursión pura (sucesores y predecesores), garantizando la integridad de las reglas y preparando el código para superar los criterios de evaluación y la prueba de Turing establecida.
