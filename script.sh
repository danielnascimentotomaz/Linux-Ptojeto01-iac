#!/bin/bash


echo "Projeto  Infraestrutura como Código: Script de  Criação de Usuário,Diretorio e Permissões"

echo "==========================================================================================="

echo "CRIANDO OS DIRETORIOS"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "==========================================================================================="

echo "Criando OS GRUPOS DOS USUARIOS"



groupadd GRP_ADM

groupadd GRP_VEND

groupadd GRP_SEC


echo "=========================================================================================="

echo "CRIANDO OS USUARIOS"

useradd Carlos -c  "Convidado"  -m -s /bin/bash -p $(openssl passwd -6  123) -G GRP_ADM
useradd Maria  -c  "Convidado"  -m -s /bin/bash -p $(openssl passwd -6  123) -G GRP_ADM
useradd Joao -c  "Convidado"  -m -s /bin/bash -p $(openssl passwd -6  123)   -G GRP_ADM


useradd Debora -c  "Convidado"  -m -s /bin/bash -p $(openssl passwd -6  123) -G GRP_VEND
useradd Sebastiana -c  "Convidado"  -m -s /bin/bash -p $(openssl passwd -6  123) -G GRP_VEND
useradd Roberto  -c  "Convidado"  -m -s /bin/bash -p $(openssl passwd -6  123) -G GRP_VEND


useradd Josefina  -c  "Convidado"  -m -s /bin/bash -p $(openssl passwd -6  123) -G GRP_SEC
useradd Amanda -c  "Convidado"  -m -s /bin/bash -p $(openssl passwd -6  123) -G GRP_SEC
useradd Rogerio -c  "Convidado"  -m -s /bin/bash -p $(openssl passwd -6  123) -G GRP_SEC

echo "=========================================================================================="

echo "ESPECIFICANDO PERMISSÕES  DOS DIRETORIOS"

chown root:GRP_ADM /adm
chown root:GRP_VEND /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM.........."
