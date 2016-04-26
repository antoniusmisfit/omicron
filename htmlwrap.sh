#!/usr/bin/env bash

#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 3 of the License, or
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

progname="$(basename $0)"
progauthor="Tony Agudo"
progweb="https://github.com/antoniusmisfit/omicron/"
fmtcmd="cat"
infile="${!#}"
title="untitled"

do_help()
{
cat << EOF
$progname: Utility to dump HTML5 source to standard output from plain text file.

Usages:
$progname [-t "title"] [-f fmtcmd] file

-t			Set the title of web output[Default: $title]
-f			Set the format command used to process the text file for HTML5 output[Default: $fmtcmd]
-h			Show this help page.
EOF
}
while getopts "t:f:h" option ;do
	case "$option" in
		t) title="${OPTARG}";;
		f) fmtcmd="${OPTARG}";;
		*) do_help;exit;;
	esac
done

cat << EOF
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>$title</title>
<style>
html{font-family: "sans";background-color: white;color: black}
#footer,#header{text-align: center;background-color: black;color: white;}
</style>
</head>
<body>
<!--
<div id="header">$title</div>
-->
<pre>
`$fmtcmd $infile`
</pre>
<div id ="footer">
Powered by $progname. Copyright &copy; 2016-$(date "+%Y") <a href="$progweb" target="_blank">$progauthor</a>
</div>
</body>
</html>
EOF
