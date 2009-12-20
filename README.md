# XMGR (adaptacja wimgr v1.04, 12/2007)

Klasa *xmgr.cls* umożliwia sprawne i wygodne przygotowanie w systemie
XeLaTeX pracy magisterskiej zgodnie z wymogami obowiązującymi na
kierunku Informatyka.

Klasa jest adaptacją
[wzmgr.cls](http://gnu.univ.gda.pl/~tomasz/prog/tex/wzmgr/wzmgr.html)
opracowanej przez Tomasza Przechlewskiego dla Wydziału Zarządzania, UG.

Klasa *xmgr* korzysta z następujących pakietów:

* ifthen
* fancyhdr
* xunicode
* xltxtra
* graphicx
* hyperref
* url
* fontspec
* polyglossia

## Opcje klasy

Klasa definiuje dwie opcje:

<dl>
<dt><code>brudnopis</code></dt>
<dd>wstępna wersja pracy: drukowanie z pojedynczym odstępem
z wersją na każdej parzystej stronie</dd>

<dt><code>xodstep</code></dt>
<dd>zwiększenie odstępu między wierszami</dd>
</dl>

## Dodatkowe polecenia i środowiska

Dodatkowe polecenia umożliwiają wstawienie swojego nazwiska,
tytułu pracy itd.

<dl>
<dt><code>\nazwaszkoly</code></dt>
<dd>nazwa szkoły, drukowana na górze strony tytyłowej;
domyślnie <em>Uniwersytet Gdański / Instytut Informatyki</em>
</dd>

<dt><code>\wersja</code></dt>
<dd>wersja dokumentu wypisywana w główce strony;
tylko jeśli wybrano opcję <em>brudnopis</em></dd>

<dt><code>\oswiadczenie</code></dt>
<dd>tekst oświadczenia o samodzielnym wykonaniu pracy, określony
w piśmie okólnym Rektora UG z dnia 13 grudnia 2004</dd>

<dt><code>\autor</code></dt>
<dd>imię oraz nazwisko autora;</dd>

<dt><code>\nralbumu</code></dt>
<dd>numer albumu</dd>

<dt><code>\email</code></dt> 
<dd>adres email autora (opcjonalnie)</dd>

<dt><code>\kierunek</code></dt>
<dd>nazwa kierunku, domyślnie <em>Informatyka</em></dd>

<dt><code>\opiekun</code></dt>
<dd>tytuł naukowy, imię i nazwisko promotora</dd>

<dt><code>\miejsce</code></dt>
<dd>miejsce obrony (opcjonalnie); jeśli nie podano 
zostanie wpisane Gdańsk</dd>

<dt><code>\keywords</code></dt>
<dd>lista słów kluczowych oddzielonych przecinkami</dd>

<dt><code>\abstract</code></dt> 
<dd>streszczenie (środowisko)</dd>

<dt><code>\introduction</code></dt> 
<dd>wstęp</dd>

<dt><code>\summary</code></dt> 
<dd>zakończenie</dd>

<dt><code>\zrodlo</code></dt> 
<dd>źródło, umieszczane pod tabelą i rysunkiem;</dd>
</dl>

## Uwagi

Polecenia `\autor`, `\nralbumu` (ewentualnie
`\email`) można wstawić wielokrotnie jeżeli praca jest
dziełem kilku autorów.

## Przykład szablonu pracy

<pre>% !TEX TS-program = xelatex
% !TEX encoding = UTF-8

\documentclass[brudnopis]{xmgr}

\setmainfont[Mapping=tex-text]{Minion Pro:+onum}
\setsansfont[Mapping=tex-text]{Myriad Pro}

\wersja   {<em>etykieta</em>}

\nazwaszkoly {Uniwersytet Gdański\\Wydział Fizyki, Matematyki i Informatyki}

\author   {<em>imię nazwisko</em>}
\nralbumu {<em>numer</em>}
\email    {<em>imie@inf.ug.edu.pl</em>}

\title    {<em>tytuł pracy</em>}

\kierunek {<em>nazwa kierunku</em>}
\date     {<em>rok obrony</em>}
\miejsce  {<em>miejsce</em>}

\opiekun  {<em>tytuł naukowy imię nazwisko</em>}
\begin{document}

\begin{abstract}... \end{abstract}
\keywords{<em>słowo kluczowe</em>, <em>słowo kluczowe</em>, ... }
\maketitle

\introduction

\chapter{<em>tytuł-rozdziału</em>}

\section{<em>tytuł-podrozdziału</em>}

\section{<em>tytuł-podrozdziału</em>}

\summary

% załączniki (opcjonalnie):
\appendix
\chapter{<em>tytuł-załącznika</em>}

\chapter{<em>tytuł-załącznika</em>}

% literatura (obowiązkowo):
\bibliographystyle{unsrt}
\bibliography{xml}

% spisy tabel i rysunków (jeśli występują w pracy):
\listoftables
\listoffigures

\end{document}
</pre>
