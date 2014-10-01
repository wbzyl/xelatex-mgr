\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{xmgr}[2009/12/12 v2.0.0 (W. Bzyl)]
%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\PassOptionsToClass{a4paper,twoside,12pt}{report}
% opcje klasy xmgr
\DeclareOption{xodstep}{\AtEndOfClass{\linespread{2}}}
\DeclareOption{brudnopis}{\AtEndOfClass{\setboolean{@brudnopis}{true}}}
%
\AtEndOfClass{\linespread{1.25}}
\ProcessOptions
%
\LoadClass{report}
%
\RequirePackage{ifthen}
\RequirePackage{fancyhdr}
\RequirePackage{fontspec}
\defaultfontfeatures{Mapping=tex-text}
\RequirePackage{xunicode}
\RequirePackage{xltxtra}
\RequirePackage{graphicx}
%
\RequirePackage{color}
\definecolor{xmgrBrickRed}{cmyk}{0,0.89,0.94,0.28}
\usepackage{hyperref}
\hypersetup{colorlinks=true,linkcolor=xmgrBrickRed,bookmarks=true}
%
\RequirePackage{url}
%\RequirePackage[polish]{polyglossia}
% polyglossia >= v1.2.0 no longer supports loading language definition files
\RequirePackage{polyglossia}
\setdefaultlanguage{polish} 
%
\newboolean{@brudnopis}
%
% Oznakowanie wersji dokumentu na każdej stronie w postaci
% tego co autor wpisał jako argument polecenia \nrwersji
% Domyślnie wstawiana jest bieżąca data 
\def\wersja#1{\def\ThisDocVersion{#1}}
\def\ymdtoday{\number\year.\number\month.\number\day\relax}
%\wersja{\ymdtoday}
%
%\AtEndOfClass{\ifthenelse{\boolean{@brudnopis}}%
% {\pagestyle{fancy}}{\pagestyle{empty}}}
%\pagestyle{fancy}
%\fancyhead[EL,OR]{\textsl{\rightmark}}
%\fancyhead[ER,OL]{\textsl{\leftmark}}
%
\renewcommand{\headrulewidth}{0pt}
\setlength{\headheight}{15pt}
 
