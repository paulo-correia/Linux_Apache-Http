## SSL
Habilita o certificado de sites, SSL na porta **443**

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