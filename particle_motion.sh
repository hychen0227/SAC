xlim 0 2500
setbb time1 0
do time2 from 100 to 2500 by 500
cut %time1% $time2$
r *.sac
bd sgf
beginwindow 1
p1
sgftops *.sgf w$time2$.ps
mv *.sgf sgf
beginwindow 2
ppm
sgftops *.sgf p$time2$.ps
mv *.sgf sgf
setbb time1 $time2$
enddo
end sgf
