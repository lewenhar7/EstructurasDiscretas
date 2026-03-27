{-
 * Nombre del archivo: mati.hs
 * Información de la versión: 1.1
 * Autor: Oscar Leonardo Olvera Ruiz
 * Profesor: Rafael Reyes Sánchez
 * Ayudante de laboratorio: Irvin Javier Cruz Gónzalez
 * Ayudante: Daniel Rojo Mata
 * Fecha: 26 de marzo del 2026
 * Copyright: © 2026
 -}

module Mati where

-- Importamos la función que creamos en nuestro módulo auxiliar
import Auxiliar (concatenar)

-- Definición de la estructura de datos para las Matrioskas
-- Nota: Corregimos la sintaxis del PDF de ':' a '=' para compilar en Haskell.
data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)

-- =========================================================
-- Ejercicio 6
-- =========================================================

-- Función mayorIgual
-- Compara dos matrioskas y devuelve True si la primera es mayor o igual 
-- en nivel de anidamiento que la segunda.
-- Ejemplos de uso:
-- ghci> mayorIgual Mati Mati
-- True
-- ghci> mayorIgual (Cont (Cont Mati)) (Cont (Cont (Cont Mati)))
-- False
mayorIgual :: Matrioska -> Matrioska -> Bool
mayorIgual _ Mati = True
mayorIgual Mati (Cont _) = False
mayorIgual (Cont m1) (Cont m2) = mayorIgual m1 m2

-- =========================================================
-- Ejercicio 7
-- =========================================================

-- Función aplana
-- Convierte una matrioska anidada en una lista plana de sus componentes.
-- Hace uso de la función 'concatenar' del módulo Auxiliar.
-- Ejemplos de uso:
-- ghci> aplana Mati
-- [Mati]
-- ghci> aplana (Cont (Cont Mati))
-- [Cont (Cont Mati),Cont Mati,Mati]
aplana :: Matrioska -> [Matrioska]
aplana Mati = [Mati]
aplana (Cont m) = concatenar [Cont m] (aplana m)
