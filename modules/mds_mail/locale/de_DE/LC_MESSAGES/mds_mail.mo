��            )   �      �  M   �  D   �  #   $  *   H  1   s  1   �  F   �  b     b   �     �     �          �     �     �     �     �     �     �     �  /   �  b   *     �  q   �          #     *     8  �  I  S   	  J   i	  '   �	  '   �	  2   
  2   7
  K   j
  }   �
  }   4     �  &   �  �   �     �     �     �     �     �     �     �     �  7     j   <      �  �   �     O     T     [     i               	                                                                          
                                                 - Networks authorized to send mail without authentication : $smtpd_mynetworks - Non-SSL connexions are disabled by default on the IMAP/POP3 server - SSL is enabled on the SMTP server - the mail domain $DOMAIN has been created Allow mail services access from external networks Allow mail services access from internal networks Complete mail service with POP/IMAP, anti-virus and anti-spam toolkits Configure the firewall to accept smtp/imap/pop3 connections on interfaces configured as 'external' Configure the firewall to accept smtp/imap/pop3 connections on interfaces configured as 'internal' Default mail domain Failed to add the mail domain. Failed to register razor. Try to run as root later : su - amavis -s /bin/sh -c 'razor-admin -register && razor-admin -discover' IMAPS IMAPS and POP3S Mail Mail Service Management interface My networks POP3S Protocols supported Protocols that the dovecot server will provide. Specify which clients are authorized to send mails through the mail server without authentication. The mail service is configured. You can add mail addresses and aliases to your users through the management interface at https://@HOSTNAME@/mmc/. all fw_wan popimap_proto smtpd_mynetworks Project-Id-Version: Management Server Setup
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-11-27 10:03+0100
PO-Revision-Date: 2014-08-28 16:52+0200
Last-Translator: Maik Wagner <mwagner@mandriva.com>
Language-Team: German <http://translate.mandriva.com/projects/mss/mds_mail/de_DE/>
Language: de_DE
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Weblate 2.0-dev
 - Netzwerke authorisiert, Mail ohne Authentifizierung zu senden : $smtpd_mynetworks - Verbindungen ohne SSL sind standardmäßig auf dem IMAP/POP3 deaktiviert - SSL ist auf dem SMTP-Server aktiviert - die Maildomain $DOMAIN wurde erstellt Maildienstezugang von externen Netzwerken erlauben Maildienstezugang von internen Netzwerken erlauben Vollständiger Maildienst mit POP/IMAP, Anti-Virus und Anti-Spam-Werkzeugen Konfigurieren der Firewall, smtp/imap/pop3-Verbindungen auf Schnittstellen zu akzeptieren, die als 'extern' konfiguriert sind Konfigurieren der Firewall, smtp/imap/pop3-Verbindungen auf Schnittstellen zu akzeptieren, die als 'intern' konfiguriert sind Vorgegebene Maildomain Fehler beim Hinzufügen der Maildomain Fehler beim Registrieren von razor. Versuchen Sie als root folgendes später zu starten : su - amavis -s /bin/sh -c 'razor-admin -register && razor-admin -discover' IMAPS IMAPS und POP3S Mail Mail Dienst Verwaltungsschnittstelle Meine Netzwerke POP3S Unterstützte Protokolle Protokolle, die der dovecot-Server bereit stellen wird. Geben Sie an, welche Clients authorisiert sind, Mails über den Mailserver ohne Authenfizierung zu senden. Der Maildienst ist konfiguriert. Sie können Mailadressen und Aliases für Ihre Benutzer über die Verwaltungsschnittstelle hinzufügen unter  https://@HOSTNAME@/mmc/. alle fw_wan popimap_proto smtpd_mynetworks 