#!/usr/bin/make all
# (c) 2015 Vince Mulhollon GPLv3
#
# Makefile for version 24 (2.4 ?) of the famous Cymon / Joe Larson 3d printed woodwind recorder as found at
# https://www.youmagine.com/designs/recorder-music-instrument
# There appears to be no automated way for the makefile to download from youmagine, web 2.0 sucks
# So obtain the stl files by any means necessary and this makefile takes care of the rest

include $(HOME)/Dropbox/printrbot/configs/makefile.standard

.PHONY: clean all

all: fife.gcode recorder1.gcode recorder2.gcode recorder3.gcode recorder4.gcode fife.gcode

fife.fixed.stl: fife-mouthpiecev2.stl
	nice $(ADMESH) fife-mouthpiecev2.stl --write-binary fife.fixed.stl

fife.gcode: fife.fixed.stl
	nice $(SLIC3R) --info fife.fixed.stl
	nice $(SLIC3R) --load $(SLIC3R_STANDARD) --load slic3r.ini --output fife.gcode fife.fixed.stl

recorder1.fixed.stl: recorderv24-1.stl
	nice $(ADMESH) recorderv24-1.stl --write-binary recorder1.fixed.stl

recorder1.gcode: recorder1.fixed.stl
	nice $(SLIC3R) --info recorder1.fixed.stl
	nice $(SLIC3R) --load $(SLIC3R_STANDARD) --load slic3r.ini --output recorder1.gcode recorder1.fixed.stl

recorder2.fixed.stl: recorderv24-2.stl
	nice $(ADMESH) recorderv24-2.stl --write-binary recorder2.fixed.stl

recorder2.gcode: recorder2.fixed.stl
	nice $(SLIC3R) --info recorder2.fixed.stl
	nice $(SLIC3R) --load $(SLIC3R_STANDARD) --load slic3r.ini --output recorder2.gcode recorder2.fixed.stl

recorder3.fixed.stl: recorderv24-3.stl
	nice $(ADMESH) recorderv24-3.stl --write-binary recorder3.fixed.stl

recorder3.gcode: recorder3.fixed.stl
	nice $(SLIC3R) --info recorder3.fixed.stl
	nice $(SLIC3R) --load $(SLIC3R_STANDARD) --load slic3r.ini --output recorder3.gcode recorder3.fixed.stl

recorder4.fixed.stl: recorderv24-4.stl
	nice $(ADMESH) recorderv24-4.stl --write-binary recorder4.fixed.stl

recorder4.gcode: recorder4.fixed.stl
	nice $(SLIC3R) --info recorder4.fixed.stl
	nice $(SLIC3R) --load $(SLIC3R_STANDARD) --load slic3r.ini --output recorder4.gcode recorder4.fixed.stl

clean:
	rm -f *.gcode *.fixed.stl

# Local Variables:
# compile-command: "make"
# End:
