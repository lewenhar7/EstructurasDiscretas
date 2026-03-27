{-
 * Nombre del archivo: natural.hs
 * Información de la versión: 1.0
 * Autor: Oscar Leonardo Olvera Ruiz
 * Profesor: Rafael Reyes Sánchez
 * Ayudante de laboratorio: Irvin Javier Cruz Gónzalez
 * Ayudante: Daniel Rojo Mata
 * Fecha: 26 de marzo del 2026
 * Copyright: © 2026
 -}

module Natural where

-- Definición de la estructura de datos para los Números Naturales
data Natural = Cero | S Natural deriving (Eq, Show)

-- Ejercicio 1: Función a_natural
-- Toma un entero (0,1,2...) y lo lleva a su estructura de dato Natural.
-- Ejemplos de uso:
-- ghci> a_natural 0
-- Cero
-- ghci> a_natural 2
-- S (S Cero)
a_natural :: Int -> Natural
a_natural 0 = Cero
a_natural n
    | n > 0     = S (a_natural (n - 1))
    | otherwise = error "Los numeros naturales no pueden ser negativos"

-- Ejercicio 2: Función a_entero
-- Lleva un dato Natural a su valor entero.
-- Ejemplos de uso:
-- ghci> a_entero Cero
-- 0
-- ghci> a_entero (S (S (S Cero)))
-- 3
a_entero :: Natural -> Int
a_entero Cero = 0
a_entero (S n) = 1 + a_entero n

-- =========================================================
-- Operaciones Auxiliares (Suma y Multiplicación)
-- Necesarias para poder construir la potencia y el factorial
-- =========================================================

sumaNat :: Natural -> Natural -> Natural
sumaNat Cero m = m
sumaNat (S n) m = S (sumaNat n m)

multiNat :: Natural -> Natural -> Natural
multiNat Cero _ = Cero
multiNat (S n) m = sumaNat m (multiNat n m)

-- Ejercicio 3: Función potenciaNat
-- Eleva un número natural a la potencia del segundo.
-- Ejemplos de uso:
-- ghci> potenciaNat (S (S (S Cero))) (S (S Cero))
-- S (S (S (S (S (S (S (S (S Cero))))))))
potenciaNat :: Natural -> Natural -> Natural
potenciaNat _ Cero = S Cero
potenciaNat base (S exp) = multiNat base (potenciaNat base exp)

-- Ejercicio 4: Función facNat
-- Devuelve el factorial de un natural dado.
-- Ejemplos de uso:
-- ghci> facNat (S (S (S Cero)))
-- S (S (S (S (S (S Cero)))))
facNat :: Natural -> Natural
facNat Cero = S Cero
facNat (S n) = multiNat (S n) (facNat n)