\pagestyle{fancy}
%\renewcommand{\chaptermark}[1]{\markboth{#1}{}}  % bez numerów rozdziałów
%\renewcommand{\sectionmark}[1]{\markright{#1}{}} % i sekcji
\fancyhf{}
\fancyhead[LE,RO]{\thepage}
\fancyhead[RE]{\textit{\nouppercase{\leftmark}}}
\fancyhead[LO]{\ifthenelse{\boolean{@brudnopis}}%
  {\texttt{\ThisDocVersion}}%
  {\textit{\nouppercase{\rightmark}}}}
% 
%% \fancypagestyle{plain}{ %
%% \fancyhf{} % remove everything
%% \renewcommand{\headrulewidth}{0pt} % remove lines as well
%% \renewcommand{\footrulewidth}{0pt}}
%
\widowpenalty999999
\tolerance410
\pretolerance250
\hfuzz=1.5pt
\hbadness1410
%
\def\AndNextAuthor{\ifnum\language=0\& \else i \fi}
\newcount\authornumber
\authornumber=0
%
\def\author#1{%
  \global\advance\authornumber\@ne
  \expandafter\def\csname theauthor\number\authornumber\endcsname
      {\ignorespaces#1\unskip}%
  \expandafter\def\csname theauthorid\number\authornumber
  \endcsname{???\ClassError{xmgr}{Brak numeru albumu}\@ehc}%
  \expandafter\let\csname thenetaddress\number\authornumber\endcsname\relax }
%
\def\nralbumu#1{%
  \expandafter\def\csname theauthorid\number\authornumber\endcsname
      {\ignorespaces#1\unskip}}
\def\email#1{% -- opcjonalny --
  \expandafter\def\csname thenetaddress\number\authornumber\endcsname
      {\ignorespaces#1\unskip}}
%
\def\@author{\@defaultauthorlist}
%
\newcount\count@@
%
\def\@defaultauthorlist{%
   \count@=\authornumber
   \count@@=0
   \loop
   \ifnum\count@>0
      \advance\count@@ by 1
      \begingroup \Large\bf
      \ignorespaces\csname theauthor\number\count@@\endcsname\par
      \normalsize \rm nr~albumu:
      \ignorespaces\csname theauthorid\number\count@@\endcsname\par
      % adres email nie jest drukowany -- ale si{\e} przyda
      %%\ignorespaces\csname thenetaddress\number\count@@\endcsname
      \par 
      \medskip \endgroup
      \advance\count@ by -1
   \repeat
  }
%
\def\nazwaszkoly#1{\gdef\nazwa@szkoly{#1}}
\def\nazwa@szkoly{UNIWERSYTET GDAŃSKI\\
  Wydział Matematyki, Fizyki i Informatyki}

%\def\nralbumu#1{\gdef\@nralbumu{#1}}
%\def\@nralbumu{???\ClassError{xmgr}{Brak numeru albumu}\@ehc}
\def\kierunek#1{\gdef\@kierunek{#1}}
\def\@kierunek{Informatyka}

\def\opiekun#1{\gdef\@opiekun{#1}}
\def\@opiekun{???\ClassError{xmgr}{Brak danych opiekuna pracy}\@ehc}
\def\miejsce#1{\gdef\@miejsce{#1}}
\def\@miejsce{Gdańsk}
%
\def\keywords#1{\gdef\@keywords{#1}}
\def\@keywords{???\ClassError{xmgr}{Brak slow kluczowych}\@ehc}
\def\klasyfikacja#1{\gdef\@klasyfikacja{#1}}
\def\@klasyfikacja{???\ClassError{xmgr}{Brak klasyfikacji tematycznej}\@ehc}
%
\newcommand{\introduction}{%\doublepage
   \chapter*{\IntroName\@mkboth{\IntroName}{\IntroName}}%
\addcontentsline{toc}{chapter}{\IntroName}}
%
\newcommand{\summary}{%\doublepage
   \chapter*{\SummaryName\@mkboth{\SummaryName}{\SummaryName}}%
\addcontentsline{toc}{chapter}{\SummaryName}}
%
\def\oswiadczenieText{%
Ja, niżej podpisany(a) oświadczam, iż przedłożona praca 
dyplomowa została wykonana przeze mnie samodzielnie, 
nie narusza praw autorskich, interesów prawnych 
i~materialnych innych osób.\endgraf }
%
\long\def\oswiadczenie{%%\newpage 
\if@twocolumn \onecolumn \fi
\chapter*{Oświadczenie}%
\addcontentsline{toc}{chapter}{Oświadczenie}%
\par 
\vskip6mm
\noindent
\oswiadczenieText
\par\vskip12mm 
\centerline{\vbox{%
\hbox to.8\textwidth{\hbox to45mm{\dotfill}\hss 
   \hbox to45mm{\dotfill}} 
\hbox to.8\textwidth{\hbox to45mm{\hss data\hss}\hss
\hbox to45mm{\hss podpis\hss}}%
}}\par
\newpage }

\renewcommand\maketitle{%
  \begin{titlepage}%
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \begin{center}%
      {\large \textbf{\nazwa@szkoly}\par}
      \par 
    \end{center}%
     \vspace{1cm plus 1fill} 
    \begin{flushleft}%
      {\@author\par}
    \end{flushleft}%
     \vspace{8mm plus 1mm minus 2mm}
    \begin{center}%
      {\huge\textbf{\@title}\par}
      \vspace{2cm plus 1.5fill}
      \begin{flushright}\large
        \begin{tabular}{l}
          Praca \@rodzajpracy{} na kierunku:\\[3pt]
          \MakeUppercase{\@kierunek}\\[3pt]
          Promotor: \\[3pt]
          \bfseries \@opiekun
        \end{tabular}
      \end{flushright}
      \vspace{15mm plus .1fill}
      {\large \@miejsce\space \@date\par}
    \end{center}
    \@thanks
  \end{titlepage}%
  %
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  %
  \thispagestyle{empty}
  \cleardoublepage
  \thispagestyle{empty}
  \InsertAbstractHere
  \section*{Słowa kluczowe}
  \@keywords
  \clearpage
  \tableofcontents
  %\listoftables
  %\listoffigures
} %% --renewcommand: maketitle --

\renewenvironment{abstract}{\global 
  \setbox \abspagebox \vbox \bgroup 
  \section*{Streszczenie}  }
 {\egroup}

\renewcommand*\@seccntformat[1]{\csname the#1\endcsname.\enspace}
\def\numberline#1{\hb@xt@\@tempdima{#1.\hfil}}
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\mdseries
      \leaders\hbox{$\m@th
        \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
        mu$}\hfill
      \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
%
\def\@makechapterhead#1{%
  %\vspace*{50\p@}%
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
        \normalsize \bfseries \MakeUppercase{\@chapapp}\space \thechapter
        \par\nobreak
        \vskip\baselineskip 
    \fi
    \interlinepenalty\@M
    \LARGE \bfseries #1\par\nobreak
    \vskip 40\p@
  }}
%
\def\@makeschapterhead#1{%
  %\vspace*{50\p@}%
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \LARGE \bfseries  #1\par\nobreak
    \vskip 40\p@
  }}
%
\renewcommand{\section}{\@startsection{section}{1}{\z@}%
    {-3.5ex \@plus -1ex \@minus -.2ex}%
    {2.3ex \@plus.2ex}%
    {\reset@font\Large\bfseries\raggedright}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
    {-3.25ex\@plus -1ex \@minus -.2ex}%
    {1.5ex \@plus .2ex}%
    {\reset@font\large\bfseries\raggedright}}
\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{\z@}%
    {-3.25ex\@plus -1ex \@minus -.2ex}%
    {1.5ex \@plus .2ex}%
    {\reset@font\normalsize\bfseries\raggedright}}
\renewcommand{\paragraph}{???\ClassError{xmgr}{Zbyt duzo srodtytulow}\@ehc}%
%
\newbox \abspagebox %% *tp **
\def\InsertAbstractHere{\unvbox \abspagebox}

% Uproszczono polecenia listoffigures/listoftables oraz 
% dodano \addcontentsline, tak aby tytuł spisu pojawił
% się w spisie treści i zakładkach w pliku PDF:
\renewcommand\listoffigures{%
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}}%
    \addcontentsline{toc}{chapter}{\listfigurename}
    \@starttoc{lof}}
%
\renewcommand\listoftables{%
    \chapter*{\listtablename
      \@mkboth{%
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}%
    \@starttoc{lot}%
    \addcontentsline{toc}{chapter}{\listtablename}}
%
\renewenvironment{thebibliography}[1]
     {\chapter*{\bibname}%
      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
      \addcontentsline{toc}{chapter}{\bibname}%<--
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
% uproszczono polecenie \@makecaption, tak że podpisy są
% teraz składane od lewego marginesu. 
\long\def\@makecaption#1#2{\par
  \vskip\abovecaptionskip
  \begin{flushleft}\small\textbf{#1}. #2\end{flushleft}
  %\vskip\belowcaptionskip 
  % niepotrzebne bo po caption winno być źródło
  \par
}
% Dodano polecenie \source do składania źródła
\def\source#1{\par \begin{flushleft}\small 
 \SourceName:~#1\end{flushleft}}
%
%
\def\@BInterlinia{\relax}
\def\@rodzajpracy{magisterska}
%
\def\IntroName{Wprowadzenie}
\def\SummaryName{Zakończenie}
\def\SourceName{Źródło}
%
\endinput
