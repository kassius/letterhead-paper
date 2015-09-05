#!/bin/bash

#
# CAUTION WHEN EXECUTING THIS
# !!! KNOW WHAT YOU ARE DOING !!!
#

convert 											\
		-density 400 									\
		-resize 35% 									\
												\
		~/Documents/Letterheads/letterhead-006.pdf  					\
												\
		-transparent white									\
												\
		-draw 'fill none stroke black stroke-opacity 0.1 rectangle 36,85 475,260'	\
												\
		~/Documents/Letterheads/letterhead-transparent-final.png

