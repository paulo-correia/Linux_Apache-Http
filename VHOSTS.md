## Virtual Hosts

Virtual Host é a capacidade de hospedar mais do que um web site numa única máquina, com um endereço IP ou mais.

### Debian
Criar um usuário (nome do site) como **root**:

`adduser --home (/var/www/usuário/html ou /var/www/usuário/public_html) usuário`

Criar um conteúdo de testes dentro da pasta html ou public_html

`echo teste >> /var/www/usuário/html/index.html` 

ou 

`echo teste >> /var/www/usuário/public_html/index.html`

Criar o arquivo **vhosts.conf** em **/etc/apache2/sites-available** com o seguinte conteúdo:

```
<VirtualHost *:80>
        ServerName usuário (site)
        ServerAlias www.usuário 

        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/usuário/html ou var/www/usuário/public_html 

        ErrorLog /var/www/usuário/log/error.log
        CustomLog /var/www/usuário/log/access.log combined
</VirtualHost>
```
Desabilitar o **000-default.conf** ou **default.conf**

a2dissite **000-default.conf** ou a2dissite **default.conf**

Desabilitar qualquer outro

`a2dissite nome_do.conf ou só digitar o a2dissite que ele lista os sites habilitados`

Habilitar o** vhosts.conf**

`a2ensite vhosts.conf`

**Obs:** Ao invés de ter um único arquivo **vhosts.conf**, pode ser criado um arquivo **.conf** para cada site, mas tem que ser habilitado com o comando `a2ensite `.

Criar a pasta log com o comando:

`mkdir /var/www/usuário/log`

Reiniciar o Apache

`service apache2 restart`

### CentOS

Criar um usuário (nome do site) com o comando:

`adduser -d (/var/www/usuário/html ou /var/www/usuário/public_html) usuário`

Criar um conteúdo de testes dentro da pasta html ou public_html com o comando:

`echo teste >> /var/www/usuário/html/index.html`
 
ou
 
`echo teste >> /var/www/usuário/public_html/index.html`

Criar o arquivo **vhosts.conf** em **/etc/httpd/conf.d** com o seguinte conteúdo:

```
<VirtualHost *:80>
       ServerName usuário (site)
       ServerAlias www.usuário
 
       ServerAdmin webmaster@localhost
       DocumentRoot /var/www/usuário/html ou var/www/usuário/public_html
 
       ErrorLog /var/www/usuário/log/error.log
       CustomLog /var/www/usuário/log/access.log combined
</VirtualHost>
```

**Obs:** Ao invés de ter um único arquivo **vhosts.conf**, pode ser criado um arquivo **.conf** para cada site.

Criar a pasta log com o comando:

`mkdir /var/www/usuário/log`

Reiniciar o Apache com o comando:

`service httpd restart`
