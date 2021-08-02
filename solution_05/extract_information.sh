#!/bin/bash

declare -A d=()
declare -A nomes=()
declare -A matricula=()
declare -A admissao_data=()
declare -A admissao_ato=()
declare -A carga_horaria=()
declare -A cargo=()
declare -A secao=()
declare -A vinculo=()
declare -A orgao=()
declare -A admissao_tipo=()
declare -A referencia=()
declare -A salario_bruto=()



nomes=$(awk -F '[<>]' 'BEGIN{print "Servidor"}/column-0/{printf $3 ; print ":" }' 'RelatórioDeFolhasDePagamento.xml')

matricula=$(awk -F '[<>]' 'BEGIN{print "Matricula"}/column-1>/{printf $3 ; print ":" }' 'RelatórioDeFolhasDePagamento.xml')

admissao_data=$(awk -F '[<>]' 'BEGIN{print "Data_de_Admissao"}/column-2/{printf $3 ; print ":" }' 'RelatórioDeFolhasDePagamento.xml')

admissao_ato=$(awk -F '[<>]' 'BEGIN{print "Ato_de_Admissao"}/column-3/{printf $3 ; print ":" }' 'RelatórioDeFolhasDePagamento.xml')

carga_horaria=$(awk -F '[<>]' 'BEGIN{print "Carga_Horaria"}/column-4/{printf $3 ; print ":" }' 'RelatórioDeFolhasDePagamento.xml')

salario_bruto=$(awk -F '[<>]' 'BEGIN{print "Salario_Bruto"}/column-12/{printf $3 ; print ":" }' 'RelatórioDeFolhasDePagamento.xml')


IFS=":"

variavel_controle=$(echo $nomes | sed 's/ /_/g')
echo $variavel_controle >> nomes.txt

variavel_controle=$(echo $matricula )
echo $variavel_controle >> matricula.txt

variavel_controle=$(echo $admissao_data | sed 's/ /_/g')
echo $variavel_controle >> admissao_data.txt

variavel_controle=$(echo $admissao_ato | sed 's/ /_/g')
echo $variavel_controle >> admissao_ato.txt

variavel_controle=$(echo $carga_horaria | sed 's/ /_/g')
echo $variavel_controle >> "carga_horaria.txt"

variavel_controle=$(echo $salario_bruto | sed 's/ /_/g')
echo $variavel_controle >> "salario_bruto.txt"

var=$(paste -d\| nomes.txt matricula.txt admissao_data.txt admissao_ato.txt carga_horaria.txt salario_bruto.txt)

echo $var >> relatorio.csv

#Removing files:

rm -rf *.txt

