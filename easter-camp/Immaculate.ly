\version "2.22.2"

\paper {
  top-margin = 20
}

\header {
  title = "Immaculate Mary"
  composer = "Loosely based on Maria zu Lieben"
  poet = "Anon"
}

melody = \relative c' {
  \clef treble
  \key g \major
  \time 3/4
  \partial 4 d4 g g b g g b a a b8( a) g2 \bar "" \break
  d4 g g b g g b a a b8( a) g2. \bar "||"
}

text = \lyricmode {
\set stanza = "1. " Im -- ma -- cu -- late Ma -- ry,
Thy prais -- es we sing,
Who reign -- est in splen -- dour
With Je -- sus our King.
}

verseTwo = \lyricmode {
\set stanza = "2. " In hea -- ven the bless -- ed
Thy glo -- ry pro -- claim;
On earth we thy child -- ren
In -- voke thy fair name.
}

aves = \lyricmode {
A -- ve, a -- ve, a -- ve Ma -- ri -- a.
A -- ve, a -- ve, Ma -- ri- _ -- a.
}

verseThree = \lyricmode {
\set stanza = "3. " 
Thy name is our pow -- er,
Thy vir -- tues our light,
Thy love is our com -- fort,
Thy plead -- ing our might.
}

verseFour = \lyricmode {
\set stanza = "4. " 
We pray for our mo -- ther,
The Church up -- on earth,
And bless, dear -- est La -- dy,
The land of our birth.
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
    \new Lyrics \lyricsto "one" \verseFour
  >>
  \layout {
      #(layout-set-staff-size 24)
  }
  \midi { }

}

betterAve \relative c'' {
  \clef treble
  \key g \major
  \time 3/4
  c2 c4 b2 b4 a a a d2 b4
  c2 c4 b b b a2 b8( a) g2
\bar "||"  
}

usualAve \relative c'' {
  \clef treble
  \key g \major
  \time 3/4
  \partial 4 g4 c2 c4 b2 b4 a a a d2
b4 c2 c4 b2 b4 a4 a b8( a) g2
\bar "||" 
}
