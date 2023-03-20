\version "2.22.2"

\paper {
  top-margin = 20
}

\header {
  title = "Bring, all ye dear bought nations"
  composer = "Lasst Uns Erfreuen, Köln 1623"
  poet = "Walter Kirkham Blount, d 1717"
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
  g4 fis e2 d g4 fis e2 d
  d'4 cis b2 a d4 cis b2 a
  g4 fis e1.
  d1
}

text = \lyricmode {
\set stanza = "1. "  Bring, all ye dear -- bought na -- tions, bring
Your rich -- est praise -- s to your King,
Al -- le -- lu -- ia, al -- le -- lu -- ia,
That spot -- less Lamb, who more than due,
Paid for His sheep, and those sheep you,
Al -- le -- lu -- ia, al -- le -- lu -- ia,
Al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia.
}

verseTwo = \lyricmode {
\set stanza = "2. "  The guilt -- less Son, who bought your peace,
And made His Fa -- ther’s an -- ger cease,
Al -- le -- lu -- ia, al -- le -- lu -- ia,
Then, life and death to -- ge -- ther fought,
Each to a strange ex -- treme were brought.
Al -- le -- lu -- ia, al -- le -- lu -- ia,
Al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia.
}

verseThree = \lyricmode {
\set stanza = "3. " 
Life died, but soon re -- vived a -- gain,
And ev -- en death by it was slain.
Al -- le -- lu -- ia, al -- le -- lu -- ia,
Say, hap -- py Mag -- da -- len, oh say,
What didst thou see there by the way?
Al -- le -- lu -- ia, al -- le -- lu -- ia,
Al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia.
}

verseFour = \lyricmode {
\set stanza = "4. " 
“I saw the tomb of my dear Lord,
I saw Him -- self and Him a -- dored,
Al -- le -- lu -- ia, al -- le -- lu -- ia,
I saw the nap -- kin and the sheet,
That bound His head and wrapped His feet.
Al -- le -- lu -- ia, al -- le -- lu -- ia,
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
    \new Voice = "one" { \autoBeamOff \melody }
    \new Lyrics \lyricsto "one" \text
    \new Lyrics \lyricsto "one" \verseTwo
    \new Lyrics \lyricsto "one" \verseThree
    \new Lyrics \lyricsto "one" \verseFour
  >>
  \layout { }
  \midi { }

}

\markup {
  \vspace #2
  \fill-line {
\hspace #1
    \column {
      \line { 5. I heard the angels witness bear, }
      \line { Jesus is ris’n; He is not here; }
      \line { Alleluia, alleluia, }
      \line { Go, tell His followers they shall see, }
      \line { Thine and their hope in Galilee. }
    }
\hspace #1
    \column {
      \line { 6. We, Lord, with faithful hearts and voice, }
      \line { On this Thy rising day rejoice. }
      \line { Alleluia, alleluia, }
      \line { O Thou, whose power o’ercame the grave, }
      \line { By grace and love us sinners save. }
    }
\hspace #1
  }
}


