#!/usr/bin/env bash

dir="$HOME/.config/rofi/themes/type-3"
theme='style-5'

rofi \
    -show drun \
    -theme ${dir}/${theme}.rasi
