# XMGR (adaptacja wimgr v1.04, 12/2007)

## Przygotowanie pracy licencjackiej/magisterskiej
   klasa **xmgr*

<p>
 Klasa <code>wimgr</code> umoĹźliwia sprawne iÂ wygodne przygotowanie
 pracy magisterskiej lub licencjackiej zgodnie zÂ wymogami
 obowiÄzujÄcymi na kierunku Informatyka wÂ systemie LaTeX.
 <i>Klasa jest adaptacjÄ, klasy <a href="http://gnu.univ.gda.pl/~tomasz/prog/tex/wzmgr/wzmgr.html">wzmgr</a>
	 opracowanej przez Tomasza Przechlewskiego dla WydziaĹu ZarzÄdzania.</i>
</p>

<p>
 Archiwum zawierajÄce klasÄ + przykĹadowy dokument: 
 <a href="./wimgr.zip">wimgr.zip</a>.
 PrzykĹadowy dokument wÂ formacie PDF:
 <a href="./wimgr.pdf">wimgr.pdf</a>.
 RĂłĹźne <a href="http://gnu.univ.gda.pl/~tomasz/prog/tex/wzmgr/wip.html">wskazĂłwki iÂ podpowiedzi</a> dotyczÄce LaTeXa.
</p>
<!-- ................. -->
<h4>Opcje klasy <code>wimgr</code>:</h4>
<dl>
<dt><code>magisterska</code></dt>
<dd>praca magisterska (wartoĹÄ domyĹlna);</dd>

<dt><code>licencjacka</code></dt>
<dd>praca licencjacka;</dd>

<dt><code>skorowidz</code></dt>
<dd>praca bÄdzie zawieraĹa skorowidz;</dd>

<dt><code>palatino</code></dt>
<dd>skĹad krojem QuasiPalladio;</dd>
<dt><code>brudnopis</code></dt>
<dd>wstÄpna wersja pracy: drukowanie zÂ pojedynczym odstÄpem
iÂ oznaczanie kaĹźdej strony numerem wersji oraz datÄ;</dd>
<dt><code>xodstep</code></dt><dd>zwiÄkszenie odstÄpu 
 miÄdzy wierszami.</dd>
</dl>
<!-- ................. -->
<h4>Dodatkowe polecenia iÂ Ĺrodowiska zdefiniowane 
wÂ klasie <code>wimgr</code>:</h4>
<dl>

 <dt><code>\UniversityName</code></dt>
 <dd>Nazwa szkoĹy, drukowana na gĂłrze strony tytyĹowej 
 (domyĹlnie <em>Uniwersytet GdaĹski -- WydziaĹ ZarzÄdzania</em>);
 </dd>

 <dt><code>\oswiadczenie</code></dt>
 <dd>tekst oĹwiadczenia oÂ samodzielnym wykonaniu pracy, okreĹlony
 wÂ piĹmie okĂłlnym Rektora UG zÂ dnia 13Â grudniaÂ 2004 (naleĹźy
 umieĹciÄ na koĹcu pracy, tj.Â przed <code>\end{document}</code>);</dd>

 <dt><code>\autor</code></dt>
 <dd>imiÄ oraz nazwisko autora;</dd>
 <dt><code>\nralbumu</code></dt>
 <dd>numer albumu;</dd>
 <dt><code>\email</code></dt> 
 <dd>adres email autora (opcjonalnie);</dd>
 <dt><code>\kierunek</code></dt>
 <dd>nazwa kierunku, np. Informatyka Ekonomiczna;</dd>
 <dt><code>\opiekun</code></dt>
 <dd>tytuĹ naukowy, imiÄ iÂ nazwisko promotora;</dd>
 <dt><code>\miejsce</code></dt>
 <dd>miejsce obrony (opcjonalnie), jeĹźeli nie podano 
   zostanie wpisany Sopot;</dd>
 <dt><code>\keywords</code></dt>
 <dd>lista sĹĂłw kluczowych (oddzielonych przecinkami);</dd>
 <dt><code>abstract</code></dt> 
 <dd>streszczenie (Ĺrodowisko);</dd>
 <dt><code>\introduction</code></dt> 
 <dd>wstÄp;</dd>
 <dt><code>\summary</code></dt> 
 <dd>zakoĹczenie;</dd>
 <dt><code>\source</code></dt> 
 <dd>ĹşrĂłdĹo, umieszczane pod tabelÄ iÂ rysunkiem;</dd>
 <dt><code>\nrwersji</code></dt> 
 <dd>etykieta wersji dokumentu.</dd>
</dl>
<!-- ................. -->
<h4>Uwagi:</h4>
<p>
 Polecenia <code>\autor</code>, <code>\nralbumu</code> (ewentualnie
 <code>\email</code>) moĹźna wstawiÄ wielokrotnie jeĹźeli praca jest
 dzieĹem kilku autorĂłw.
</p>

<p>Polecenie <code>\oswiadczenie</code> zostaĹo dodane do wersji 1.03
pakietu aÂ polecenie \UniversityName do wersji 1.04.
</p>

<p>
 Klasa wykorzystuje nastÄpujÄce pakiety: <code>graphicx</code>,
 <code>polski</code>, <code>hyperref</code>, <code>url</code>.
</p>
<!-- ................. -->
<h4>PrzykĹadowa struktura pracy:</h4>
<pre>
%&amp; --translate-file=il2-pl
\documentclass[skorowidz,palatino,brudnopis]{wimgr}
\nrwersji {<em>etykieta</em>}

\UniversityName {Nazwa-SzkoĹy}

\author   {<em>imiÄ1 nazwisko1</em>}
\nralbumu {<em>numer1</em>}
\email    {<em>email1@gnu.univ.gda.pl</em>}

\author   {<em>imiÄ2 nazwisko2</em>}
\nralbumu {<em>numer2</em>}

\title    {<em>tytuĹ-pracy</em>}

\kierunek {<em>nazwa-kierunku</em>}
\date     {<em>rok-obrony</em>}
\miejsce  {<em>miejsce</em>}

\opiekun  {<em>tytuĹ-naukowy imiÄ nazwisko</em>}
\begin{document}

\begin{abstract}... \end{abstract}
\keywords{<em>sĹowo-kluczowe</em>, <em>sĹowo-kluczowe</em>, ... }
\maketitle
% --- poczÄtek pracy ---
% WstÄp
\introduction
...

\chapter{<em>tytuĹ-rozdziaĹu</em>}
....
    
\section{<em>tytuĹ-podrozdziaĹu</em>}
...
\section{<em>tytuĹ-podrozdziaĹu</em>}
...
...
% ZakoĹczenie
\summary
...

% ZaĹÄczniki (opcjonalnie):
\appendix
\chapter{<em>tytuĹ-zaĹÄcznika</em>}
...
\chapter{<em>tytuĹ-zaĹÄcznika</em>}
...

% Literatura:
\begin{thebibliography}{99}
...
\end{thebibliography}

% Spisy tabel i rysunkĂłw (jeĹźeli sÄ potrzebne):
\listoftables
\listoffigures

% Skorowidz (opcjonalnie)
\printindex

\end{document}
</pre>

<h4>Zmiany:</h4>
<dl>

<dd>Dodanie polecenia <code>\UniversityName</code>.</dd>
<dt>Wersja 1.03 (6/2005)</dt>
<dd>Dodanie polecenia <code>\oswiadczenie</code>.</dd>
</dl>
