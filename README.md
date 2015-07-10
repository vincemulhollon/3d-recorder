# 3d-recorder

This is a demonstration project using my 3d printing workflow makefile system as seen in my github 3d-configs repo.

cd ~/Dropbox/printrbot

git clone https://github.com/vincemulhollon/3d-recorder recorder

(I have Dropbox on freebsd because I run nfs home dirs, and have dropbox running on some legacy box)

You obtain your own copy of the stl files.  .gitignore understands.

Assuming all goes well, a simple "make" will run each stl file thru admesh and slic3r and gcode will magically appear.

On a roughly five year old computer with plenty of memory and ZFS running on SSDs, the makefile completes in less than 10 seconds clock time.

