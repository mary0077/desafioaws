#!/bin/bash

# Defina a variável para seu nome
SEU_NOME="Mariana"

# Encontre o número máximo existente de arquivo (ex.: Mariana1, Mariana2...)
ULTIMO_NUMERO=$(ls | grep "^$SEU_NOME[0-9]\+$" | sed "s/[^0-9]//g" | sort -n | tail -1)

# Se não houver arquivos existentes, inicie do número 1
if [ -z "$ULTIMO_NUMERO" ]; then
    ULTIMO_NUMERO=0
fi

# Comece com o próximo número para criar 25 novos arquivos
INICIO=$((ULTIMO_NUMERO + 1))
FIM=$((ULTIMO_NUMERO + 25))

# Loop para criar os arquivos
for (( i=INICIO; i<=FIM; i++ ))
do
    touch "${SEU_NOME}${i}"
done

echo "Criados arquivos de ${SEU_NOME}${INICIO} até ${SEU_NOME}${FIM}"
