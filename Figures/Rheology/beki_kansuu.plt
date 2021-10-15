#!/gnuplot

set terminal pngcairo color enhanced
#
set output "beki.png"

set size square
#
set xrange [0.1:100]
set yrange [0.1:100]
#set notics

set logscale xy
#
#set xlabel "t"
#set ylabel "N"

set label 1 "y=x^a" at graph 0.6, 0.5
set label 2 "a=1" at graph 0.6, 0.4
#
a=1
f(x) = x**a
g(x) = a*log(x) 

set samples 500

plot 	f(x) w l lt 1 lw 2 noti
#, \
#g(x) w l lt 2 dt (10,5) lw 2 ti "-{/Symbol l}t+N_0"
#
set output
reset
