#!/bin/gnuplot/ -c

ticker = ARG1
set terminal ARG2
set key noautotitle
set offsets 5, 5, 5, 5
set border linecolor rgb "#444444"
set key textcolor rgb "#868686"
set obj 1 rectangle behind from screen 0,0 to screen 1,1
set obj 1 fillstyle solid 1.5 fillcolor rgb "#0e0e0e"
set xdata time
set timefmt"%Y-%m-%d"
set xrange [*:*]
set yrange [*:*]
set datafile separator ","
set grid ytics lc rgb "#444444" lw 1 lt 0
set grid xtics lc rgb "#444444" lw 1 lt 0
set palette defined (-1 '#e93e33', 1 '#00a800')
set cbrange [-1:1]
unset colorbox
set style fill solid noborder
set boxwidth 30000 absolute
set title ARG1 textcolor rgb "white" 
set title font "Helvetica,14"
plot filename using (strptime('%Y-%m-%d', strcol(1))):2:4:3:5:($5 < $2 ? -1 : 1) with candlesticks palette whiskerbars 0.5
pause 30
reread
