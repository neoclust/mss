# This is the right place to customize your installation of SpamAssassin.
#
# See 'perldoc Mail::SpamAssassin::Conf' for details of what can be
# tweaked.
#
# Only a small subset of options are listed below
#
###########################################################################

#   Add *****SPAM***** to the Subject header of spam e-mails
#
# rewrite_header Subject *****SPAM*****


#   Save spam messages as a message/rfc822 MIME attachment instead of
#   modifying the original message (0: off, 2: use text/plain instead)
#
report_safe 0


#   Set which networks or hosts are considered 'trusted' by your mail
#   server (i.e. not spammers)
#
# trusted_networks 212.17.35.


#   Set file-locking method (flock is not safe over NFS, but is faster)
#
lock_method flock


#   Set the threshold at which a message is considered spam (default: 5.0)
#
required_score 6.5


#   Use Bayesian classifier (default: 1)
#
use_bayes 1
use_bayes_rules 1

#   Bayesian classifier auto-learning (default: 1)
#
bayes_auto_learn 1
bayes_auto_expire 1 
bayes_path /var/lib/amavis/.spamassassin/bayes 
bayes_file_mode 0777 

#   Set headers which may provide inappropriate cues to the Bayesian
#   classifier
#
# bayes_ignore_header X-Bogosity
# bayes_ignore_header X-Spam-Flag
# bayes_ignore_header X-Spam-Status


# External network tests 
dns_available yes 
skip_rbl_checks 0 
use_razor2 1 
use_pyzor 0 

# Use URIBL (http://www.uribl.com/about.shtml) 
urirhssub       URIBL_BLACK  multi.uribl.com.        A   2 
body            URIBL_BLACK  eval:check_uridnsbl('URIBL_BLACK') 
describe        URIBL_BLACK  Contains an URL listed in the URIBL blacklist 
tflags          URIBL_BLACK  net 
score           URIBL_BLACK  3.0 
 
urirhssub       URIBL_GREY  multi.uribl.com.        A   4 
body            URIBL_GREY  eval:check_uridnsbl('URIBL_GREY') 
describe        URIBL_GREY  Contains an URL listed in the URIBL greylist 
tflags          URIBL_GREY  net 
score           URIBL_GREY  0.25 
 
# Use SURBL (http://www.surbl.org/) 
urirhssub       URIBL_JP_SURBL  multi.surbl.org.        A   64 
body            URIBL_JP_SURBL  eval:check_uridnsbl('URIBL_JP_SURBL') 
describe        URIBL_JP_SURBL  Has URI in JP at http://www.surbl.org/lists.html 
tflags          URIBL_JP_SURBL  net 
score           URIBL_JP_SURBL  3.0

