% Klasa dokument\'ow do sk{\l}adu prac magisterskich/licencjackich
% na wydziale Zarz\k{a}dzania Uniwersytetu Gda\'nskiego ( wersja 1.03)
%
% Copyright (c) 2001-2004, 2005 by Wydzial Zarzadzania UG, http://www.wzr.pl
%
% This work may be distributed under the terms of the LaTeX Project
% Public License, as described in lppl.txt in the base LaTeX
% distribution.  Either version 1.0 or, at your option, any later version.
%
% Klasa wimgr mo\.ze by\'c rozpowszechniana na zasadach publicznej
% licencji LaTeX Project (The LaTeX project public license, LPPL,
% por. http://www.latex-project.org/lppl/)
% Istota LPPL sprowadza si\k{e} do tego, \.ze modyfikacje pliku dozwolone
% s\k{a} wylacznie pod warunkiem zmiany jego nazwy.
%
% Copyright (c) T. Przechlewski (tomasz@gnu.univ.gda.pl), 2002--2004, 2005
%
% Poprawki:
% --------
% wersja: 1.04:
% 07/06/2007: Dodano polecenie \UniversityName
% wersja: 1.03:
% 18/06/2005: Usuni\k{e}to kilka istotnych b\l{}\k{e}d\'ow zg\loszonych przez Piotra Tylskiego,
%            w tym: brak wpis\'ow `Bibliografia' i O\'swiadczenie w spisie tre\'sci
% wersja: 1.02:
% 07/4/2005: Dodane polecenie \oswiadczenie wstawiaj\k{a}ce tekst deklaracji okre\'slonej
%            w pi\'smie ok\'olnym Rektora UG nr 4/R/04 (z dnia 13.12.2004)
% wersja: 1.01:
% 23/4/2004: Poprawiony b\l\k{a}d w s\lowie \'Zr\'o\lo
% 18/5/2005: Zmiana sposobu formatowania strony tytu\lowej, dodanie numeru wersji
%            klasy wimgr do paginy w trybie `brudopis' + poprawka (wersja 1.01)
%
% Dzi\k{e}kuj\k{e} Marcinowi Woli\'nskiemu za zgod\k{e} na wykorzystanie 
% fragment\'ow jego klasy opracowanej w tym samym celu co niniejsza
% dla Wydzia\{l}u Matematyki, Informatyki i Mechaniki, UW.
%
% [$Date: 2005/06/18 21:25:27 $]

\def\ThisClassVersionId{v1.01}
%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wimgr}[2007/10/15 \ThisClassVersionId, Praca magisterska/licencjacka]

\def\@baseclass{report}
\def\@rodzajpracy{magisterska}
\def\@BInterlinia{\relax}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\@baseclass}}
\PassOptionsToClass{a4paper,twoside,openany,11pt}{\@baseclass}
%
\DeclareOption{licencjacka}{\def\@rodzajpracy{licencjacka}}
\DeclareOption{skorowidz}{\input{makeidx.sty}\makeindex}
\DeclareOption{palatino}{\input{qpalatin.sty}}
\DeclareOption{brudnopis}{\AtEndOfClass{\ShowThisDocVersion 
  \linespread{1.0}}}
\DeclareOption{xodstep}{\AtEndOfClass{\linespread{1.3}}}
\ProcessOptions
%
\LoadClass{\@baseclass}
%
\usepackage{graphicx}
\usepackage{polski}
\usepackage{hyperref}
%
\textwidth\paperwidth
\advance\textwidth -55mm
\oddsidemargin-1in
\advance\oddsidemargin 30mm
\evensidemargin-1in
\advance\evensidemargin 25mm
\topmargin -1in
\advance\topmargin 25mm
\setlength\textheight{48\baselineskip}
\addtolength\textheight{\topskip}
\marginparwidth15mm
%
\widowpenalty999999
\tolerance450
\pretolerance250
\hfuzz=1.5pt
\hbadness1450
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
  \endcsname{???\ClassError{wimgr}{Brak numeru albumu}\@ehc}%
  \expandafter\let\csname thenetaddress\number\authornumber\endcsname\relax }
%
\def\nralbumu#1{%
  \expandafter\def\csname theauthorid\number\authornumber\endcsname
      {\ignorespaces#1\unskip}}
\def\email#1{% -- opcjonalny --
  \expandafter\def\csname thenetaddress\number\authornumber\endcsname
      {\ignorespaces#1\unskip}}

%%\def\authorlist#1{\def\@author{#1}}
\def\@author{\@defaultauthorlist}

\newcount\count@@

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

 % <<
\def\UniversityName#1{\def\Univ@Name{#1}}
\def\Univ@Name{UNIWERSYTET GDA\'NSKI\\Wydzia\l{} Matematyki, Fizyki i Informatyki\\Instytut Informatyki}
 % <<
\renewcommand\maketitle{%
  \begin{titlepage}%
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \begin{center}%
      {\large \textbf{\Univ@Name}\par}
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
  \clearpage 
  \thispagestyle{empty}
  \InsertAbstractHere
  \section*{S{\l}owa kluczowe}
  \@keywords
  \clearpage
  \tableofcontents
  %\listoftables
  %\listoffigures
} %% --renewcommand: maketitle --

%%\def\nralbumu#1{\gdef\@nralbumu{#1}}
%%\def\@nralbumu{???\ClassError{wimgr}{Brak numeru albumu}\@ehc}
\def\kierunek#1{\gdef\@kierunek{#1}}
\def\@kierunek{???\ClassError{wimgr}{Nie podano kierunku studiow}\@ehc}
\def\opiekun#1{\gdef\@opiekun{#1}}
\def\@opiekun{???\ClassError{wimgr}{Brak danych opiekuna pracy}\@ehc}
\def\miejsce#1{\gdef\@miejsce{#1}}
\def\@miejsce{Sopot}
%
\def\keywords#1{\gdef\@keywords{#1}}
\def\@keywords{???\ClassError{wimgr}{Brak slow kluczowych}\@ehc}
\def\klasyfikacja#1{\gdef\@klasyfikacja{#1}}
\def\@klasyfikacja{???\ClassError{wimgr}{Brak klasyfikacji
    tematycznej}\@ehc}
%
\newbox \abspagebox %% *tp **
\def\InsertAbstractHere{\unvbox \abspagebox}
%
\renewenvironment{abstract}{\global 
  \setbox \abspagebox \vbox \bgroup 
  \section*{Streszczenie}  }
 {\egroup}
%
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
\renewcommand{\paragraph}{???\ClassError{wimgr}{Zbyt duzo srodtytulow}\@ehc}%
%
% Skorowidz: dodanie kresek w pozycjach skorowidza stopnia drugiego
\renewenvironment{theindex}{%
   \clearpage \refstepcounter{chapter}% potrzebne do prawid{\l}owego
     % dzia{\l}ania zak{\l}adek w dokumencie PDF
   \columnseprule \z@ \columnsep 35\p@
   \twocolumn[\@makeschapterhead{\indexname}]%
   \@mkboth{\indexname}{\indexname}%
   \addcontentsline{toc}{chapter}{\indexname}% 
   \thispagestyle{plain}\parindent\z@
   \parskip\z@ \@plus .3\p@\relax
   \let\item\@idxitem }
   {\clearpage }
\def\indexemdashes{%
\def\@idxitem{\par\hangindent 0pt}
\def\subitem{\par\hangindent 0pt --- }
\def\subsubitem{\par\hangindent 0pt --- --- }
\def\indexspace{\par \vskip 10pt plus 5pt minus 3pt\relax}}
\indexemdashes
%
% Wprowadzenie/zako\'nczenie
\newcommand{\introduction}{%\doublepage
   \chapter*{\IntroName\@mkboth{\IntroName}{\IntroName}}%
\addcontentsline{toc}{chapter}{\IntroName}}
%
\newcommand{\summary}{%\doublepage
   \chapter*{\SummaryName\@mkboth{\SummaryName}{\SummaryName}}%
\addcontentsline{toc}{chapter}{\SummaryName}}
% O\'swiadczenie (dodane 7.4.2005)
\def\oswiadczenieText{%
Ja, ni\.zej podpisany(a) o\'swiadczam, i\.z przed{\l}o\.zona praca 
dyplomowa zosta{\l}a wykonana przeze mnie samodzielnie, 
nie narusza praw autorskich, interes\'ow prawnych 
i~materialnych innych os\'ob.\endgraf }
%
\long\def\oswiadczenie{%%\newpage 
\if@twocolumn \onecolumn \fi
%%\centerline{\large\textbf{O\'swiadczenie}}
%%\vspace*{50mm}
\chapter*{O\'swiadczenie}%
\addcontentsline{toc}{chapter}{O\'swiadczenie}%
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
%
% Polecenia listoffigures/listoftables uproszczono oraz 
% dodano \addcontentsline, tak aby tytu{\l} spisu pojawi{\l} 
% si\k{e} w spisie tre\'sci i zak\ladkach w pliku PDF:
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

% Uproszczono polecenie \@makecaption, tak \.ze podpisy s\k{a}
% teraz sk{\l}adane od lewego marginesu. 
% Dodano polecenie \source do sk{\l}adania \'xr\'od{\l}a
\long\def\@makecaption#1#2{\par
  \vskip\abovecaptionskip
  \begin{flushleft}\small\textbf{#1}. #2\end{flushleft}
  %\vskip\belowcaptionskip % niepotrzebne bo po caption 
     %winno by\'c \'xr\'od{\l}o
  \par
}
\def\source#1{\par \begin{flushleft}\small 
\SourceName:~#1\end{flushleft}}
%
% Oznakowanie wersji dokumentu na ka\.zdej stronie w postaci
% adresu e-mail pierwszego autora (je\.zeli jest zdefiniowany) lub imienia
% i nazwiska pierwszego autora + tego co autor wpisa{\l} jako
% argument polecenia \nrwersji + bie{\.z}\k{a}ca data.
\def\nrwersji#1{\def\ThisDocVersion{#1}}\nrwersji{????}%
\def\shorttoday{\number\day/\number\month/\number\year~r.}
%
\newbox\show@ship@box
\newdimen\Page@hs\Page@hs=210mm
\newdimen\Page@vs\Page@vs=297mm
%
\def\ThisDocVersionId{%
  \expandafter \ifx \csname thenetaddress1\endcsname \undefined   
    \csname theauthor1\endcsname \else
    \csname thenetaddress1\endcsname \fi
  \space --\space wersja \ThisDocVersion\space z\space \shorttoday }
%
\def\ShowThisDocVersion{%
\let\oriship\shipout
\def\DOSHIP{%
  \hoffset-1in \voffset-1in
  \oriship\vbox to\Page@vs{
  \kern15mm
  \hbox to\Page@hs{\kern30mm \ttversionfont Wimgr: 
          \ThisClassVersionId\space::
          \ThisDocVersionId \hss}
  \nointerlineskip
  \nointerlineskip\vss
  \hbox to\Page@hs{\hss\box\show@ship@box\hss}%
  \nointerlineskip\vss
  %\hbox to\Page@hs{\kern30mm \ttversionfont \ThisDocVersionId \hss}
  \kern15mm
}}
% 
\font\ttversionfont=pltt8 
\def\doship{\aftergroup\DOSHIP}
\def\shipout{\afterassignment\doship\setbox\show@ship@box}
}
%
\def\IntroName{Wprowadzenie}
\def\SummaryName{Zako\'nczenie}
\def\SourceName{\'Zr\'od{\l}o}
%
\endinput
