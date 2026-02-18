# Práctica 01: Haskell, Git y GitHub

## Información General

| Punto | Descripción |
| :--- | :--- |
| **1. Objetivo de la práctica** | Configurar un entorno de desarrollo funcional para Haskell bajo Linux (Fedora), gestionar el control de versiones mediante Git y comprender las diferencias fundamentales entre los paradigmas de programación funcional e imperativa. |
| **2. Tiempo requerido** | 4 horas (Instalación de GHCup, configuración de Git y redacción del análisis). |
| **3. Comentarios y problemas** | Durante la instalación en Fedora, se optó por utilizar `curl` para obtener `GHCup` en lugar de los repositorios de la distribución (`dnf`), garantizando así la última versión estable. El principal reto fue asegurar que las variables de entorno en el `PATH` persistieran correctamente tras el reinicio de la terminal para que los comandos de Haskell fueran reconocidos. |
| **4. Justificación (Docker/WSL)** | N/A. Se trabaja de forma nativa sobre Fedora Linux Workstation para maximizar el rendimiento y evitar capas de abstracción innecesarias. |
