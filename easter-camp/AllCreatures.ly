\version "2.22.1"

\paper {
  top-margin = 20
}

\header {
  title = "All Creatures of Our God and King"
  composer = "Lasst Uns Erfreuen, Köln 1623"
  poet = "William Henry Draper, 1855-1933"
}

melody = \relative c' {
  \clef treble
  \key d \major
  \time 6/4

  \partial 2 d2 d4 e fis d fis g a1
  d,2 d4 e fis d fis g a1
  d4 cis b2 a d4 cis b2 a r2
  d2 d4 a a g fis g a1
  d2 d4 a a g fis g a1
  g4( fis) e2 d g4( fis) e2 d
  d'4 cis b2 a d4 cis b2 a
  g4 fis e1.
  d1
}

text = \lyricmode {
\set stanza = "1. "  All crea -- tures of our God and King,
Lift up your voice and with us sing
Al -- le -- lu -- ia, al -- le -- lu -- ia,
Thou burn -- ing sun with gold -- en beam,
Thou sil -- ver moon with soft -- er gleam:
O praise Him, O praise Him,
Al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia.
}

verseTwo = \lyricmode {
\set stanza = "2. "  O rush -- ing wind so wild and strong,
White clouds that sail in heaven a -- long,
Al -- le -- lu -- ia, al -- le -- lu -- ia,
New ris -- ing dawn, in praise re -- joice,
You lights of even -- ing, find a voice:
O praise Him, O praise Him,
Al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia.
}

verseThree = \lyricmode {
\set stanza = "3. " Thou flow -- ing wa -- ter, pure and clear,
Make mu -- sic for thy Lord to hear,
Al -- le -- lu -- ia, al -- le -- lu -- ia,
Thou fire so ma -- ster -- ful and bright,
That giv -- est man both warmth and light:
O praise Him, O praise Him,
Al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia.
}


harmonies = \chordmode {
  d4
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "one" \text
    \new Lyrics \lyricsto "one" \verseTwo
    \new Lyrics \lyricsto "one" \verseThree
  >>
  \layout { }
  \midi { }

}

\markup {
\vspace #2
}

\markup {
\fill-line {
    \column {
      \line {\bold "4." Dear mother earth, who day by day}
      \line {Unfoldest blessings on our way,}
      \line {O praise Him, alleluia,}
      \line {The flowers and fruits}
\line{\hspace #3 that in thee grow,}
      \line {Let them his glory also show:}
    }
\hspace #1
    \column {
      \line {\bold "5." Let all things their Creator bless,}
      \line {And worship Him in humbleness,}
      \line {O praise Him, alleluia,}
      \line {Praise, praise the Father,}
\line{\hspace #3 praise the Son,}
      \line {And praise the Spirit, Three in One:}
    }
\hspace #1
  }
}

