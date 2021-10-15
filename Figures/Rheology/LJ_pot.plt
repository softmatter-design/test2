#!/gnuplot

set terminal pngcairo color enhanced
set colorsequence classic

set arrow 1 from 0,-1 to 0,1
set arrow 2 from 0,0 to 3.5,0
#
set output "LJ_potential.png"

set border 0
set notics

#
set xrange [-0.5:3.5]
set yrange [-0.5:0.5]
#
set label "{/Symbol s}" at first 1.0,0.06
#set label "({/Symbol s}^{1/6}, -{/Symbol e})" at first 1.122,-0.3
set label "2{/Symbol s}" at first 2.0,0.06
set label "3{/Symbol s}" at first 3.0,0.06
#
set label "r" at 3.4,-0.08
set label "U(r)" at first -0.35,0.4
#set label "or" at first -0.25,0.3
#set label "{/Arial-Italic f}({/Arial-Italic r})" at first -0.28,0.2
set label "0" at first -0.2,0
set label "-1" at first -0.2,-1

#
LJ(x) = (1/x)**12 - (1/x)**6
Rp(x) = (1/x)**12 
In(x) = - (1/x)**6
F(x) = 12*(1/x)**13 - 6*(1/x)**7
set samples 500

plot 	LJ(x) w l lt rgbcolor 'green' lw 2 ti "Lennard-Jones Pot.", \
Rp(x) w l lt rgbcolor 'red' lw 2 ti "斥力", \
In(x) w l lt rgbcolor 'blue' lw 2 ti "引力"
#
set output
reset
#
#####

set terminal pngcairo color enhanced
set arrow 1 from 0,-1 to 0,1
set arrow 2 from 0,0 to 3.5,0
#
set output "LJ_pot_Force.png"

set border 0
set notics

#
set xrange [-0.5:3.5]
set yrange [-1:1]
#
set label "{/Symbol s}" at first 1.0,0.06
set label "({/Symbol s}^{1/6}, -{/Symbol e})" at first 1.122,-0.3
set label "2{/Symbol s}" at first 2.0,0.06
set label "3{/Symbol s}" at first 3.0,0.06
#
set label "{/Arial-Italic r}" at 3.4,-0.08
set label "{/Symbol f}_{LJ}({/Arial-Italic r})" at first -0.35,0.4
set label "or" at first -0.25,0.3
set label "{/Arial-Italic f}({/Arial-Italic r})" at first -0.28,0.2
set label "0" at first -0.2,0
set label "-1" at first -0.2,-1

#
LJ(x) = (1/x)**12 - (1/x)**6
F(x) = 12*(1/x)**13 - 6*(1/x)**7
set samples 500

plot 	LJ(x) w l lt 1 lw 2 ti "Lennard Jones Pot.", \
	F(x) w l lt 2 lw 2 ti "Force"
#
set output
reset
#
#####
set terminal pngcairo color enhanced
set colorsequence classic

set arrow 1 from 0,-1 to 0,1
set arrow 2 from 0,0 to 3.5,0
#
set output "LJ_potential_single.png"

set border 0
set notics

#
set xrange [-0.5:3.5]
set yrange [-0.5:0.5]
#
set label "{/Symbol s}" at first 1.0,0.06
#set label "({/Symbol s}^{1/6}, -{/Symbol e})" at first 1.122,-0.3
set label "2{/Symbol s}" at first 2.0,0.06
set label "3{/Symbol s}" at first 3.0,0.06
#
set label "r" at 3.4,-0.08
set label "U(r)" at first -0.35,0.4
#set label "or" at first -0.25,0.3
#set label "{/Arial-Italic f}({/Arial-Italic r})" at first -0.28,0.2
set label "0" at first -0.2,0
set label "-1" at first -0.2,-1

#
LJ(x) = (1/x)**12 - (1/x)**6
Rp(x) = (1/x)**12 
In(x) = - (1/x)**6
F(x) = 12*(1/x)**13 - 6*(1/x)**7
set samples 500

plot 	LJ(x) w l lt rgbcolor 'green' lw 2 ti "Lennard-Jones Pot."
#
set output
reset