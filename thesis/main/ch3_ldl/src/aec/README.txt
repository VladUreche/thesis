In this zip file you'll find pdf and png files for the OOPSLA AEC badge.

You are encouraged to put the badge on your paper (see example.pdf),
following the directions below (we list three distinct ways to do it)

You are also welcome to use the png bitmap adjacent to mark your paper
on your web page if you wish.

Please don't use the badge in any way other than these without first
discussing it with the chairs (Matthias Hauswirth and Robby Findler).

INSTRUCTIONS

If you follow these instructions correctly you should end up with a
stamp on the front page of your paper like in the example
(example.pdf). Note that the example is just an example; the paper is
from last year.


1.  Use latex.

Copy aec-badge.pdf into your paper directory and insert the following
fragment in your paper preamble.  You can change the vertical
placement of the stamp by adjusting the '3.5in' in the \raisebox as
necessary.

\usepackage[firstpage]{draftwatermark}
\SetWatermarkText{\hspace*{8in}\raisebox{3.5in}{\includegraphics[scale=0.1]{aec-badge}}}
\SetWatermarkAngle{0}


2.  Use freely available pdftk

Ensure you have pdftk (http://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/).

The following command will make a version of your paper with the
badge.  By choosing a different version of the background (replace the
'a' in the filename with another letter 'b' ... 'e') you'll get the
badge located at slightly different points.  Choose the one that works
for you.

% pdftk paper.pdf multibackground aec-badge-a.pdf output paper-badge.pdf dont_ask


3.  Use Acrobat Pro  (tested on Version 9)

Load your document and then use the Document -> Watermark -> Add... menu.

a.  Be sure to select "Page Range Options", top left to ensure only
the first page is marked.

b.  Select "File" and "Choose..." aec-badge.pdf

c.  Select "Scale relevant to target page", and set it to 10%

d.  For Position, set Vertical Distance to 2 inches from top and
Horizontal Distance to 0.75 inches from right.

Please let us know if you run into any trouble.

-- Matthias & Robby

OOPSLA AEC Chairs, 2014

