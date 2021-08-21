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
\newpage
\vspace*{\fill} 
{\large \bfseries \noindent 
\thispagestyle{empty}
\huge{تعهدنامه}\\[0.6cm]
\noindent
\normalsize
اینجانب  \@name \  \@surname \   دانشجوی
\if@mscthesis 
 كارشناسی ارشد
\else
دکتری
\fi
 رشته مهندسی کامپیوتر دانشکده مهندسی دانشگاه فردوسی مشهد نویسنده پایان‌نامه   \@title \   تحت راهنمایی  \@firstsupervisor متعهد می‌شوم:
\begin{itemize}
\item	تحقیقات در این پایان‌نامه توسط اینجانب انجام شده و از صحت و اصالت برخوردار است.
\item	در استفاده از نتایج پژوهشهای محققان دیگر به مرجع مورد استفاده استناد شده است.
\item	مطالب مندرج در پایان‌نامه تاکنون توسط خود و یا فرد دیگری برای دریافت هیچ نوع مدرک یا امتیازی در هیچ جا ارائه نشده است.
\item	کلیه حقوق معنوی این اثر متعلق به دانشگاه فردوسی مشهد می باشد و مقالات مستخرج با نام "دانشگاه فردوسی مشهد" و یا "\lr{Ferdowsi University of Mashhad}" به چاپ خواهد رسید.
\item	حقوق معنوی تمام افرادی که در به دست آمدن نتایج اصلی پایان‌نامه تاثیرگذار بوده‌اند در مقالات مستخرج از رساله رعایت شده است.
\item	در کلیه مراحل انجام این پایان‌نامه، در مواردی که از موجود زنده (یا بافت‌های آن‌ها) استفاده شده است ضوابط و اصول اخلاقی رعایت شده است.
\item	در کلیه مراحل انجام این پایان‌نامه، در مواردی که به حوزه اطلاعات شخصی افراد دسترسی یافته یا استفاده شده است، اصل رازداری، ضوابط و اصول اخلاق انسانی رعایت شده است.

\begin{flushleft}
\begin{tabular}{c}
تاریخ\\
امضای دانشجو
\end{tabular}
\end{flushleft}

\end{itemize}

\begin{center}


\begin{tcolorbox}
\centerline{\textbf{مالکیت نتایج و حق نشر}} 


\begin{itemize}
\item کلیه حقوق معنوی این اثر و محصولات آن (مقالات مستخرج، کتاب، برنامه‌های رایانه‌ای، نرم‌افزارها و تجهیزات ساخته شده) متعلق به دانشگاه فردوسی مشهد می‌باشد. این مطلب باید به نحو مقتضی در تولیدات علمی مربوطه ذکر شود.

\item
استفاده از اطلاعات و نتایج موجود در پایان‌نامه بدون ذکر مرجع مجاز نمی‌باشد.
\end{itemize}



\end{tcolorbox}


\end{center}

}
\vspace*{\fill}
\cleardoublepage%~
\newpage
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
\newpage
\thispagestyle{empty}
{\minutesfont
\centerline{بسمه تعالی}%
\vspace{1em}%
\renewcommand{\arraystretch}{2.25}%
\begin{tabular}{|M{3.4cm}|@{}M{6.95cm}@{}|M{3cm}|}
\hline
\vspace{5pt}
\includegraphics[scale=.30]{logo}\par
\vspace{-2mm}
{\small 
مدیریت تحصیلات تکمیلی
}
&
\baselineskip=1cm
{\large \bfseries 
صورتجلسه دفاعیه پایان‌نامه دانشجوی
\par
دوره
\if@mscthesis 
کارشناسی ارشد
\else
دکتری
\fi
}
&
\if@mscthesis 
شناسه: ب/ک/\lr{3}
\else
شناسه: ب/د/\lr{3}
\fi
\\ \hline
\multicolumn{3}{|p{14cm}|}{
\baselineskip=1cm
جلسه دفاعیه پایان‌نامه تحصیلی آقای/خانم:          
\@name \  \@surname
\hfill
 دانشجوی
\if@mscthesis 
 كارشناسی ارشد
\else
دکتری
\fi
\par
 رشتـه/گرایش:       
\@subject/\@field
\par                                        
تحت عنوان:        
\@title
\par                                                                                                        
و تعداد واحد:   
\hskip 1ex
\ifx\@credit\undefined
\else
\@credit
\fi
\hskip 1ex
در تاریخ 
\ifx\@credit\undefined
\else
\@defensedate\
\fi \
 با حضور اعضای هيأت داوران (به شرح ذیل) تشكيل گرديد.
\par
پس از ارزيابی توسط هيأت داوران، پايان‌نامه با نمره به عدد 
\ifx\@grade\undefined
\hphantom{۱۹٫۲۵}
\else
\@grade\
\fi
به حروف    
\ifx\@letgrade\undefined
\hphantom{نوزده و بیست و پنج صدم}
\else
\@letgrade\
\fi                        
و  درجه      
\ifx\@degree\undefined
\hphantom{عالی}
\else
\@degree\
\fi
 مورد تصويب قرار گرفت.

\vspace{2em}
\begin{tabular}{@{}R{4.2cm}C{5.7cm}C{3cm}@{}}
%%\hline
\multicolumn{1}{c}{\underline{عنوان}}
 &
\underline{نام و نام خانوادگی}
&
\underline{امضاء}%
\\[1em]
%%\hline
استاد/استادان راهنما:
\if@mscthesis
\else 
الف:
\ifx\@secondsupervisor\undefined
\else
\newline
\hphantom{استاد/استادان راهنما:}
ب:
 \fi
 \fi
 & 
 \@firstsupervisor{}
 \ifx\@secondsupervisor\undefined
 \else
 \par
 \@secondsupervisor
 \fi
 &
\\[2em]
استاد/استادان مشاور:
\if@mscthesis
\else
الف:
\ifx\@secondadvisor\undefined
\else
\newline
\hphantom{استاد/استادان مشاور:}
ب:
 \fi
 \fi
&
\ifx\@firstadvisor\undefined
  \else
   \@firstadvisor
\fi
 \ifx\@secondadvisor\undefined
 \else
 \par
 \@secondadvisor
 \fi
 &
\\[2em]
\if@mscthesis 
متخصص و صاحبنظر داخلی:
\else
داور داخل گروه: 
\fi
\if@mscthesis
\else 
الف:
\ifx\@secondinternalreferee\undefined
 \else
 \newline
\hphantom{داور داخل گروه:}
ب:
 \fi
 \fi
&
\ifx\@firstinternalreferee\undefined
  \else
   \@firstinternalreferee
\fi
 \ifx\@secondinternalreferee\undefined
 \else
 \par
 \@secondinternalreferee
 \fi
 &
\\[2em] 
\if@mscthesis 
متخصص و صاحبنظر خارجی:
\else
داور خارج از گروه: 
\fi
\if@mscthesis
\else 
الف:
\ifx\@secondexternalreferee\undefined
\else
\newline
\hphantom{داور خارج از گروه:}
ب:
 \fi
 \fi
 & 
 \@firstexternalreferee{}
 \ifx\@secondexternalreferee\undefined
 \else
 \par
 \@secondexternalreferee
 \fi
 &
\\[1.5cm] 
&
\multicolumn{2}{R{7cm}}{
\baselineskip=.7cm
نماينده تحصيلات تكميلی دانشگاه (ناظر)
\par
نام ونام خانوادگی:
\ifx\@viewer\undefined
  \else
   \@viewer
\fi
\par
امضاء:
}
\\[5em]
%%\hline 
\end{tabular} 
}
\\ \hline
\end{tabular}
}% end of \bnazanin font
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