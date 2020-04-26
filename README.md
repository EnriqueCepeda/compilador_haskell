# COMPILADOR FUNCIONAL EN HASKELL
## ESPAÑOL
Compilador e interprete hecho en Haskell de [un subconjunto definido del lenguaje PASCAL]((docs/grammar.bnf)) para la asignatura de Programación Declarativa hecho por Raul Bernalte Sánchez y Enrique Cepeda Villamayor.

### Requisitos
1. [Cabal 2.0.0](https://www.haskell.org/cabal/) 
2. [GHC 8.6.5](https://www.haskell.org/ghc/)

Para hacer funcionar el proyecto, primero es necesario compilarlo. Para ello, ejecuta el siguiente comando la terminal de tu Sistema Operativo:

    cabal new-build main --enable-tests

Para interpretar un codigo fuente ejemplo (incluido en el proyecto) proveniente del [subconjunto especificado en la gramática Backus-Naur](docs/grammar.bnf) ejecuta el siguiente comando en la terminal:

    cabal new-exec main

Para interpretar archivos de código fuente adicionales, incluir en la carpeta resources estos archivos, y ejecuta en la terminal el siguiente comando:

    cabla new-exec main <nombre_archivo>

Para correr los tests hechos del analizador léxico, sintáctico y evaluador, ejecuta en la terminal el siguiente comando:

    cabal new-test


## ENGLISH
Compiler and interpreter made in Haskell of a [concrete subset of PASCAL lenguage]((docs/grammar.bnf)). 
Work done for Declarative Programming subject by Raul Bernalte Sánchez and Enrique Cepeda Villamayor.

### Requirements
1. [Cabal 2.0.0](https://www.haskell.org/cabal/) 
2. [GHC 8.6.5](https://www.haskell.org/ghc/)

To use the project, compiling it is necessary. For that, run the following command in your Operative System terminal.

    cabal new-build main --enable-tests

To interpret an example source code (included in the project) which comes from the [subset specified in the Backus-Naur grammar](docs/grammar.bnf) run the following command in the terminal:

    cabal new-exec main

To interpret additional source code files, include those files in resources folder, and run the following command in the terminal:

    cabal new-exec main <nombre_archivo>

To run the made tests for the lexer, parser and evaluator, execute in terminal the following command:

    cabal new-test
