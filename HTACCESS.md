## Htaccess

### Debian
Como **root** edite o arquivo **/etc/apache2/apache2.conf**

**Obs**: Se alterou a pasta /var/www para outra, substitua para a mesma ao editar.

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
ou
`/etc/init.d/apache2 restart`

**Obs2**: Pode ser necessário abilitar o modulo de rewrite, para habilitá-lo use o comando:

`a2enmod rewrite`

Este comando também mostra se o módulo já está ativo.

### CentOS

Como **root** edite o arquivo **/etc/httpd/conf/httpd.conf**
Localize a seção: `<Directory "/var/www/html">`

E altere de:
`AllowOverride None`

Para:

`AllowOverride All`

Reinicie o Http com o comando:

`service httpd restart`

### Exemplos de .Htaccess

Exemplo de **.htaccess** com autenticação por usuário e senha (este arquivo deve ser criado como **root** na pasta onde quer que tenha autenticação):
```
Authtype Basic
AuthName "Acesso Restrito"
AuthUserFile /caminho_para/.htpasswd
Require valid-user
```

Para criar o arquivo .htpasswd use o seguinte comando:

`htpasswd -c -b .htpasswd usuario senha`

Exemplo de **.htaccess** que faz redirecionamento de tudo o que **não** é arquivo ou diretório para o **index.php**, este é muito utilizado para URL Amigável:
```
<IfModule mod_rewrite.c>
RewriteEngine On
RewriteBase /
RewriteRule ^index\.php$ - [L]
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule . /index.php [L]
</IfModule>
```
