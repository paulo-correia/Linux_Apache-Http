## Server Status

É uma página HTML onde são apresentadas as estatísticas atuais do servidor, de forma facilmente legível.

### Debian
Como root **edite** o arquivo **/etc/apache2/mods-enabled/status.conf**

Localize a entrada `<Location /server-status>` e comente Require local colocando o # na frente
Salve, saia e reinicie o apache com o comando:

`service apache2 restart`

### CentOS

Como **root** edite o arquivo **/etc/httpd/conf/httpd.conf**

 Insira uma linha no final do arquivo e coloque:
 ```
ExtendedStatus On
 <Location /server-status>
     SetHandler server-status
 </Location>
```

### Testes

http://ip-do-servidor/server-status


