{-
 * Nombre del archivo: entero.hs
 * Información de la versión: 1.3
 * Autor: Oscar Leonardo Olvera Ruiz
 * Profesor: Rafael Reyes Sánchez
 * Ayudante de laboratorio: Irvin Javier Cruz Gónzalez
 * Ayudante: Daniel Rojo Mata
 * Fecha: 26 de marzo del 2026
 * Copyright: © 2026
 -}

module Entero where

-- Definición de la estructura de datos para los Enteros
-- Nota: Se ajustó la sintaxis a 'Succ Entero' y 'Neg Entero' 
-- para que sea código Haskell válido según la intención de la práctica.
data Entero = Zero | Succ Entero | Neg Entero deriving (Eq, Show)

-- =========================================================
-- Funciones Auxiliares Lógicas (Valor Absoluto y Signos)
-- =========================================================

-- Suma de enteros en su forma absoluta (positiva)
sumaPos :: Entero -> Entero -> Entero
sumaPos Zero y = y
sumaPos (Succ x) y = Succ (sumaPos x y)

-- Multiplicación pura de magnitudes mediante recursión
multiPos :: Entero -> Entero -> Entero
multiPos Zero _ = Zero
multiPos (Succ x) y = sumaPos y (multiPos x y)

-- Función que extrae el valor absoluto de un Entero
absoluto :: Entero -> Entero
absoluto (Neg x) = x
absoluto x = x

-- Función para evaluar si un Entero es positivo (o Zero)
esPositivo :: Entero -> Bool
esPositivo (Neg _) = False
esPositivo _ = True

-- Función que aplica la Ley de los Signos al resultado final
aplicaSigno :: Bool -> Entero -> Entero
aplicaSigno _ Zero = Zero
aplicaSigno True x = x          -- Mismo signo = positivo
aplicaSigno False x = Neg x     -- Signo distinto = negativo

-- =========================================================
-- Ejercicio 5
-- =========================================================

-- Ejercicio 5: Función multiEnt
-- Toma dos enteros y regresa el producto de ellos manejando la ley de los signos.
-- Ejemplos de uso:
-- ghci> multiEnt (Neg (Succ (Succ (Succ (Succ Zero))))) (Succ (Succ Zero))
-- Neg (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero))))))))
-- ghci> multiEnt (Succ (Succ Zero)) (Neg (Succ Zero))
-- Neg (Succ (Succ Zero))
multiEnt :: Entero -> Entero -> Entero
multiEnt x y = aplicaSigno (esPositivo x == esPositivo y) (multiPos (absoluto x) (absoluto y))
