#!/bin/bash
cp /input/* .
perl render.pl "$@"
mv *.mp3 /output

