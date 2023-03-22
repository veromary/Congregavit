\version "2.22.2"

\paper {
  top-margin = 20
}

\header {
  title = "O Purest of Creatures"
  composer = "Maria zu Lieben"
  poet = "Fr Frederick Faber"
}


melody = \relative c' {
  \clef treble
  \key g \major
  \time 3/4

  \partial 4 d4 g g a b b c8( e) d( c) b4 a g2
  d4 g g a b b c8( e) d( c) b4 a g2
  b8( c) d4 b d c8( b) a4 c b g b a2
  d4 g g a b b c8( e) d( c) b4 a g2
  
}

text = \lyricmode {
O pur -- est of crea -- tures, sweet Mo -- ther, sweet Maid;
The one spot -- less womb where -- in Je -- sus was laid.
Dark night hath come down on us, Mo -- ther, and we
Look out for thy shin -- ing, sweet Star of the Sea.
}


\score {
  <<
    \new Voice = "one" { \autoBeamOff \melody }
    \new Lyrics \lyricsto "one" \text
  >>
  \layout { }
  \midi { }
}

