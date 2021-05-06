% Unofficial formatting for Stanford University Dept of Chemistry research proposal PhD graduation requirement
% remixed from 'NIH Grant Application' Overleaf template by Tatsuki Koyama, July 2010

% Remixed and written by Keith Armstrong
% Last version 2021/Mar/01

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{suchem_rp}[]

\LoadClass[11pt]{article} % can change to 12pt

% can mess with margins a bit to comply with 6-page target
\usepackage[letterpaper, width=7.0in, height=9.5in, headheight=34pt, headsep=15pt]{geometry}

% poor man's Helvetica
\renewcommand{\rmdefault}{phv}
\renewcommand{\sfdefault}{phv}

% all previous students' reports I saw had footers, so let's set one up
% LHS: author; center: date, RHS: pageno; change if desired
\usepackage{fancyhdr}
\usepackage{titling}
\fancyfoot[R]{\thepage}
\fancyfoot[C]{\thedate}
\fancyfoot[L]{\theauthor}
\fancyhead{}
\renewcommand{\footrulewidth}{0.4pt}
\renewcommand{\headrulewidth}{0pt}
\pagestyle{fancy}


% figures
\usepackage{graphicx,wrapfig}
\usepackage[font=small]{caption}

% references in ACS style
% use \autocite if you want superscripted references
\usepackage[style=chem-acs]{biblatex}
\addbibresource{ref.bib}

% misc
\usepackage[USenglish]{babel}
\usepackage{gensymb} % degree symbol, micro sign, etc
\usepackage{enumitem}
\renewcommand{\thefootnote}{\roman{footnote}} % so footnotes and references are distinguishable
\interfootnotelinepenalty=10000 % don't split footnotes

\usepackage{sectsty} % can change font, size of the section headings.  
\sectionfont      {\fontsize{12pt}{3}\usefont{OT1}{phv}{b}{sc}\selectfont}
\subsectionfont   {\fontsize{11pt}{3}\usefont{OT1}{phv}{b}{n}\selectfont}
\subsubsectionfont{\fontsize{11pt}{3}\usefont{OT1}{phv}{m}{n}\selectfont}

%\renewcommand{\thesection}{\Alph{section}} %so that section headings use A B C instead 1 2 3
\renewcommand{\baselinestretch}{1}

% reformat title to something sane and not so huge, this is a bit sloppily done ;)
\renewcommand{\maketitle}{
    {\large\bf \noindent \thetitle}

    \vspace{5pt} \noindent \theauthor
    \vspace{-5pt}
    \begin{center}
        \vrule height 0.4pt width 0.9\textwidth
    \end{center}
}

\newcommand{\inden}[1]{\mbox{} \hspace{#1} } % Force horizontal spaces
