#!/gnuplot

set term pngcairo font "Arial,14"
#
set colorsequence classic
set output "exp.png"
#
set border 0
set notics

set key left
set size square
set xrange [-3:2]
set yrange [-1:4]
#set xtics 0.5
#set ytics 0.01
#set xlabel "Strain"
#set ylabel "Nominal Stress"
#
set xzeroaxis lt -1
set yzeroaxis lt -1
#set arrow 1 from -3,0 to 2,0
#set arrow 2 from 0,-1 to 0,4
#
set label "0" at -0.2, -0.2
set label "(0,1)" at -0.8, 1.1
set label "*" at 1.0, 2.74
set label "(1,e)" at 1.1, 2.6
#
set label "{/Arial-Italic x}" at 1.8, -0.2
set label "{/Arial-Italic y}" at -0.4, 3.8
#set label "{/Arial-Italic y = e^x}" at -2., 2.
#
#set key 1,1
#
plot exp(x) w l lw 2 ti 'exp(x)', \
exp(-x) w l ti 'exp(-x)

set output
reset
#
#####
#
set term pngcairo font "Arial,14"
#
set colorsequence classic
set output "ln.png"

set border 0
set notics
set size square

set xrange [-1:20000]
set yrange [-1:4.5]

#set arrow 1 from -1,0 to 10000,0
#set arrow 2 from 0,-3 to 0,4

set xzeroaxis lt -1
set yzeroaxis lt -1

set label 1 "0" at -0.2, -0.2
#set label 2 "(1,0)" at 1, 0
#set label 3 "* (10, 1)" at 10, 1
set label 4 "* (100, 2)" at 100, 2
set label 5 "* (1000, 3)" at 1000, 3
set label 6 "* (10000, 4)" at 10000, 4
#set label "*" at 2.75, 1.0
#set label "(e,1)" at 2.75, 0.85

set label 8 "{/Arial-Italic x}" at 20000, -0.2
set label 9 "{/Arial-Italic y}" at -0.25, 4.4
#set label  "{/Arial-Italic y} = log_{10} {/Arial-Italic x}" at 1.5, -2

set key bottom

plot log10(x) w l lw 2 ti "log_{10}(x)"

set output
reset

#####
set term pngcairo font "Arial,14"
#
set colorsequence classic
set output "exp_ln.png"


set border 0
set notics
set size square

set xrange [-2:3]
set yrange [-2:3]

#set arrow 1 from -2,0 to 3,0
#set arrow 2 from 0,-2 to 0,3

set xzeroaxis lt -1
set yzeroaxis lt -1

set label 1 "0" at -0.2, -0.2
set label 2 "(1, 0)" at 1.05, -0.2
set label 3 "(0, 1)" at 0.1, 0.95
#set label "(e,1)" at 2.75, 0.85
#
set label 5 "{/Arial-Italic x}" at 2.8, -0.2
set label 6 "{/Arial-Italic y}" at -0.2, 2.8
set label 7 "{/Arial-Italic y = x}" at 1.7, 1.5
set label 8 "{/Arial-Italic y = exp({/Arial-Italic x})}" at -1.5, 1.
set label 9 "{/Arial-Italic y} = ln {/Arial-Italic x}" at 1, -1.

#set key 19,2.2

plot	log(x) w li ls 1 lt 1 lw 2 lc 1 noti, \
	exp(x) w li ls 1 lt 1 lw 2 lc 2 noti, \
	x w li ls 1 lt 1 lw 2 lc 3 noti
set output
reset
