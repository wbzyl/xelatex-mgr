<?xml version='1.0' encoding='iso-8859-2' ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
   "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd" >
 <!--"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">-->
 <!-- $Id:$ -->
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
 <meta http-equiv="content-type" content="text/html; charset=iso-8859-2" />
 <meta name="DC.creator" content="Tomasz Przechlewski" />
 <meta name='DC.date' content='2007-06-07T12:42:28CEST'/>
 <meta name='DC.rights' content='(c) Tomasz Przechlewski'/>
 <meta name="DC.title" content="Przygotowanie pracy licencjackiej/magisterskiej w systemie LaTeX: klasa wimgr"/>
 <title>Przygotowanie pracy licencjackiej/magisterskiej w systemie LaTeX: klasa wimgr</title>
</head>
<body>

<h3 class='main'>Przygotowanie pracy licencjackiej/magisterskiej: 
  klasa <code>wimgr</code></h3>

<p>
 Klasa <code>wimgr</code> umożliwia sprawne i wygodne przygotowanie
 pracy magisterskiej lub licencjackiej zgodnie z wymogami
 obowiązującymi na kierunku Informatyka w systemie LaTeX.
 <i>Klasa jest adaptacją, klasy <a href="http://gnu.univ.gda.pl/~tomasz/prog/tex/wzmgr/wzmgr.html">wzmgr</a>
	 opracowanej przez Tomasza Przechlewskiego dla Wydziału Zarządzania.</i>
</p>

<p>
 Archiwum zawierające klasę + przykładowy dokument: 
 <a href="./wimgr.zip">wimgr.zip</a>.
 Przykładowy dokument w formacie PDF:
 <a href="./wimgr.pdf">wimgr.pdf</a>.
 Różne <a href="http://gnu.univ.gda.pl/~tomasz/prog/tex/wzmgr/wip.html">wskazówki i podpowiedzi</a> dotyczące LaTeXa.
</p>
<!-- ................. -->
<h4>Opcje klasy <code>wimgr</code>:</h4>
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
<dd>wstępna wersja pracy: drukowanie z pojedynczym odstępem
i oznaczanie każdej strony numerem wersji oraz datą;</dd>
<dt><code>xodstep</code></dt><dd>zwiększenie odstępu 
 między wierszami.</dd>
</dl>
<!-- ................. -->
<h4>Dodatkowe polecenia i środowiska zdefiniowane 
w klasie <code>wimgr</code>:</h4>
<dl>

 <dt><code>\UniversityName</code></dt>
 <dd>Nazwa szkoły, drukowana na górze strony tytyłowej 
 (domyślnie <em>Uniwersytet Gdański -- Wydział Zarządzania</em>);
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
<!-- ................. -->
<h4>Uwagi:</h4>
<p>
 Polecenia <code>\autor</code>, <code>\nralbumu</code> (ewentualnie
 <code>\email</code>) można wstawić wielokrotnie jeżeli praca jest
 dziełem kilku autorów.
</p>

<p>Polecenie <code>\oswiadczenie</code> zostało dodane do wersji 1.03
pakietu a polecenie \UniversityName do wersji 1.04.
</p>

<p>
 Klasa wykorzystuje następujące pakiety: <code>graphicx</code>,
 <code>polski</code>, <code>hyperref</code>, <code>url</code>.
</p>
<!-- ................. -->
<h4>Przykładowa struktura pracy:</h4>
<pre>
%&amp; --translate-file=il2-pl
\documentclass[skorowidz,palatino,brudnopis]{wimgr}
\nrwersji {<em>etykieta</em>}

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

% Spisy tabel i rysunków (jeżeli są potrzebne):
\listoftables
\listoffigures

% Skorowidz (opcjonalnie)
\printindex

\end{document}
</pre>

<h4>Zmiany:</h4>
<dl>
<dt>Wersja 1.04 (6/2007)</dt>
<dd>Dodanie polecenia <code>\UniversityName</code>.</dd>
<dt>Wersja 1.03 (6/2005)</dt>
<dd>Dodanie polecenia <code>\oswiadczenie</code>.</dd>
</dl>

</body>
</html>
<!--
Local variables:
 mode: nxml
 time-stamp-start:"name='DC.date' content='"
 time-stamp-end:"'/>"
 time-stamp-line-limit:0
 LocalWords: Przechlewski
 ispell-local-dictionary: "polish"
End:
-->
