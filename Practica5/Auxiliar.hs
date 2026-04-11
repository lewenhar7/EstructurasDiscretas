{-
 * Nombre del archivo: Auxiliar.hs
 * Información de la versión: 1.0
 * Autor: Oscar Leonardo Olvera Ruiz
 * Profesor: Rafael Reyes Sánchez
 * Ayudante de laboratorio: Irvin Javier Cruz Gónzalez
 * Ayudante: Daniel Rojo Mata
 * Fecha: 10 de abril de 2026
 * Copyright: © 2026
 -}

module Auxiliar where

-- Implementación de suma recursiva mediante sucesores y predecesores.
suma :: Int -> Int -> Int
suma a 0 = a
suma a b
    | b > 0     = suma (succ a) (pred b)
    | otherwise = suma (pred a) (succ b)

-- Implementación de resta recursiva.
resta :: Int -> Int -> Int
resta a 0 = a
resta a b
    | b > 0     = resta (pred a) (pred b)
    | otherwise = resta (succ a) (succ b)

-- Implementación de multiplicación recursiva.
multiplicacion :: Int -> Int -> Int
multiplicacion _ 0 = 0
multiplicacion a b
    | b > 0     = suma a (multiplicacion a (pred b))
    | otherwise = resta 0 (multiplicacion a (resta 0 b))

-- Implementación de división entera recursiva para números positivos.
division :: Int -> Int -> Int
division a b
    | a < b     = 0
    | otherwise = suma 1 (division (resta a b) b)

-- Implementación de módulo recursivo (residuo) para números positivos.
modulo :: Int -> Int -> Int
modulo a b
    | a < b     = a
    | otherwise = modulo (resta a b) b

-- Verifica si un número es par mediante recursión.
esPar :: Int -> Bool
esPar 0 = True
esPar 1 = False
esPar n
    | n > 0     = esPar (resta n 2)
    | otherwise = esPar (suma n 2)

-- Concatena dos listas de forma recursiva.
concatenar :: [a] -> [a] -> [a]
concatenar [] ys = ys
concatenar (x:xs) ys = x : concatenar xs ys
