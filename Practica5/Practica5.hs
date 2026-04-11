{-
 * Nombre del archivo: Practica5.hs
 * Información de la versión: 1.0
 * Autor: Oscar Leonardo Olvera Ruiz
 * Profesor: Rafael Reyes Sánchez
 * Ayudante de laboratorio: Irvin Javier Cruz Gónzalez
 * Ayudante: Daniel Rojo Mata
 * Fecha: 10 de abril de 2026
 * Copyright: © 2026
 -}

module Practica5 where

import Data.Char (toUpper)
import Auxiliar

-- 1. Función hollerBack
-- Convierte una cadena de texto a mayúsculas procesando cada carácter de forma recursiva.
hollerBack :: String -> String
hollerBack [] = []
hollerBack (x:xs) = toUpper x : hollerBack xs

-- 2. Función decimal_binario
-- Convierte un número decimal a su representación binaria en forma de lista.
-- Se apoya en una función auxiliar para construir la lista en el orden correcto
-- utilizando nuestras funciones de división y módulo.
decimal_binario :: Int -> [Int]
decimal_binario 0 = [0]
decimal_binario n = decimal_binario_aux n

-- Función de soporte para evitar que el caso base 0 devuelva [0] en medio de la recursión
-- cuando procesamos números mayores a cero.
decimal_binario_aux :: Int -> [Int]
decimal_binario_aux 0 = []
decimal_binario_aux n = concatenar (decimal_binario_aux (division n 2)) [modulo n 2]

-- 3. Función replica
-- Genera una lista que contiene 'n' repeticiones del elemento 'x'.
-- Utiliza recursión y la función auxiliar de resta para decrementar el contador,
-- respetando la restricción de no emplear operadores aritméticos nativos.
replica :: Int -> Int -> [Int]
replica _ 0 = []
replica x n = x : replica x (resta n 1)

-- 4. Función recuperaElemento
-- Devuelve el elemento que se encuentra en el índice dado dentro de una lista.
-- Se emplea el patrón de constructores (x:xs) para descomponer la lista sin usar 'head' ni 'tail',
-- reduciendo el índice recursivamente hasta alcanzar el caso base en la posición cero.
recuperaElemento :: [a] -> Int -> a
recuperaElemento [] _ = error "Indice fuera de rango"
recuperaElemento (x:xs) 0 = x
recuperaElemento (_:xs) n = recuperaElemento xs (resta n 1)

-- Función auxiliar para obtener la longitud de una lista de forma recursiva.
-- Se requiere para normalizar el número de rotaciones.
longitud :: [a] -> Int
longitud [] = 0
longitud (_:xs) = suma 1 (longitud xs)

-- 5. Función rota
-- Rota los elementos de una lista trasladando el primero al final 'n' veces.
-- Se normaliza el número de rotaciones usando módulo para evitar ciclos innecesarios
-- y manejar números grandes. Para valores negativos, se ajusta la rotación a la dirección opuesta.
rota :: [a] -> Int -> [a]
rota [] _ = []
rota lista 0 = lista
rota lista n
    | n > 0     = rotaPositiva lista (modulo n (longitud lista))
    | otherwise = rotaPositiva lista (modulo (suma n (longitud lista)) (longitud lista))

-- Función auxiliar que realiza la rotación paso a paso asumiendo un 'n' positivo y normalizado.
-- Utiliza nuestra función 'concatenar' en lugar del operador (++).
rotaPositiva :: [a] -> Int -> [a]
rotaPositiva lista 0 = lista
rotaPositiva (x:xs) n = rotaPositiva (concatenar xs [x]) (resta n 1)

-- 6. Función extranio (Algoritmo de Collatz) + Punto Extra
-- Genera la secuencia a partir de un entero positivo.
-- Se hace uso estricto de las funciones matemáticas desarrolladas en el módulo Auxiliar
-- para evitar los operadores nativos prohibidos y garantizar el punto extra.
extranio :: Int -> [Int]
extranio 1 = [1]
extranio n
    | esPar n   = n : extranio (division n 2)
    | otherwise = n : extranio (suma (multiplicacion n 3) 1)
