#!/bin/bash
# This is the script to generate all the examples in the README. 
# If you want to use this script,  modify the command and output directory according to your needs.
CMD="python make_img.py --path img/zhou"
OUT=examples

$CMD --sort none --size 50 --out $OUT/unsorted.png
$CMD --sort bgr_sum --size 50 --out $OUT/sort-bgr.png
$CMD --dest_img examples/dest.jpg --size 25 --dup 8 --out $OUT/fair-dup-10.png
$CMD --dest_img examples/dest.jpg --size 25 --unfair --max_width 56 --out $OUT/best-fit.png

$CMD --dest_img examples/messi.jpg --size 25 --salient --lower_thresh 0.15 --dup 5 --out $OUT/messi-fair.png
$CMD --dest_img examples/messi.jpg --size 25 --salient --lower_thresh 0.15 --unfair --max_width 115 --out $OUT/messi-unfair.png
$CMD --dest_img examples/dest.jpg --size 25 --dup 8 --blending alpha --blending_level 0.25 --out $OUT/blend-alpha-0.25.png
$CMD --dest_img examples/dest.jpg --size 25 --dup 8 --blending brightness --blending_level 0.25 --out $OUT/blend-brightness-0.25.png

$CMD --dest_img examples/dest.jpg --size 25 --exp --unfair --max_width 56