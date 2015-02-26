# 3d-recorder

This is a demonstration project using my 3d printing workflow makefile system as seen in my github 3d-configs repo.

cd ~/Dropbox/printrbot

git clone https://github.com/vincemulhollon/3d-recorder recorder

(I have Dropbox on freebsd because I run openafs home dirs, and have dropbox running on some legacy box)

You obtain your own copy of the stl files.  .gitignore understands.

Assuming all goes well, a simple "make" will run each stl file thru admesh and slic3r and gcode will magically appear.

The slic3r.ini file is for my printrbot simple metal with heated bed printing 1.75mm PLA on kapton.  You'll probably have to edit it.

