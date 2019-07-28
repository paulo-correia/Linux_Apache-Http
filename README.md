![](https://github.com/paulo-correia/Linux_Apache-Http/blob/master/Apache_logo.png?raw=true)

## Instalação
Toda a instalação é feita como **root**

### Debian
```apt-get install apache2```
### CentOS
```yum install httpd```

## Configuração

### Debian
Como **root** crie o arquivo com o comando:

`touch /etc/apache2/conf-available/servername.conf`

Como **root** edite o arquivo recém criado colocando o seguinte conteúdo:

`ServerName localhost (Onde localhost pode ser o nome do servidor)`

Como root crie o link simbólico na pasta /etc/apache2/conf-enabled com o comando:

`ln -s ../conf-available/servername.conf`

Reinicie o Apache com o comando:

`service apache2 restart`

Teste abrindo o IP do servidor/máquina num navegador

