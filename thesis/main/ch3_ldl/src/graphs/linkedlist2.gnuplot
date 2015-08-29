set term postscript eps enhanced 'NimbusSanL-Regu' 14 fontfile '/usr/share/fonts/type1/texlive-fonts-recommended/uhvr8a.pfb' size 4, 3

#set term pngcairo size 800, 500
set output "linkedlist2.eps"
reset
set key inside top left
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.8
set xlabel 'Data set size (1M elements)'
set ylabel 'Total execution time (ms) - lower is better'

set label "Originally, LDL was called the \"frog transformation\". I wonder why..." center at first 4.8, first 380 rotate by 23 textcolor rgbcolor "#fafafa"
set label "Daca ai descoperit asta, trimite-mi un email si iti dau o bere!" center at first 5, first 50 rotate by 180 textcolor rgbcolor "#fafafa"

set yrange [0:600]

#set smooth bezier
#set linespoints

plot "data2.raw" using 2: xtic(1) title "Miniboxed" lc rgbcolor "#AAAAAA", '' using 3: xtic(1) title "Generic" lc rgbcolor "#888888" lt 1
