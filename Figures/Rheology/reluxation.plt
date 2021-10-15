#!/gnuplot

set terminal pngcairo color enhanced
#
set output "relux_1.png"

set size square

#
set xrange [0:2.4]
set yrange [0:1.1]
set notics
#
set xlabel "time"
set ylabel "N"

set label 1 "N_0" at -0.1, 1.0
set label 2 "N_0/e" at 0.01, 0.35
set label 3 "{/Symbol t}: ŠÉ˜aŽžŠÔ" at 1.02, 0.04

#
a=1
f(x) = exp(-a*x)
g(x) = -a*x +1 

set arrow from  1.0,0.0 to 1.0,0.368 nohead lw 1 dt (6,6) lc rgb "red"
set arrow from  0.0,0.368 to 1.0,0.368 nohead lw 1 dt (6,6) lc rgb "red"

set samples 500

plot 	f(x) w l lt 1 lw 2 ti "exp(-t/{/Symbol t})"
#, \
#g(x) w l lt 2 dt (10,5) lw 2 ti "-{/Symbol l}t+N_0"
#
set output
reset
#

set terminal pngcairo color enhanced
#
set output "relux_2.png"

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
set label "{/Symbol t}" at 1.02, 0.02

#
a=1
f(x) = exp(-a*x)
g(x) = -a*x +1 

set arrow from  1.0,0.0 to 1.0,0.368 nohead lw 1 dt (6,6) lc rgb "red"
set arrow from  0.0,0.368 to 1.0,0.368 nohead lw 1 dt (6,6) lc rgb "red"

set samples 500

plot 	f(x) w l lt 1 lw 2 ti "exp(-t/{/Symbol t})", \
g(x) w l lt 2 dt (10,5) lw 2 ti "N_0-N_0t/{/Symbol t}"
#
set output
reset

set terminal pngcairo color enhanced
#
set output "relux_3.png"

set size square

#
set xrange [0:2.4]
set yrange [0:1.1]
set notics
#
set xlabel "time"
set ylabel "{/Symbol s}"

set label "{/Symbol s}_0" at -0.1, 1.0
set label "{/Symbol s}_0/e" at 0.01, 0.35
set label 3 "{/Symbol t}: ŠÉ˜aŽžŠÔ" at 1.02, 0.04

#
a=1
f(x) = exp(-a*x)
g(x) = -a*x +1 

set arrow from  1.0,0.0 to 1.0,0.368 nohead lw 1 dt (6,6) lc rgb "red"
set arrow from  0.0,0.368 to 1.0,0.368 nohead lw 1 dt (6,6) lc rgb "red"

set samples 500

plot 	f(x) w l lt 1 lw 2 ti "{/Symbol s}_0exp(-t/{/Symbol t})"
#, \
#g(x) w l lt 2 dt (10,5) lw 2 ti "N_0-N_0t/{/Symbol t}"
#
set output
reset

set terminal pngcairo color enhanced
#
set output "relux_4.png"

set size square

#
set xrange [1e-3:10]
set yrange [1e-5:10]
set logscale y
#
set xlabel "t"
set ylabel "ln {/Symbol s}"

#set label "{/Symbol s}_0" at -0.1, 1.0
#set label "{/Symbol s}_0/e" at 0.01, 0.35
#set label 3 "{/Symbol t}: ŠÉ˜aŽžŠÔ" at 1.02, 0.04

#
a=1
f(x) = exp(-a*x)
g(x) = -a*x +1 

set samples 500

plot 	f(x) w l lt 1 lw 2 ti "{/Symbol s}_0exp(-t/{/Symbol t})"

set output
reset

set terminal pngcairo color enhanced
#
set output "relux_5.png"

set size square

#
set xrange [1e-3:10]
set yrange [1e-3:10]
set logscale xy
#
set xlabel "ln t"
set ylabel "ln {/Symbol s}"

#set label "{/Symbol s}_0" at -0.1, 1.0
set label "1/e" at 0.001, 0.37
set label 3 "{/Symbol t}: ŠÉ˜aŽžŠÔ" at 1.02, 0.002

#
a=1
f(x) = exp(-a*x)
g(x) = -a*x +1 

set arrow from  1.0,0.001 to 1.0,0.368 nohead lw 1 dt (6,6) lc rgb "red"
set arrow from  0.001,0.368 to 1.0,0.368 nohead lw 1 dt (6,6) lc rgb "red"

set samples 500

plot 	f(x) w l lt 1 lw 2 ti "exp(-t/{/Symbol t})"

set output
reset

set terminal pngcairo color enhanced
#
set output "relux_6.png"

set size square

set xrange [0:200]
set yrange [1e-3:1]
set logscale y
#
set xlabel "t"
set ylabel "ln {/Symbol s}"

#set label "{/Symbol s}_0" at -0.1, 1.0
#set label "1/e" at 0.001, 0.34
#set label 1 "{/Symbol t}_1" at 1.02, 0.02
#set label 2 "{/Symbol t}_2" at 10.2, 0.02
#set label 3 "{/Symbol t}_3" at 102, 0.02

#
f1(x) = exp(-x)
f2(x) =exp(-0.1*x)
f3(x) =exp(-0.01*x)
h1(x) =  f1(x) + f2(x) 
h2(x) =  f1(x) + f2(x) + f3(x) 

