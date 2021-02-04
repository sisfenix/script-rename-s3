# Script para mover arquivos entre bucket S3 AWS
##### NECESSARIO AWS CLI INSTALADO E CONFIGURADO

### *** AMBIENTE DE TESTE ***
#criando arquivos de testes
```sh
$ touch temp/bolinhadegude{0..9}
$ for I in {0..9}; do echo $I > temp/bolinhadegude$I; done
```
#mover arquivos de testes para arquivos para o bucket
```sh
$ for I in {0..9}; do aws s3 cp ./temp/bolinhadegude$I s3://sgu-hml-documentos/; done
```
#listar arquivos no bucket
```sh
$ aws s3 ls s3://sgu-hml-documentos/bolinhadegude
```
#execucao do script
```sh
$ sh ./script-rename-s3.sh
```
