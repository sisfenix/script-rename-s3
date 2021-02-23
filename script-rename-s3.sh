########################################################
#### Script para mover arquivos entre bucket S3 AWS ####
#### Criado em: 04/02/2021                          ####
#### Revisão  : 00                                  ####
#### Copyright (c) 2021 by Alan Lopes               ####
########################################################
# 04/02/2021 - VERSAO INICIAL                          #
########################################################

# NECESSARIO AWS CLI INSTALADO E CONFIGURADO

#!/bin/sh

var_base=base.txt
var_bucket_origem="sgu-hml-documentos"
var_bucket_destino="sgu-hml-documentos"

echo "Inicio do script..."
echo $(date)
echo 
for I in $(cat $var_base)
do
  var_origem=$(echo $I | cut -f 1 -d',')
  var_destino=$(echo $I | cut -f 2 -d',')

  echo "movendo arquivo de s3://$var_bucket_origem/$var_origem para s3://$var_bucket_destino/$var_destino..."
  aws s3 mv s3://$var_bucket_origem/$var_origem s3://$var_bucket_destino/$var_destino 2>> error_$$.txt 1>> log_$$.txt
done
echo 
echo $(date)
echo "Fim do script."
