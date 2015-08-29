set terminal postscript eps size 4,8 enhanced
# set size .8, .8

#          Stacked Plot Demo
#
# Set top and bottom margins to 0 so that there is no space between plots.
# Fix left and right margins to make sure that the alignment is perfect.
# Turn off xtics for all plots except the bottom one.
# In order to leave room for axis and tic labels underneath, we ask for
# a 4-plot layout but only use the top 3 slots.
#
set tmargin 0.5
set bmargin 0
set lmargin 3
set rmargin 3
set tics font ",12"
set key font ",13"
unset xtics
unset ytics

set multiplot layout 7,1
set key autotitle column nobox samplen 1 noenhanced
unset title


set boxwidth 0.8 absolute
set key inside right top vertical Right noreverse noenhanced autotitles nobox
set style histogram clustered gap 1 title  offset character 0, 0, 0
set datafile missing '-'
set style data histogram
set style histogram rowstacked
# set title "Relative time of different approaches for ArrayBuffer.reverse()"
# set ylabel "time for 3M elements (ms)" offset 1.5
set ylabel "ArrayBuffer creation"
set yrange [ 0.0 : 60] noreverse nowriteback
plot "data-1.dat" using 2: xtic(1) title "Single Context" fill solid 0.5, '' using ($3 - $2): xtic(1) fill solid 0.2 lt 1 title "Multi Context" with histogram
unset key
set ylabel "ArrayBuffer reverse"
set yrange [ 0.0 : 5] noreverse nowriteback
plot "data-2.dat" using 2: xtic(1) title "single param" fill solid 0.5, '' using ($3 - $2): xtic(1) fill solid 0.2 lt 1 title "multi param" with histogram
set ylabel "ArrayBuffer contains"
set yrange [ 0.0 : 600] noreverse nowriteback
plot "data-3.dat" using 2: xtic(1) title "single param" fill solid 0.5, '' using ($3 - $2): xtic(1) fill solid 0.2 lt 1 title "multi param" with histogram
set ylabel "List creation"
set yrange [ 0.0 : 18] noreverse nowriteback
plot "data-4.dat" using 2: xtic(1) title "single param" fill solid 0.5, '' using ($3 - $2): xtic(1) fill solid 0.2 lt 1 title "multi param" with histogram
set ylabel "List hashCode"
set yrange [ 0.0 : 25] noreverse nowriteback
plot "data-5.dat" using 2: xtic(1) title "single param" fill solid 0.5, '' using ($3 - $2): xtic(1) fill solid 0.2 lt 1 title "multi param" with histogram
set xtics nomirror
unset xlabel
set xtics border in scale 0,0 nomirror rotate by -45  offset character 0, 0, 0
set xtics ()
set ylabel "List contains"
set yrange [ 0.0 : 2500] noreverse nowriteback
plot "data-6.dat" using 2: xtic(1) title "single param" fill solid 0.5, '' using ($3 - $2): xtic(1) fill solid 0.2 lt 1 title "multi param" with histogram

unset multiplot


