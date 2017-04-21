%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Thesis LaTeX Template - THESIS CLASS FILE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Thesis}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}

\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}

%\newcommand\Declaration[1]{
%\btypeout{Declaration of Authorship}
%\addtotoc{Declaration of Authorship}
%\thispagestyle{plain}
%\null\vfil
%%\vskip 60\p@
%\begin{center}{\huge\bf Declaration of Authorship\par}\end{center}
%%\vskip 60\p@
%{\normalsize #1}
%\vfil\vfil\null
%%\cleardoublepage
%}

% Allows the use of international characters (e.g. Umlauts)
\RequirePackage[utf8]{inputenc} 

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}

\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\year
} % \today of the form "Month Year"


%----------------------------------------------------------------------------------------
%	PARAGRAPHS
%----------------------------------------------------------------------------------------
\usepackage{setspace}
\onehalfspacing
%\setlength{\parindent}{15pt}
%\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}

%----------------------------------------------------------------------------------------
%	CHAPTERS & SECTIONS
%----------------------------------------------------------------------------------------
%\usepackage{titlesec}
%\titleformat{\section}{\LARGE\bfseries}{\thesection}{1em}{}

%----------------------------------------------------------------------------------------
%	MARGINS & GEOMETRY
%----------------------------------------------------------------------------------------
\usepackage[a4paper,
	top=1.2in,
	outer=1.1in,
	inner=1.5in,
	bottom=1.2in
]{geometry}
                    
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.

%----------------------------------------------------------------------------------------
%	HEADER STYLE
%----------------------------------------------------------------------------------------
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyheadoffset[L]{0pt}
\fancyhead[LE,RO]{\thepage}
\fancyhead[RE]{\textsc{\ttitle}}
\fancyfoot{}

%----------------------------------------------------------------------------------------
%	CLEAR TWOSIDE PAGES
%----------------------------------------------------------------------------------------
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}

%----------------------------------------------------------------------------------------
%	MATH RELATED
%----------------------------------------------------------------------------------------
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}

%----------------------------------------------------------------------------------------
%	CAPTIONS
%----------------------------------------------------------------------------------------
\usepackage[centerlast,small,sc]{caption}
\setlength{\captionmargin}{20pt}

%----------------------------------------------------------------------------------------
%	REFERENCES
%----------------------------------------------------------------------------------------
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}

