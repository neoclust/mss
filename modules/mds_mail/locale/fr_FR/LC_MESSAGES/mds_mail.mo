��            )   �      �  M   �  D   �  #   4  *   X  1   �  1   �  F   �  b   .  b   �     �          '     �     �     �     �     �     �     �     �  /   
  b   :     �  q   �     /     3     :     A     O  �  `  U   2	  U   �	  %   �	  +   
  C   0
  B   t
  M   �
  u     u   {     �  #     �   1     �     �     �     �     �     
            .   3  q   b  "   �  �   �     �     �     �     �     �               	                                                                          
                                                - Networks authorized to send mail without authentication : $smtpd_mynetworks - Non-SSL connexions are disabled by default on the IMAP/POP3 server - SSL is enabled on the SMTP server - the mail domain $DOMAIN has been created Allow mail services access from external networks Allow mail services access from internal networks Complete mail service with POP/IMAP, anti-virus and anti-spam toolkits Configure the firewall to accept smtp/imap/pop3 connections on interfaces configured as 'external' Configure the firewall to accept smtp/imap/pop3 connections on interfaces configured as 'internal' Default mail domain Failed to add the mail domain. Failed to register razor. Try to run as root later : su - amavis -s /bin/sh -c 'razor-admin -register && razor-admin -discover' IMAPS IMAPS and POP3S Mail Mail Service Management interface My networks POP3S Protocols supported Protocols that the dovecot server will provide. Specify which clients are authorized to send mails through the mail server without authentication. The mail service is configured. You can add mail addresses and aliases to your users through the management interface at https://@HOSTNAME@/mmc/. all fw_lan fw_wan popimap_proto smtpd_mynetworks Project-Id-Version: Management Server Setup
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-11-27 10:03+0100
PO-Revision-Date: 2014-12-10 14:17+0200
Last-Translator: Jean-Philippe <jpbraun@mandriva.com>
Language-Team: French <http://translate.mandriva.com/projects/mss-mbs2/mds_mail/fr_FR/>
Language: fr_FR
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n > 1;
X-Generator: Weblate 2.1-dev
 - Réseaux autorisés à envoyer du courrier sans authentification: $smtpd_mynetworks - Les connexions non-SSL sont désactivés par défaut sur ​​le serveur IMAP/POP3 - SSL est activé sur le serveur SMTP - le domaine de mail $DOMAIN a été créé Permettre l'accès au services de mail depuis les réseaux externes Permettre l'accès au service de mail depuis les réseaux internes Service de messagerie complet avec POP/IMAP et outils anti-virus et anti-spam Configurer le firewall pour accepter les connexions smtp/imap/pop3 sur les interfaces configurées comme «externes» Configurer le firewall pour accepter les connexions smtp/imap/pop3 sur les interfaces configurées comme «internes» Domaine de mail par défaut Echec de l'ajout du domaine de mail Impossible d'enregistrer Razor. Plus tard, essayez d'exécuter en tant que root : su - amavis -s /bin/sh -c 'razor-admin -register && razor-admin -discover' IMAPS IMAPS et POP3S E-mail Service Mail Console de gestion Mes réseaux POP3S Protocoles supportés Les protocoles fournis par le serveur dovecot. Spécifiez quels clients sans authentification sont autorisés à envoyer des mails via le serveur de messagerie. Le service de Mail est configuré. Vous pouvez ajouter des adresses de messagerie et des alias pour vos utilisateurs grâce à l'interface de gestion située à https://@HOSTNAME@/mmc/. all fw_lan fw_wan popimap_proto smtpd_mynetworks 