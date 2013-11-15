rename2mac
==========================
Rename folderful of filenames to Mac OS X supported format (UTF8-MAC). Mac OS X use only.

#### Background: ####
When I use Mac OS X Finder, I have a lot of issue when dealing with Asian filenames, such as Japanese/Korean/Chinese characters. Previous attempt using convmv and iconv tools failed to fix the problem led me created this tool. I am sure this can fix other international characters too.

The Mac OS X system handles filenames in modified Unicode format called UTF8-Mac. If a filename contain none UTF8-Mac character, the Finder may exihibit behavour such as disappearing file, constant refresh, unable to open file, etc. To fix this problem, the file has to be renamed using UTF8-Mac format.

For more information read https://www.j3e.de/linux/convmv/man/#hfs__on_os_x___darwin

#### Installation: ####
1. Install [MacPorts](http://www.macports.org/)
2. sudo port install ruby20 rb-rubygems
3. sudo gem install rename2mac

#### Usage: ####
rename2mac \[arguments\] \<directory\>

#### Arguments: ####
    --noop       -n  Make no changes
    --recursive  -r  Recursively rename
    --force      -f  Force overwrite existing file if it exists
    --quiet      -q  Do not output individual results to screen
    --help       -h  Display current help message

#### License: ####
MIT
Mac Ma  comomac (at) runbox (dot) com  (C) 2013 Copyright
