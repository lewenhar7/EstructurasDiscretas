{-
 - Nombre del hs: Practica3 
 - Información de la versión: 1.0
 - Autor: Oscar Leonardo Olvera Ruiz
 - Profesor: Rafael Reyes Sánchez
 - Ayudante de laboratorio: Irvin Javier Cruz Gónzalez
 - Ayudante: Daniel Rojo Mata
 - Fecha: 13 de marzo de 2026
 - Copyright: © 2026
 -}

module Practica3 where

-- Importamos la funcion esPar del modulo que acabamos de crear (Desafio Actividad 4)
import Practica2 (esPar)

-- =========================================================================
-- ACTIVIDAD 2: Tipos de datos y funcion creditos
-- =========================================================================

-- Definicion de nuestro propio tipo de dato para las materias.
-- Usamos 'deriving (Show)' para que la terminal pueda imprimir el resultado en texto.
data Materia = Introduccion_a_las_CC | Estructuras_Discretas | Algebra_Superior deriving (Show)

-- Funcion que recibe un entero (creditos) y devuelve una lista con las materias correspondientes.
creditos :: Int -> [Materia]
creditos 12 = [Introduccion_a_las_CC]
creditos 10 = [Estructuras_Discretas, Algebra_Superior]
creditos _  = []  -- Caso base defensivo: si no coincide con 12 o 10, devuelve una lista vacia.

-- =========================================================================
-- ACTIVIDAD 4: soloPares
-- =========================================================================
-- Usamos listas por comprensión y la función esPar importada de Practica2.
-- Filtra la lista original conservando solo los elementos que cumplen la condición.
soloPares :: [Int] -> [Int]
soloPares xs = [x | x <- xs, esPar x]

-- =========================================================================
-- ACTIVIDAD 5: negativos
-- =========================================================================
-- Filtramos los números menores a 0 con comprensión de listas.
-- Usamos 'length' (función permitida en los lineamientos) para contarlos.
negativos :: [Int] -> Int
negativos xs = length [x | x <- xs, x < 0]

-- =========================================================================
-- ACTIVIDAD 6: primos
-- =========================================================================
-- Función auxiliar: obtiene los divisores de un número n.
divisores :: Int -> [Int]
divisores n = [x | x <- [1..n], n `mod` x == 0]

-- Función auxiliar: Un número es primo si tiene exactamente dos divisores (1 y él mismo).
-- Nuevamente usamos la función permitida 'length'.
esPrimo :: Int -> Bool
esPrimo n = length (divisores n) == 2

-- Filtramos la lista original dejando solo los números primos.
primos :: [Int] -> [Int]
primos xs = [x | x <- xs, esPrimo x]

-- =========================================================================
-- ACTIVIDAD 7: coprimos
-- =========================================================================
-- Función auxiliar: obtiene divisores comunes de dos números iterando hasta el menor (a).
divisoresComunes :: Int -> Int -> [Int]
divisoresComunes a b = [x | x <- [1..a], a `mod` x == 0, b `mod` x == 0]

-- Dos números son coprimos si su único divisor común es el 1 (es decir, la longitud de la lista es 1).
-- Generamos la lista de coprimos de n evaluando los números en el rango de 1 a n.
coprimos :: Int -> [Int]
coprimos n = [x | x <- [1..n], length (divisoresComunes n x) == 1]
