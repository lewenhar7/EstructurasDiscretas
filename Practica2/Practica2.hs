{-
  Nombre de la clase: Estructuras Discretas
  Información de la versión: Práctica 02
  Autor: Oscar Leonardo Olvera Ruiz
  Profesor: Rafael Reyes Sánchez
  Ayudante de laboratorio: Irvin Javier Cruz Gonzalez
  Ayudante: Daniel Rojo Mata
  Fecha: 3 de marzo de 2026
  Copyright: © 2026
-}

module Practica2 where

import Data.Bits

-- 2. Say Hello!
-- La funcion sayHello recibe una cadena de texto y devuelve la concatenacion con "Hello, [nombre]!"
sayHello :: String -> String
sayHello nombre = "Hello, " ++ nombre ++ "!"

-- 3. calcularPropina
-- Calcula el 10% de propina a partir de una cuenta total.
calcularPropina :: Float -> Float
calcularPropina cuenta = cuenta * 0.10

-- 4. Menor
-- Recibe una tupla con 3 numeros y devuelve el menor de ellos.
menor :: (Int, Int, Int) -> Int
menor (x, y, z) = 
    if x < y && x < z then x
    else if y < z then y
    else z

-- 5. decide
-- Si el booleano es True devuelve la primera cadena, si es False la segunda.
decide :: Bool -> String -> String -> String
decide b s1 s2 = if b then s1 else s2

-- 6. esDescendiente
-- Devuelve True si los numeros x, y, z, w estan en orden estrictamente descendente.
esDescendiente :: Int -> Int -> Int -> Int -> Bool
esDescendiente x y z w = (x > y) && (y > z) && (z > w)

-- 7. esDivisible
-- Indica si x es divisible por y. Maneja el caso de division por cero.
esDivisible :: Int -> Int -> String
esDivisible x y = 
    if y == 0 then "Error: No se puede dividir entre cero"
    else if x `mod` y == 0 then show x ++ " es divisible por " ++ show y
    else show x ++ " no es divisible por " ++ show y

-- 8. esPar
-- Verifica si un numero es par usando operaciones a nivel de bits (AND).
-- (n .&. 1) == 0 verifica si el ultimo bit es 0 (caracteristica de los pares).
esPar :: Int -> Bool
esPar n = (n .&. 1) == 0

-- 9. hipotenusa
-- Calcula la hipotenusa de un triangulo rectangulo.
hipotenusa :: Float -> Float -> Float
hipotenusa b h = sqrt (b^2 + h^2)

-- 10. pendiente
-- Calcula la pendiente de la recta que pasa por dos puntos.
pendiente :: (Float, Float) -> (Float, Float) -> Float
pendiente (x1, y1) (x2, y2) = (y2 - y1) / (x2 - x1)

-- 11. distanciaPuntos
-- Calcula la distancia entre dos puntos (x1, y1) y (x2, y2).
distanciaPuntos :: (Float, Float) -> (Float, Float) -> Float
distanciaPuntos (x1, y1) (x2, y2) = sqrt ((x2 - x1)^2 + (y2 - y1)^2)

-- 12. Extra (Cuadrados)
-- Devuelve una lista con los cuadrados de los elementos.
-- Usa listas por comprension para evitar map y recursion explicita.
cuadrados :: [Int] -> [Int]
cuadrados lista = [x * x | x <- lista]
