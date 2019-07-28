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

## Htaccess

### Debian
Como **root** edite o arquivo **/etc/apache2/apache2.conf**

Altere de:

```
<Directory /var/www/>
       Options Indexes FollowSymLinks
       AllowOverride None
       Require all granted
</Directory>
```

Para:
```
<Directory /var/www/>
       Options Indexes FollowSymLinks
       AllowOverride All
       Require all granted
</Directory>
```

Reinicie o Apache com o comando:

`service apache2 restart`

Página Inicial:

Como **root**  edite o arquivo **/var/www/html/index.html**

### CentOS

Como **root** edite o arquivo **/etc/httpd/conf/httpd.conf**
Localize a seção: `<Directory "/var/www/html">`

E altere de:
`AllowOverride None`

Para:

`AllowOverride All`

Reinicie o Http com o comando:

`service httpd restart`

### Exemplo de .Htaccess

Exemplo de **.htaccess** com autenticação por usuário e senha (este arquivo deve ser criado como **root** na pasta onde quer que tenha autenticação):
```
Authtype Basic
AuthName "Acesso Restrito"
AuthUserFile /caminho_para/.htpasswd
Require valid-user
```

Para criar o arquivo .htpasswd use o seguinte comando:

`htpasswd -c -b .htpasswd usuario senha`