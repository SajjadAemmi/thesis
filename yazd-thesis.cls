\NeedsTeXFormat{LaTeX2e}
\def\yazd-thesisversion{0.1}
\ProvidesClass{yazd-thesis}
              [2015/01/22 v\yazd-thesisversion\space A template for the FUM]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[a4paper,11pt,oneside]{book}
%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{calc}
\RequirePackage[top=3cm, bottom=3cm, left=2.5cm, right=3.5cm]{geometry}
\RequirePackage[]{acronym}
\RequirePackage[]{graphicx}
\graphicspath{{figures/}}
\RequirePackage{array}
\newcolumntype{C}[1]{>{\raggedleft\centering\arraybackslash}p{#1}}
\newcolumntype{R}[1]{>{\raggedleft\arraybackslash}p{#1}}
\newcolumntype{M}[1]{>{\raggedleft\centering\arraybackslash}m{#1}}
\RequirePackage{multicol} 
\RequirePackage{fancyhdr}
\RequirePackage[nottoc]{tocbibind}
\RequirePackage{zref-perpage}
\zmakeperpage{footnote}
\RequirePackage{makeidx}
\RequirePackage{tcolorbox}
\makeindex
\RequirePackage[]{xcolor}
\RequirePackage[]{hyperref}


\newcommand{\besmwidth}[1]{\def\@besmwidth{#1}}
\def\department#1{\gdef\@department{#1}}
\def\thesisdate#1{\gdef\@thesisdate{#1}}
\newcommand{\firstsupervisor}[1]{\def\@firstsupervisor{#1}}
\newcommand{\secondsupervisor}[1]{\def\@secondsupervisor{#1}}
\newcommand{\firstadvisor}[1]{\def\@firstadvisor{#1}}
\newcommand{\secondadvisor}[1]{\def\@secondadvisor{#1}}
\def\name#1{\gdef\@name{#1}}
\def\surname#1{\gdef\@surname{#1}}
\newcommand{\credit}[1]{\def\@credit{#1}}
\newcommand{\defensedate}[1]{\def\@defensedate{#1}}
\newcommand{\grade}[1]{\def\@grade{#1}}
\newcommand{\letgrade}[1]{\def\@letgrade{#1}}
\newcommand{\degree}[1]{\def\@degree{#1}}
\newcommand{\firstinternalreferee}[1]{\def\@firstinternalreferee{#1}}
\newcommand{\secondinternalreferee}[1]{\def\@secondinternalreferee{#1}}
\newcommand{\firstexternalreferee}[1]{\def\@firstexternalreferee{#1}}
\newcommand{\secondexternalreferee}[1]{\def\@secondexternalreferee{#1}}
\newcommand{\viewer}[1]{\def\@viewer{#1}}
\newcommand{\totext}[1]{\def\@totext{#1}}
\newcommand{\ack}[1]{\def\@ack{#1}}
\newcommand{\faabstract}[1]{\def\@faabstract{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\subject#1{\gdef\@subject{#1}}
\def\field#1{\gdef\@field{#1}}
\def\department#1{\gdef\@department{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%
\def\latintitle#1{\gdef\@latintitle{#1}}
\def\latinthesisdate#1{\gdef\@latinthesisdate{#1}}
\def\latindepartment#1{\gdef\@latindepartment{#1}}
\def\firstlatinsupervisor#1{\gdef\@firstlatinsupervisor{#1}}
\def\secondlatinsupervisor#1{\gdef\@secondlatinsupervisor{#1}}
\def\firstlatinadvisor#1{\gdef\@firstlatinadvisor{#1}}
\def\secondlatinadvisor#1{\gdef\@secondlatinadvisor{#1}}
\def\latinname#1{\gdef\@latinname{#1}}
\def\latinsurname#1{\gdef\@latinsurname{#1}}
\newcommand{\enabstract}[1]{\def\@enabstract{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@mscthesis
\@mscthesisfalse
\DeclareOption{msc}{\@mscthesistrue}
\ProcessOptions
%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\mychapter}[1]{%
\phantomsection%
\addcontentsline{toc}{chapter}{#1}\chapter*{#1}\markboth{#1}{#1}%
}

\newcommand{\yazdtitle}{%
\thispagestyle{empty}
\begin{minipage}[c][\textheight][c]{\textwidth}%
\centering
\includegraphics[width=
\ifx\@besmwidth\undefined%
.9\textwidth
\else
\@besmwidth\textwidth
\fi
]{besm}
\end{minipage}%
%\cleardoublepage%~
\newpage
\thispagestyle{empty}
\vspace*{\fill}
\noindent
\newpage
\begin{titlepage}
\vspace{-4cm}
\begin{tabular}{l r}
\includegraphics[scale=0.9]{logou}\hspace{10cm} &\includegraphics[scale=0.3]{logom}
\end{tabular}
\newline

\par
\vspace{.3\baselineskip}
{\large\bfseries \fontspec{IRTitr}
پایان‌نامه کارشناسی ارشد
}
\vskip 2ex
\centerline{\large \bfseries
\@field}
\vskip 6ex
{\huge\bfseries {\fontspec{IRTitr}{\@title}}}
\baselineskip=1.5cm\par
\vskip 4ex
 \baselineskip=.5cm
\large
{\ifx\@firstsupervisor\undefined%
\ifx\@secondsupervisor\undefined%
\else\fi
\else
\ifx\@secondsupervisor\undefined%

{\large\bfseries \fontspec{IRTitr}{
پژوهش و نگارش: 
\@name\  \@surname}}\par

{\large\bfseries \fontspec{IRTitr}
استاد راهنما:
\@firstsupervisor}
\else
{\large\bfseries 
استادان راهنما:
\@firstsupervisor{} و \@secondsupervisor}
\fi\fi}
\par\large
{\ifx\@firstadvisor\undefined%
\ifx\@secondadvisor\undefined%
\else\fi
\else
\ifx\@secondadvisor\undefined%
{\large\bfseries
استاد مشاور:
\@firstadvisor}
\else
{\large\bfseries
استادان مشاور:
\@firstadvisor{} و \@secondadvisor}
\fi\fi}

{\large \fontspec{IRTitr} \@thesisdate}



\begin{flushleft}
\begin{tabular}{c}
\includegraphics[scale=0.3]{logoa}\\
	\text{آزمايشگاه بينايي ماشين}
\end{tabular}
\end{flushleft}

\end{titlepage}
\cleardoublepage%~

% اصالتنامه
\includepdf[pages=-,pagecommand={},width=\textwidth]{esalatname.pdf}

\ifx\@totext\undefined%
\else
\thispagestyle{empty}
\@totext
\fi
\cleardoublepage%~
\newpage
\thispagestyle{empty}
\ifx\@ack\undefined%
\else
\thispagestyle{empty}
\@ack
\fi
\cleardoublepage%~

% صورت جلسه
\includepdf[pages=-,pagecommand={},width=\textwidth]{sooratjalase.pdf}

\cleardoublepage%~
\newpage
\ifx\@faabstract\undefined%
\else
\@faabstract
\thispagestyle{empty}
\fi
\pagenumbering{harfi}
\pagestyle{plain}
\setcounter{page}{1}
\clearpage
}

\def\titlepage{\newpage\centering
  \thispagestyle{empty}
  \parindent 0pt \parskip 10pt plus 1fil minus 1fil
  \def\baselinestretch{1}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup}
\def\endtitlepage{\par\kern 0pt\egroup\vss\egroup\newpage}

\def\signature{\vspace{1cm}
\begin{flushleft}
{\scriptsize \@name\ \@surname \\
\@thesisdate}
\end{flushleft}}

\newcommand{\latinyazdtitle}{%
\setcounter{page}{2}
\cleardoublepage%~
\newpage
\ifx\@enabstract\undefined%
\else
\@enabstract
\fi
\setcounter{page}{2}
\cleardoublepage%~
\thispagestyle{empty}{\tiny .} \newpage
\begin{titlepage}
{\huge \bfseries
Ferdowsi University Mashhad (FUM)
}
\\[10pt]
{\Large \bfseries Department of \@latindepartment}
\par
\vspace{4em}
{\Large
 \if@mscthesis
Thesis submitted\\[1em]
for the degree of M.Sc.
\else
Thesis Submitted \\[1em]
for the degree of Ph.D.
\fi
}
\par
\vspace{5em}
{\Large \bfseries Title:}
\par
{\Large\bfseries\@latintitle}
\baselineskip=1cm \par
\vskip 1.5cm
\ifx\@firstlatinsupervisor\undefined%
\ifx\@secondlatinsupervisor\undefined%
\else\fi
\else
\ifx\@secondlatinsupervisor\undefined%
{\large\bfseries
Supervisor:
\@firstlatinsupervisor}
\else
{\large\bfseries
Supervisors:
 \@firstlatinsupervisor{} and \@secondlatinsupervisor}
\fi\fi
\par
\ifx\@firstlatinadvisor\undefined%
\ifx\@secondlatinadvisor\undefined%
\else\fi
\else
\ifx\@secondlatinadvisor\undefined%
{\large\bfseries
Advisor:
\@firstlatinadvisor}
\else
{\large\bfseries
Advisors:
\@firstlatinadvisor{} and \@secondlatinadvisor}
\fi\fi
\vskip 5mm
{\large\bfseries By:
\@latinname \; \@latinsurname}\par
\vskip 5mm
\par
\vskip 1cm
{\@latinthesisdate}
\par
\vskip 1cm
\par
\vfill
%
\end{titlepage}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\persiangloss[2]{#1\dotfill\lr{#2}\\}
\newcommand\englishgloss[2]{#2\dotfill\lr{#1}\\}
%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtBeginDocument{
\theoremstyle{definition}
\newtheorem{definition}{تعریف}[section]
\theoremstyle{plain}
\newtheorem{theorem}[definition]{قضیه}
\newtheorem{lemma}[definition]{لم}
\newtheorem{proposition}[definition]{گزاره}
\newtheorem{corollary}[definition]{نتیجه}
\newtheorem{remark}[definition]{ملاحظه}
\theoremstyle{definition}
\newtheorem{example}[definition]{مثال}
\renewcommand{\bibname}{منابع و مآخذ}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{fancy}
\fancyhf{} 
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0pt}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtBeginDocument{
\def\@makechapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \if@RTL\raggedleft\else\raggedright\fi \normalfont
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        \huge\bfseries \@chapapp\space \thechapter
        \par\nobreak
        \vskip 20\p@
      \fi
    \fi
    \interlinepenalty\@M
    \Huge \bfseries #1\par\nobreak
    \vskip 40\p@
    \thispagestyle{empty}
    \newpage
  }}
\def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \if@RTL\raggedleft\else\raggedright\fi
    \normalfont
    \interlinepenalty\@M
    \Huge \bfseries  #1\par\nobreak
    \vskip 40\p@
    \thispagestyle{empty}
%%    \newpage
  }}  
  \flushbottom
}


\setlength{\parindent}{1cm}
\setlength{\parskip}{0pt}

\setlength{\footskip}{
\paperheight   -(1in+\voffset+\topmargin+\headheight+\headsep+\textheight)  -1cm
}

\makeatletter
\renewcommand\section{\@startsection{section}{1}{\z@}%
                                   {-1.4cm \@plus -0ex \@minus -0ex}%
                                   {0.5cm \@plus0ex}%
                                   {\normalfont\Large\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                    {-1.4cm \@plus -0ex \@minus -0ex}%
                                   {0.5cm \@plus0ex}%
                                     {\normalfont\large\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-1.4cm \@plus -0ex \@minus -0ex}%
                                   {0.5cm \@plus0ex}%
                                     {\normalfont\normalsize\bfseries}}  


\def\bflabel#1{{\textsf{#1}\hfill}}
\renewcommand*\@verridelabel[1]{%
  \@bsphack
  \label{#1}%
  \protected@write\@auxout{}{\string\undonewlabel{#1}}%
  \@overriddenmessage rs{#1}%
  \@esphack
}%
\renewcommand*{\@acf}[1]{%
      \ifAC@starred\else\AC@logged{#1}\fi%
       \acffont{%
          \AC@placelabel{#1}\hskip\z@%\AC@acl{#1}%
          \nolinebreak[3]%
          \acfsfont{\acsfont{\AC@acs{#1}}}%
        }}
 \makeatother
 
\makeatletter
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\vspace*{\fill}
\begin{center}
%این صفحه، عمداً خالی گذاشته شده است.
\end{center}
\vspace{\fill}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\makeatother


\makeatletter
\let\origprintindex\printindex
\renewcommand*{\printindex}{%
\cleardoublepage
  \fancypagestyle{plain}{%
    \fancyhf{}%
    \renewcommand{\headrulewidth}{0pt}%
    \renewcommand{\footrulewidth}{0pt}%
  }%
  \tolerance=10000
  \origprintindex
}
\makeatother