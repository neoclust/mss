��            )   �      �  M   �  D   �  #   4  *   X  1   �  1   �  F   �  b   .  b   �     �          '     �     �     �     �     �     �     �     �  /   
  b   :     �  q   �     /     3     :     A     O  �  `  K   6	  O   �	  '   �	  *   �	  C   %
  C   i
  T   �
  e     e   h     �  (   �  �        �     �     �     �     �     �     �     �  3     n   ;  '   �  �   �     ^     c     j     q                    	                                                                          
                                                - Networks authorized to send mail without authentication : $smtpd_mynetworks - Non-SSL connexions are disabled by default on the IMAP/POP3 server - SSL is enabled on the SMTP server - the mail domain $DOMAIN has been created Allow mail services access from external networks Allow mail services access from internal networks Complete mail service with POP/IMAP, anti-virus and anti-spam toolkits Configure the firewall to accept smtp/imap/pop3 connections on interfaces configured as 'external' Configure the firewall to accept smtp/imap/pop3 connections on interfaces configured as 'internal' Default mail domain Failed to add the mail domain. Failed to register razor. Try to run as root later : su - amavis -s /bin/sh -c 'razor-admin -register && razor-admin -discover' IMAPS IMAPS and POP3S Mail Mail Service Management interface My networks POP3S Protocols supported Protocols that the dovecot server will provide. Specify which clients are authorized to send mails through the mail server without authentication. The mail service is configured. You can add mail addresses and aliases to your users through the management interface at https://@HOSTNAME@/mmc/. all fw_lan fw_wan popimap_proto smtpd_mynetworks Project-Id-Version: Management Server Setup
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-11-27 10:03+0100
PO-Revision-Date: 2015-01-20 16:41+0200
Last-Translator: Andre <andre@mandriva.com>
Language-Team: Portuguese (Brazil) <http://translate.mandriva.com/projects/mss-mbs2/mds_mail/pt_BR/>
Language: pt_BR
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Weblate 2.1-dev
 - Redes autorizadas a enviar e-mails sem autenticação: $ smtpd_mynetworks - Por padrão, as conexões Não-SSL estão desabilitadas no servidor IMAP/POP3 - SSL está habilitado no servidor SMTP - o domínio de e-mail $DOMAIN foi criado. Permitir acesso aos serviços de correio a partir de redes externas Permitir acesso aos serviços de correio a partir de redes internas Ferramentas completas para serviço de correio com POP/IMAP, anti-vírus e anti-spam Configurar o firewall para aceitar conexões smtp/imap/pop3 em interfaces configuradas como 'externo' Configurar o firewall para aceitar conexões smtp/imap/pop3 em interfaces configuradas como 'interno' Domínio de e-mail padrão Falha ao adicionar o domínio de e-mail. Falha ao registrar razor. Tente executar como root depois: su - amavis-s / bin / sh-c 'razor-admin-register && razor-admin-discover' IMAPS IMAPS e POP3S Email Serviço de Email Interface de gerenciamento Minhas redes POP3S Protocolos suportados Os protocolos que o servidor dovecot irá fornecer. Especificar quais clientes são autorizados a enviar e-mails através do servidor de email sem autenticação. O serviço de e-mail está configurado. Você pode adicionar endereços de e-mail e apelidos para seus usuários através da interface de gerenciamento em https://@HOSTNAME@/mmc/. tudo fw_lan fw_wan popimap_proto smtpd_mynetworks 