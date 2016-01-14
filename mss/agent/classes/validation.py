# -*- coding: UTF-8 -*-
#
# (c) 2010 Mandriva, http://www.mandriva.com/
#
# This file is part of Management Server Setup
#
# MSS is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# MSS is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with MSS; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
# MA 02110-1301, USA.

import re
import socket

class Validation:
    """
    Data validation class

    """

    def fqdn(self, string):
        """ validate hostname """
        if not re.match('^[a-z0-9-\.]+\.[a-z]{2,}$', string):
            return "Incorrect FQDN."
        else:
            return None

    def network(self, networks):
        if not isinstance(networks, list):
            return "Incorrect IP or netmask address."
        for ip, mask in networks:
            if not re.match('^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$', ip):
                return "Incorrect IP address."
            if not mask == "false":
                if not re.match('^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$', mask):
                    return "Incorrect netmask address."
        return None

    def ip(self, ips):
        if isinstance(ips, basestring):
            ips = [ips]
        for ip in ips:
            try:
                socket.inet_aton(ip)
            except socket.error:
                return "Incorrect IP address."
        return None