%----------------------------------------------------------------------------------------
%	FRACTIONS & OTHER
%----------------------------------------------------------------------------------------
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{listings}
\usepackage{lstpatch}
\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
\lstdefinestyle{matlab} {
        language=Matlab,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={blue},citecolor={blue},urlcolor={red},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
\pdfstringdefDisableCommands{
   \let\\\space
}

%----------------------------------------------------------------------------------------
%	THESIS RELATED COMMANDS
%----------------------------------------------------------------------------------------
\newcommand*{\supervisor}[2][]{\def\supnamenolink{#2}\ifthenelse{\equal{#1}{}}{\def\supname{#2}}{\def\supname{\texorpdfstring{\href{#1}{#2}}{#2}}}}
\newcommand*{\cosupervisor}[2][]{\def\cosupnamenolink{#2}\ifthenelse{\equal{#1}{}}{\def\cosupname{#2}}{\def\cosupname{\texorpdfstring{\href{#1}{#2}}{#2}}}}
\newcommand*{\thesistitle}[1]{\def\ttitle{#1}}
\newcommand*{\thesistype}[1]{\def\ttype{#1}}
\newcommand*{\examiner}[2][]{\def\examnamenolink{#2}\ifthenelse{\equal{#1}{}}{\def\examname{#2}}{\def\examname{\texorpdfstring{\href{#1}{#2}}{#2}}}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\authors}[2][]{\def\authornamesnolink{#2}\ifthenelse{\equal{#1}{}}{\def\authornames{#2}}{\def\authornames{\texorpdfstring{\href{#1}{#2}}{#2}}}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[2][]{\def\univnamenolink{#2}\ifthenelse{\equal{#1}{}}{\def\univname{#2}}{\def\univname{\texorpdfstring{\href{#1}{#2}}{#2}}}}
\newcommand*{\UNIVERSITY}[2][]{\def\UNIVNAMEnolink{#2}\ifthenelse{\equal{#1}{}}{\def\UNIVNAME{#2}}{\def\UNIVNAME{\texorpdfstring{\href{#1}{#2}}{#2}}}}
\newcommand*{\department}[2][]{\def\deptnamenolink{#2}\ifthenelse{\equal{#1}{}}{\def\deptname{#2}}{\def\deptname{\texorpdfstring{\href{#1}{#2}}{#2}}}}
\newcommand*{\DEPARTMENT}[2][]{\def\DEPTNAMEnolink{#2}\ifthenelse{\equal{#1}{}}{\def\DEPTNAME{#2}}{\def\DEPTNAME{\texorpdfstring{\href{#1}{#2}}{#2}}}}
\newcommand*{\group}[2][]{\def\groupnamenolink{#2}\ifthenelse{\equal{#1}{}}{\def\groupname{#2}}{\def\groupname{\texorpdfstring{\href{#1}{#2}}{#2}}}}
\newcommand*{\GROUP}[2][]{\def\GROUPNAMEnolink{#2}\ifthenelse{\equal{#1}{}}{\def\GROUPNAME{#2}}{\def\GROUPNAME{\texorpdfstring{\href{#1}{#2}}{#2}}}}
\newcommand*{\faculty}[2][]{\def\facnamenolink{#2}\ifthenelse{\equal{#1}{}}{\def\facname{#2}}{\def\facname{\texorpdfstring{\href{#1}{#2}}{#2}}}}
\newcommand*{\FACULTY}[2][]{\def\FACNAMEnolink{#2}\ifthenelse{\equal{#1}{}}{\def\FACNAME{#2}}{\def\FACNAME{\texorpdfstring{\href{#1}{#2}}{#2}}}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}


%----------------------------------------------------------------------------------------
%	TITLE PAGE DESIGN
%----------------------------------------------------------------------------------------          

\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}

\renewcommand\maketitle{
	
% PDF meta-data
\hypersetup{pdftitle={\ttitle}}
\hypersetup{pdfsubject=\subjectname}
\hypersetup{pdfauthor=\authornames}
\hypersetup{pdfkeywords=\keywordnames}

% TITLE PAGE
\thispagestyle{empty}
\begin{titlepage}
 	\begin{center}
 		\textsc{\LARGE \univname}	\\[1.5cm] % University name
 		\textsc{\Large \ttype}		\\[0.5cm] % Thesis type
 		
 		\HRule \\[0.4cm] % Horizontal line
 		{\huge \bfseries \ttitle}\\[0.4cm] % Thesis title
 		\HRule \\[1.2cm] % Horizontal line
 		
 		\begin{minipage}[t]{0.4\textwidth}
 			\begin{flushleft}
 				\large \emph{Author:}\\ \authornames
 			\end{flushleft}
 		\end{minipage}
 		\begin{minipage}[t]{0.4\textwidth}
 			\begin{flushright}
 				\large
 				\emph{Supervisor:} \\ \supname 
 			\ifdefined\cosupnamenolink 
 				\\[0.4cm] 
 				\emph{Co-supervisor:} \\ \cosupname 
 			\fi
 			\end{flushright}
 		\end{minipage}
 		\\[2.5cm]
 		
 		\large \textit{A thesis submitted in fulfilment of the requirements\\ for the degree of \degreename}
 		\\[0.3cm] \textit{at the} \\[0.4cm]
 		\facname \\
		\deptname
		\\[2cm]
 		% Faculty name and department name
 		{\large \today} \\[4cm] % Date
 		%\includegraphics{Logo} % University/department logo - uncomment to place it
 		\vfill
 	\end{center}
\end{titlepage}
\cleardoublepage
}

%----------------------------------------------------------------------------------------
%	ABSTRACT PAGE DESIGN
%----------------------------------------------------------------------------------------
\usepackage{keyval}

\newcommand*\absEnvTitle{Abstract}
\newcommand*\absEnvTitlePage{Abstract Page}
\newcommand*\absEnvDegree{\degreename}
\newcommand*\absEnvConnector{by}
\define@key{absEnv}{title}{\renewcommand*\absEnvTitle{#1}} 
\define@key{absEnv}{titlepage}{\renewcommand*\absEnvTitlePage{#1}}
\define@key{absEnv}{degree}{\renewcommand*\absEnvDegree{#1}}
\define@key{absEnv}{connector}{\renewcommand*\absEnvConnector{#1}}

\newenvironment{abstract}[1][]
{	
  \setkeys{absEnv}{#1}
  \btypeout{\absEnvTitlePage}
  \thispagestyle{plain}
  \null\vfil
  \begin{center}
    \setlength{\parskip}{0pt}
    {\normalsize \UNIVNAME \par} % University name in capitals
    \bigskip
    {\huge{\textit{\absEnvTitle}} \par}
    \bigskip
    {\normalsize \facname \par} % Faculty name
    {\normalsize \deptname \par} % Department name
    \bigskip
    {\normalsize \absEnvDegree\par} % Degree name
    \bigskip
    {\normalsize\bf \ttitle \par} % Thesis title
    \medskip
    {\normalsize \absEnvConnector\space \authornames \par} % Author name
    \bigskip
  \end{center}
}
{
  \vfil\vfil\vfil\null
  \cleardoublepage
}

%----------------------------------------------------------------------------------------
%	TABLE OF CONTENTS PAGE DESIGN
%----------------------------------------------------------------------------------------
\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}


\renewcommand\tableofcontents{
\btypeout{\contentsname}
\addtotoc{\contentsname}

\fancyhead[LO]{\textsc{\contentsname}}

\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
}\end{spacing}
\cleardoublepage
}


%----------------------------------------------------------------------------------------
%	LIST OF FIGURES PAGE DESIGN
%----------------------------------------------------------------------------------------
\renewcommand\listoffigures{
\btypeout{\listfigurename}
\addtotoc{\listfigurename}

\fancyhead[LO]{\textsc{\listfigurename}}

\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}{\MakeUppercase\listfigurename}}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
}\end{spacing}
\cleardoublepage
}

%----------------------------------------------------------------------------------------
%	LIST OF TABLES PAGE DESIGN
%----------------------------------------------------------------------------------------
\renewcommand\listoftables{
\btypeout{\listtablename}
\addtotoc{\listtablename}

\fancyhead[LO]{\textsc{\listtablename}}

\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{\MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
}\end{spacing}
\cleardoublepage
}

%----------------------------------------------------------------------------------------
%	LIST OF ABBREVIATIONS PAGE DESIGN
%----------------------------------------------------------------------------------------
\newcommand\listabbreviationname{Abbreviations}
\usepackage{longtable}
\newcommand\listofabbreviations[2]{
\btypeout{\listabbreviationname}
\addtotoc{\listabbreviationname}

\fancyhead[LO]{\textsc{\listabbreviationname}}

\chapter*{\listabbreviationname
      \@mkboth{\MakeUppercase\listabbreviationname}{\MakeUppercase\listabbreviationname}}
	\begin{longtable}[c]{#1}#2\end{longtable}\par
\cleardoublepage
}


%----------------------------------------------------------------------------------------
%	PHYSICAL CONSTANTS PAGE DESIGN
%----------------------------------------------------------------------------------------
\newcommand\listconstantsname{Physical Constants}
\usepackage{longtable}
\newcommand\listofconstants[2]{
\btypeout{\listconstantsname}
\addtotoc{\listconstantsname}

\fancyhead[LO]{\textsc{\listconstantsname}}

\chapter*{\listconstantsname
      \@mkboth{\MakeUppercase\listconstantsname}{\MakeUppercase\listconstantsname}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}

%----------------------------------------------------------------------------------------
%	SYMBOLS PAGE DESIGN
%----------------------------------------------------------------------------------------
\newcommand\listsymbolsname{Symbols}
\usepackage{longtable}
\newcommand\listofsymbols[2]{
\btypeout{\listsymbolsname}
\addtotoc{\listsymbolsname}

\fancyhead[LO]{\textsc{\listsymbolsname}}

\chapter*{\listsymbolsname
  \@mkboth{
      \MakeUppercase\listsymbolsname}{\MakeUppercase\listsymbolsname}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}


%----------------------------------------------------------------------------------------
%	QUOTATION PAGE DESIGN
%----------------------------------------------------------------------------------------
\newcommand\quotepage[2]{
\thispagestyle{empty} % Remove page number
\null\vfill % Add some space to move the quote down the page a bit
\textit{``#2"}
\begin{flushright}#1\end{flushright}
\vfill\vfill\vfill\vfill\vfill\vfill\null % Add some space at the bottom to position the quote just right
\cleardoublepage % Start a new page
}

%----------------------------------------------------------------------------------------
%	ACKNOWLEDGEMENTS PAGE DESIGN
%----------------------------------------------------------------------------------------
\newcommand\acknowledgements[1]{
\btypeout{Acknowledgements}
\addtotoc{Acknowledgements}
\thispagestyle{plain}
\begin{center}{\huge{\textit{Acknowledgements}} \par}\end{center}
{\normalsize #1}
\vfil\vfil\null
\cleardoublepage
}

%----------------------------------------------------------------------------------------
%	DEDICATORY PAGE DESIGN
%----------------------------------------------------------------------------------------
\newcommand\dedicatory[1]{
\btypeout{Dedicatory}
\thispagestyle{empty}
\null\vfil
\vskip 60\p@
\begin{center}{\Large \sl #1}\end{center}
\vfil\null
\cleardoublepage
}

\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse}
\endinput