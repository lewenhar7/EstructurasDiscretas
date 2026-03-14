module Practica2 (esPar) where

-- Funcion que verifica si un numero entero es par usando la operacion modulo
esPar :: Int -> Bool
esPar n = n `mod` 2 == 0
