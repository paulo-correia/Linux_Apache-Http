## SSL
Habilita o certificado de sites, SSL na porta **443**

## No Docker (Alpine Linux)
[Docker_Apache_SSL](https://github.com/paulo-correia/Docker_Apache_SSL)

### Debian
Como **root** ative o módulo SSL usando o comando:

`a2enmod ssl`

Como root reinicie o Apache usando o comando:

`service apache2 restart`

### CentOS
Como **root** instale o módulo SSL usando o comando:

`yum -y install mod_ssl` 

Como **root** reinicie o serviço httpd usando o comando:

`service httpd restart`
