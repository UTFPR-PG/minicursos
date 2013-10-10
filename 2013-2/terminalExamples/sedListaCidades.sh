#!/bin/sh

# match every line beggining and ending to include "rota()" text
# also lowercases text
sed "s|^.*$|rota(\L&).|g" ListaEscalasCidades.csv > sedOut.txt
