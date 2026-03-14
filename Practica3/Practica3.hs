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
