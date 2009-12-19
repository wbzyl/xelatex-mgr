# XMGR (adaptacja wimgr v1.04, 12/2007)

Klasa *xmgr.cls* umożliwia sprawne i wygodne przygotowanie w systemie
XeLaTeX pracy magisterskiej zgodnie z wymogami obowiązującymi na
kierunku Informatyka.

Klasa jest adaptacją
[wzmgr.cls](http://gnu.univ.gda.pl/~tomasz/prog/tex/wzmgr/wzmgr.html)
opracowanej przez Tomasza Przechlewskiego dla Wydziału Zarządzania, UG.

## Opcje klasy

<dl>
<dt><code>magisterska</code></dt>
<dd>praca magisterska (wartość domyślna);</dd>

<dt><code>licencjacka</code></dt>
<dd>praca licencjacka;</dd>

<dt><code>skorowidz</code></dt>
<dd>praca będzie zawierała skorowidz;</dd>

<dt><code>palatino</code></dt>
<dd>skład krojem QuasiPalladio;</dd>

<dt><code>brudnopis</code></dt>
<dd>wstępna wersja pracy: drukowanie z pojedynczym odstępem
i oznaczanie każdej strony numerem wersji oraz datą;</dd>

<dt><code>xodstep</code></dt>
<dd>zwiększenie odstępu między wierszami.</dd>
</dl>

## Dodatkowe polecenia i środowiska

Dodatkowe polecenia umożliwiają wstawienie swojego nazwiska,
tytułu pracy itd.

<dl>
<dt><code>\UniversityName</code></dt>
<dd>Nazwa szkoły, drukowana na górze strony tytyłowej 
(domyślnie <em>Uniwersytet Gdański – Instytut Informatyki</em>);
</dd>

<dt><code>\oswiadczenie</code></dt>
<dd>tekst oświadczenia o samodzielnym wykonaniu pracy, określony
w piśmie okólnym Rektora UG z dnia 13 grudnia 2004 (należy
umieścić na końcu pracy, tj. przed <code>\end{document}</code>);</dd>

<dt><code>\autor</code></dt>
<dd>imię oraz nazwisko autora;</dd>

<dt><code>\nralbumu</code></dt>
<dd>numer albumu;</dd>

<dt><code>\email</code></dt> 
<dd>adres email autora (opcjonalnie);</dd>

<dt><code>\kierunek</code></dt>
<dd>nazwa kierunku, np. Informatyka Ekonomiczna;</dd>

<dt><code>\opiekun</code></dt>
<dd>tytuł naukowy, imię i nazwisko promotora;</dd>

<dt><code>\miejsce</code></dt>
<dd>miejsce obrony (opcjonalnie), jeżeli nie podano 
  zostanie wpisany Sopot;</dd>

<dt><code>\keywords</code></dt>
<dd>lista słów kluczowych (oddzielonych przecinkami);</dd>

<dt><code>abstract</code></dt> 
<dd>streszczenie (środowisko);</dd>

<dt><code>\introduction</code></dt> 
<dd>wstęp;</dd>

<dt><code>\summary</code></dt> 
<dd>zakończenie;</dd>

<dt><code>\source</code></dt> 
<dd>źródło, umieszczane pod tabelą i rysunkiem;</dd>

<dt><code>\nrwersji</code></dt> 
<dd>etykieta wersji dokumentu.</dd>
</dl>

## Uwagi

Polecenia `\autor`, `\nralbumu` (ewentualnie
`\email`) można wstawić wielokrotnie jeżeli praca jest
dziełem kilku autorów.

Klasa wykorzystuje następujące pakiety: *graphicx*, *hyperref*, *url*,
*polyglossia*, *fontspec*, *xunicode*, *xltxtra*.

## Przykład szablonu pracy

<pre>% !TEX TS-program = xelatex
% !TEX encoding = UTF-8

\documentclass[brudnopis]{xmgr}

\setmainfont[Mapping=tex-text]{Minion Pro:+onum}
\setsansfont[Mapping=tex-text]{Myriad Pro}
\setmonofont{Monaco}

%\nrwersji {<em>etykieta</em>} % TODO

\UniversityName {Nazwa-Szkoły}

\author   {<em>imię1 nazwisko1</em>}
\nralbumu {<em>numer1</em>}
\email    {<em>email1@gnu.univ.gda.pl</em>}

\author   {<em>imię2 nazwisko2</em>}
\nralbumu {<em>numer2</em>}

\title    {<em>tytuł-pracy</em>}

\kierunek {<em>nazwa-kierunku</em>}
\date     {<em>rok-obrony</em>}
\miejsce  {<em>miejsce</em>}

\opiekun  {<em>tytuł-naukowy imię nazwisko</em>}
\begin{document}

\begin{abstract}... \end{abstract}
\keywords{<em>słowo-kluczowe</em>, <em>słowo-kluczowe</em>, ... }
\maketitle

% --- początek pracy ---
% Wstęp
\introduction
...
\chapter{<em>tytuł-rozdziału</em>}
....
\section{<em>tytuł-podrozdziału</em>}
...
\section{<em>tytuł-podrozdziału</em>}
...
% Zakończenie
\summary
...
% Załączniki (opcjonalnie):
\appendix
\chapter{<em>tytuł-załącznika</em>}
...
\chapter{<em>tytuł-załącznika</em>}
...
% Literatura:
\begin{thebibliography}{99}
...
\end{thebibliography}
% Spisy tabel i rysunków (jeśli występują w pracy):
\listoftables
\listoffigures

% Skorowidz (opcjonalnie)
\printindex

\end{document}
</pre>
