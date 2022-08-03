#!/bin/bash
# antes de executar script dar permissao  chmod +x iacl.sh
#deletar usuarios userdel -r nomeusuario

#echo "listar usuarios"
# cat /etc/group
# deletar grupos groupdel GRP_ADM

echo "Criando diretorios..."
echo "----------------------"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."
echo "------------------"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios e adicionando ao grupo..."
echo "--------------------"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM -c "Carlos da Silva"
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM -c "Maria da Silva"
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM -c "Joao da Silva"

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN -c "Debora da Silva"
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123)  -G GRP_VEN -c "Sebastiao da Silva"
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN -c "Roberto da Silva"

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC -c "Josefina da Silva"
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC -c "Amanda da Silva"
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC -c "Rogerio da Silva"

echo "Adicionar permissoes/donos aos diretorios"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Alterar permissoes dos diretorios"
# root:7 acesso total - group:7 acesso total - demais usuarios outros grupos:0 nenhum acesso"
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado ..."




