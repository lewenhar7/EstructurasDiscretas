{-
 * Nombre del archivo: Auxiliar.hs
 * Información de la versión: 1.0
 * Autor: Oscar Leonardo Olvera Ruiz
 * Profesor: Rafael Reyes Sánchez
 * Ayudante de laboratorio: Irvin Javier Cruz Gónzalez
 * Ayudante: Daniel Rojo Mata
 * Fecha: 26 de marzo del 2026
 * Copyright: © 2026
 -}

module Auxiliar where

-- Función auxiliar genérica para concatenar dos listas.
-- La utilizaremos posteriormente en mati.hs para la función 'aplana'.
concatenar :: [a] -> [a] -> [a]
concatenar [] ys = ys
concatenar (x:xs) ys = x : concatenar xs ys
