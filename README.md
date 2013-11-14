rename2mac
==========================
Rename folderful of filenames to Mac OS X supported format (UTF8-MAC). Mac OS X use only.

Background:
--------------------------
The Mac OS X system handles filenames in modified Unicode format called UTF8-Mac. If a filename contain none UTF8-Mac character, the Finder may exihibit behavour such as disappearing file, constant refresh, unable to open file, etc. To fix this problem, the file has to be renamed using UTF8-Mac format. This program will recursively rename all the filenames that needs to be renamed to UTF8-Mac format.

Installation:
--------------------------
1. Install [MacPorts](http://www.macports.org/)
2. sudo port install ruby20 rb-rubygems
3. sudo gem install rename2mac

Usage:
--------------------------
rename2mac \[-n\] \<directory\>

Infomation:
--------------------------
If -n argument is applied, it will only show what will be renamed without making any changes.

License:
--------------------------
MIT
Mac Ma comomac(at)runbox(dot)com (C) 2013 Copyright
