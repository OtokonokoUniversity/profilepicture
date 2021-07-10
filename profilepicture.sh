#!/bin/bash
fileName="profilepicture"
marginRight=50
fontFamily="思源黑体"
colorPink="245,169,184"
colorBlue="91,206,250"
colorWhite="255,255,255"
rm -f "${fileName}.png"
convert -size 1024x1024 xc:"rgb(${colorPink})" -fill "rgb(${colorBlue})" -draw "rectangle 1004,0 1024,1024" "${fileName}.bmp"
convert -draw "text ${marginRight},25 'Otokonoko'" -draw "text ${marginRight},200 'University'" -fill "rgb(${colorWhite})" -pointsize 140 -font "${fontFamily}-Bold" -gravity NorthEast "${fileName}.bmp" "${fileName}.bmp"
convert -draw "text ${marginRight},400 'Kagurazaka'" -fill "rgb(${colorWhite})" -pointsize 100 -style Italic -font "${fontFamily}-Light" -gravity NorthEast "${fileName}.bmp" "${fileName}.bmp"
convert "${fileName}.bmp" "${fileName}.png"
rm -f "${fileName}.bmp"
unset fileName
unset marginRight
unset fontFamily
unset colorPink
unset colorBlue
unset colorWhite
