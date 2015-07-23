#!/usr/bin/env python

#  omicron-server.py
#  
#  Copyright 2015 Tony Agudo <antoniusmisfit@gmail.com>
#  
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.

import SimpleHTTPServer

print '''
This script should only be used as a basic test for Omicron blog output
hosted on a server. It is recommended that more mature server software
such as Apache or NGINX be used for deployment.
'''
SimpleHTTPServer.test()