#set arrow from  1.0,0.01 to 1.0,0.368 nohead lw 2 dt (6,6) lc 1
#set arrow from  10,0.01 to 10,0.368 nohead lw 2 dt (6,6) lc 2
#set arrow from  100,0.01 to 100,0.368 nohead lw 2 dt (6,6) lc 3
#set arrow from  0.001,0.368 to 100,0.368 nohead lw 3 dt (6,6) lc rgb "black"

set samples 500

plot 	f1(x) w l lt 1  ti "{/Symbol t}_1", \
f2(x)  ti "{/Symbol t}_2", \
f3(x)  ti "{/Symbol t}_3"

set output
reset

set terminal pngcairo color enhanced
#
set output "relux_7.png"

set size square

#
set xrange [1e-3:1e3]
set yrange [1e-2:10]
set logscale xy
#
set xlabel "ln t"
set ylabel "ln {/Symbol s}"

#set label "{/Symbol s}_0" at -0.1, 1.0
set label 4 "1/e" at 0.001, 0.45
set label 1 "{/Symbol t}_1" at 1.02, 0.02
set label 2 "{/Symbol t}_2" at 10.2, 0.02
set label 3 "{/Symbol t}_3" at 102, 0.02

#
f1(x) = exp(-x)
f2(x) =exp(-0.1*x)
f3(x) =exp(-0.01*x)
h1(x) =  f1(x) + f2(x) 
h2(x) =  f1(x) + f2(x) + f3(x) 

set arrow from  1.0,0.01 to 1.0,0.368 nohead lw 2 dt (6,6) lc 1
set arrow from  10,0.01 to 10,0.368 nohead lw 2 dt (6,6) lc 2
set arrow from  100,0.01 to 100,0.368 nohead lw 2 dt (6,6) lc 3
set arrow from  0.001,0.368 to 100,0.368 nohead lw 3 dt (6,6) lc rgb "black"

set samples 500

plot 	f1(x) w l lt 1  ti "{/Symbol t}_1", \
f2(x)  ti "{/Symbol t}_2", \
f3(x)  ti "{/Symbol t}_3"

set output
reset

set terminal pngcairo color enhanced
#
set output "relux_8.png"

set size square

#
set xrange [1e-3:1e3]
set yrange [1e-2:10]
set logscale xy
#
set xlabel "ln t"
set ylabel "ln {/Symbol s}"

#set label "{/Symbol s}_0" at -0.1, 1.0
set label "1/e" at 0.001, 0.34
set label 1 "{/Symbol t}_1" at 1.02, 0.02
set label 2 "{/Symbol t}_2" at 10.2, 0.02
set label 3 "{/Symbol t}_3" at 102, 0.02

#
f1(x) = exp(-x)
f2(x) =exp(-0.1*x)
f3(x) =exp(-0.01*x)
h1(x) =  f2(x) + f3(x) 
h2(x) =  f1(x) + f2(x) + f3(x) 

set arrow from  1.0,0.01 to 1.0,0.368 nohead lw 2 dt (6,6) lc 1
set arrow from  10,0.01 to 10,0.368 nohead lw 2 dt (6,6) lc 2
set arrow from  100,0.01 to 100,0.368 nohead lw 2 dt (6,6) lc 3
set arrow from  0.001,0.368 to 100,0.368 nohead lw 3 dt (6,6) lc rgb "black"

set samples 500

plot 	f1(x) w l lt 1 noti, \
f2(x) noti, \
f3(x) noti, \
h2(x) lw 2 ti "{/Symbol t}_1 + {/Symbol t}_2 + {/Symbol t}_3", \
h1(x) lw 2 ti "{/Symbol t}_2 + {/Symbol t}_3"


set output
reset

set terminal pngcairo color enhanced
#
set output "relux_9.png"

set size square

#
set xrange [0:100]
set yrange [3e-1:3]
set logscale y
#
set xlabel "t"
set ylabel "ln {/Symbol s}"

#set label "{/Symbol s}_0" at -0.1, 1.0
#set label "1/e" at 0.001, 0.34
#set label 1 "{/Symbol t}_1" at 1.02, 0.02
#set label 2 "{/Symbol t}_2" at 10.2, 0.02
#set label 3 "{/Symbol t}_3" at 102, 0.02

#
f1(x) = exp(-x)
f2(x) =exp(-0.1*x)
f3(x) =exp(-0.01*x)
h1(x) =  f2(x) + f3(x) 
h2(x) =  f1(x) + f2(x) + f3(x) 

#set arrow from  1.0,0.01 to 1.0,0.368 nohead lw 2 dt (6,6) lc 1
#set arrow from  10,0.01 to 10,0.368 nohead lw 2 dt (6,6) lc 2
#set arrow from  100,0.01 to 100,0.368 nohead lw 2 dt (6,6) lc 3
#set arrow from  0.001,0.368 to 100,0.368 nohead lw 3 dt (6,6) lc rgb "black"

set samples 500

plot h2(x) lw 2 ti "{/Symbol t}_1 + {/Symbol t}_2 + {/Symbol t}_3", \
h1(x) lw 2 ti "{/Symbol t}_2 + {/Symbol t}_3", \
f3(x) lw 2 ti "{/Symbol t}_3"

set output
reset