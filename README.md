# XMGR (adaptacja wimgr v1.04, 12/2007)

Klasa *xmgr.cls* umożliwia sprawne i wygodne przygotowanie w systemie
**XeLaTeX** pracy magisterskiej zgodnie z wymogami obowiązującymi na
kierunku Informatyka.

Klasa jest adaptacją [wzmgr](http://gnu.univ.gda.pl/~tomasz/prog/tex/wzmgr/wzmgr.html)
opracowanej przez Tomasza Przechlewskiego dla Wydziału Zarządzania, UG.

Klasa *xmgr* to zmodyfikowana klasa standardowa *report*
Dodatkowo klasa korzysta z następujących pakietów:

* ifthen
* fancyhdr
* xunicode
* xltxtra
* graphicx
* color
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
<dd>imię oraz nazwisko autora</dd>

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
<dd>źródło, umieszczane pod tabelą i rysunkiem</dd>
</dl>

## FAQ, czyli często zadawane pytania

1\. Polecenia `\autor`, `\nralbumu` (ewentualnie
`\email`) można wstawić wielokrotnie jeżeli praca jest
dziełem kilku autorów.

2\. Aby rozdziały zaczynały się na stronach nieparzystych
dopisujemy opcję *openright*:

    \documentclass[openright]{xmgr}

3\. Listingi programów składamy korzystając z pakietu Konrada Rudolpha
[minted](http://code.google.com/p/minted/downloads/list).
Jak zainstalować pakiet i przykłady są opisane  [dokumentacji](http://code.google.com/p/minted/downloads/detail?name=minted.pdf&can=2&q=).

Kod wpisujemy korzystając ze środowiska _minted_.
Przykładowo kod w języku Ruby wpisujemy w taki sposób:

```ruby
\begin{minted}{ruby}
class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
  end
end
\end{minted}
```

Pracę z fragmentami kodu kompilujemy za pomocą polecenia:

```sh
xelatex -shell-escape magisterka.tex
```

Wcześniej należy odkomentować w pliku _magisterka.tex_ wiersz:

```tex
\usepackage{minted}
```

i zainstalować język Python oraz pakiet [Pygments](http://pygments.org/).

4\. Do składania podziękowań, dydykacji oraz umieszczania w pracy
cytatów można posłużyć się klasą
[epigraph](http://www.tex.ac.uk/tex-archive/help/Catalogue/entries/epigraph.html).

5\. Tekst pracy można złożyć dowolnymi fontami w formacie TTF lub OTF zainstalowanymi na komputerze. 
Przykład pokazujący jak to zrobić umieszczono w komentarzu na początku pliku *magisterka.tex*.
W przykładzie użyto fontów _Minion Pro_ i _Myriad Pro_:

    \setmainfont[Numbers=OldStyle,Mapping=tex-text]{Minion Pro}
    \setsansfont[Numbers=OldStyle,Mapping=tex-text]{Myriad Pro}

Fonty *Minion Pro* oraz *Myriad Pro* są częścią oprogramowania
[Acrobat Reader](http://get.adobe.com/pl/reader/otherversions/).
Jeśli po instalacji *Acrobat Readera* program *XeLaTeX*
nie potrafi ich znaleźć, to możemy je zainstalować samemu.
W Linuksie może to zrobić zwykły użytkownik.
W tym celu w kopiujemy fonty do katalogu *~/.fonts/* i wykonujemy polecenie *fc-cache*:

    mkdir -p ~/.fonts/adobe
    cp ⟨ścieżka do katalogu z fontami⟩/{Minion,Myriad}\*.otf \
    ~/.fonts/adobe fc-cache ~/.fonts

Na koniec sprawdzamy czy fonty zostały poprawnie zainstalowane:

    fc-list | egrep 'Minion|Myriad'
      Minion Pro:style=Bold
      Minion Pro:style=Bold Italic
      Minion Pro:style=Italic
      Minion Pro:style=Regular
      Myriad Pro:style=Bold
      Myriad Pro:style=Bold Italic
      Myriad Pro:style=Italic
      Myriad Pro:style=Regular

## Przykłady szablonów

Plik *magisterka.tex* pokazuje jak korzystać
z klasy *xmgr.cls*.

W katalogu *szablony* umieszczono szablon pracy
korzystającej z *bibtex-a* oraz szablon pracy
używający pakietu *amsrefs*.

Szablony te są też dostępne tutaj:

* [xelatex + bibtex](http://gist.github.com/263713)
* [xelatex + amsrefs](http://gist.github.com/263715)
