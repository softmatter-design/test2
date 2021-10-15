#!/gnuplot

set terminal pngcairo color enhanced
#
set output "w”ŠÖ”“IŒ¸Š_gr.png"

set size square

#
set xrange [0:2.4]
set yrange [0:1.1]
set notics
#
set xlabel "time"
set ylabel "N"

set label "N_0" at -0.1, 1.0
set label "N_0/e" at 0.01, 0.35
set label "{/Symbol l}" at 1.02, 0.02

#
a=1
f(x) = exp(-a*x)
g(x) = -a*x +1 

set arrow from  1.0,0.0 to 1.0,0.368 nohead lw 1 dt (6,6) lc rgb "red"
set arrow from  0.0,0.368 to 1.0,0.368 nohead lw 1 dt (6,6) lc rgb "red"

set samples 500

plot 	f(x) w l lt 1 lw 2 ti "exp(-{/Symbol l}t)", \
g(x) w l lt 2 dt (10,5) lw 2 ti "-{/Symbol l}t+N_0"
#
set output
reset
#
#####