#!/bin/bash

old_sal=""

while IFS='|' read -r servidor matricula admissao_data admissao_ato carga_horaria salario_bruto
do


if [[ old_sal == "" ]]; then
    old_sal=${salario_bruto%?}
    echo $old_sal
    total_sal=0
else
    var=${salario_bruto%?}
    echo $var
#total_sal=`echo "$salario_bruto+$old_sal" | bc`
fi

done < (tail -n +2 relatorio.csv)

#echo $total_sal


