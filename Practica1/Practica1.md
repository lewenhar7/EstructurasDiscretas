# Cuestionario: Fundamentos de Haskell y Control de Versiones

### 1. ¿Cuáles son las principales diferencias entre Haskell y Racket?
Comparando ambos lenguajes desde sus fundamentos teóricos y de implementación:

* **Sistema de Tipos:** Haskell emplea un sistema de tipos **estático y fuerte** (basado en el sistema Hindley-Milner), lo que permite detectar inconsistencias antes de la compilación. Por el contrario, Racket (familia Lisp) utiliza tipado **dinámico**, verificando los valores durante la ejecución, lo que ofrece flexibilidad pero menor seguridad inmediata (Sancho, s.f.).
* **Pureza y Efectos:** Haskell es puramente funcional; aísla estrictamente los efectos secundarios (como imprimir en pantalla) para mantener la "transparencia referencial". Racket es multiparadigma y pragmático, permitiendo efectos laterales directos y mutación de estado cuando es conveniente (Hutton, 2016).
* **Evaluación:** Una distinción clave descrita por Sancho (s.f.) es que Haskell es "perezoso" (no evalúa nada hasta que es necesario), mientras que Racket es "ansioso" (evalúa los argumentos antes de entrar a la función).

### 2. ¿Cuáles son las principales diferencias entre Haskell y Java?
La diferencia radica en el cambio de mentalidad entre el paradigma imperativo y el declarativo:

* **El "Qué" vs. el "Cómo":** Como explica la UPV (2019), Java (Imperativo/POO) se centra en el *cómo*: detallar los pasos y cambios de estado para resolver el problema. Haskell (Declarativo) se centra en el *qué*: definir las relaciones entre los datos y las funciones matemáticas que los transforman, sin un estado global mutable.
* **Manejo de Errores (Nulidad):** En Java es común el error de ejecución por referencias nulas (*NullPointerException*). Haskell elimina este problema de raíz utilizando tipos algebraicos como `Maybe`, obligando al programador a gestionar la ausencia de datos en tiempo de compilación.
* **Sintaxis y Abstracción:** Java requiere una estructura verbosa de clases y objetos. Haskell permite una expresividad mucho más densa y matemática, logrando más funcionalidad con menos líneas de código.

### 3. ¿Por qué Haskell no ha alcanzado una adopción significativa en la industria del software?
A pesar de sus ventajas académicas, enfrenta barreras de entrada prácticas:

* **Curva de Aprendizaje:** El paradigma funcional puro requiere "desaprender" la programación imperativa tradicional. Conceptos abstractos y la gestión de efectos (Mónadas) elevan el costo de capacitación inicial para los equipos de desarrollo (Hutton, 2016).
* **Ecosistema Industrial:** Aunque estable, el volumen de librerías "listas para usar" (para web, móvil o UI) es menor comparado con gigantes como Java o Python, lo que a veces obliga a desarrollar soluciones desde cero (Sancho, s.f.).
* **Percepción de Complejidad:** A menudo se percibe como un lenguaje "demasiado académico" o matemático, lo que aleja a empresas que buscan prototipado rápido sin una base teórica profunda.

### 4. Si pudieras realizar una simple analogía entre Git y GitHub ¿Cuál se te vendría a la mente?
**Git es la Bitácora de Laboratorio y GitHub es el Congreso Científico.**

* **Git (La Bitácora):** Es personal y local. En ella registro cada experimento, anoto errores y documento la evolución de mi hipótesis paso a paso, incluso sin conexión a internet. Es mi control privado del caos.
* **GitHub (El Congreso):** Es el espacio público. Es donde presento mis hallazgos limpios para que la comunidad los revise, otros colegas propongan mejoras (*Pull Requests*) o basen sus investigaciones en mi trabajo (*Forks*).

---
### Referencias Bibliográficas

* Hutton, G. (2016). *Programming in Haskell* (2.ª ed.). Cambridge University Press.
* Sancho, F. (s.f.). *Haskell: el Lenguaje Funcional*. Ciencias de la Computación e Inteligencia Artificial, Universidad de Sevilla. Recuperado de [http://www.cs.us.es/~fsancho/Blog/posts/Haskell_el_lenguaje_funcional.md](http://www.cs.us.es/~fsancho/Blog/posts/Haskell_el_lenguaje_funcional.md)
* Universitat Politècnica de València - UPV. (2019, 13 noviembre). *El paradigma de programación funcional* [Video]. YouTube.
