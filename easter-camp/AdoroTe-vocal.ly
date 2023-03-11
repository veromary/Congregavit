\header {
  title = "Adoro te"
  composer = "Dom Stephen Moreno OSB, 1890-1953"
  poet = "St Thomas Aquinas OP, 1225-1274"
}


global = {
  \key g \major

  % verse
  \time 4/4
\tempo "Andante" 4 = 84
  \bar "|."
}

SoloNotes = \relative g' {
  \clef "treble"
\partial 4 d4^\markup { \dynamic "p" SOLO }
  % verse
 \repeat volta 2 { b'4. b8 b4 a |
  g4. g8 g4 fis |
  e4.( d8 e4) g4 |
  d2. r4 |
  d4. e8 d4 a'4 |
d,4.( e8 d4) b'4 \breathe |
e,4 a g fis |
g2( g8) r8 r4 |

  % refrain
d'4.^\markup { \dynamic "f" TUTTI } d8 d4 d |
e2 d2 \breathe |
b4 d d c8( b) |
a2. r4 |
b4. b8 b4 b |
c2 b |
e,4 a g fis |
g2. r4 } g1 \p g \fermata \bar "|."
}

SoloLyrics = \lyricmode {
\set stanza = "1. " Ad -- o -- ro te de -- vo -- te, la -- tens De -- i -- tas,
Quae sub his fi -- gu -- ris ve -- re la -- ti -- tas:
Ti -- bi se cor me -- um to -- tum sub -- ji -- cit,
Qui -- a, te con -- tem -- plans, to -- tum de -- fi -- cit.
}

SecondVerse = \lyricmode {
\skip 1 \set stanza = "2. " O me -- mo -- ri -- a -- le mor -- tis Do -- mi -- ni,
Pa -- nis vi -- vus, vi -- tam prae -- stans ho -- mi -- ni,
Prae -- sta me -- ae men -- ti de te vi -- ve -- re, 
Et te il -- li sem -- per dul -- ce sa -- pe -- re.
}

ThirdVerse = \lyricmode {
\skip 1 \set stanza = "3. " Je -- su, quem ve -- la -- tum nunc as -- pi -- ci -- o,
O -- ro, fi -- at il -- lud, quod tam si -- ti -- o: Ut, te re -- ve -- la -- ta cer -- nens fa -- ci -- e, Vi -- su sim be -- a -- tus tu -- ae glo -- ri -- ae. A -- men.
}

SopranoNotes = \relative c'' {
  \clef "treble"

  % verse
 R4 R1*8 |

  % refrain
 b4. b8 b4 b |
 c2 b \breathe |
 g4 b  b a8( g) |
fis2. r4 |
fis4. fis8 gis4 gis |
a2 g4( fis) |
e4. e8 d4 d |
d2. r4 |
e1 \p d \fermata
}


BassNotes = \relative c' {

  % verse
 R4 R1*8 |


  % refrain
  g'4. g8 g4 g |
  g2 g |
  g4 d b c |
  d2. r4 |
  dis4. dis8 e4 e |
  e4( fis) g( fis) |
  e4 c b a |
  b2. r4
  c1 b
}

rhuppervoice = \relative c' { \partial 4 d4 |
   b'2. a4 g2. fis4 e4. d8 e4 g d2. r4 |
   d4.( \< e8 d4 a') \! d,4.( e8 d4 b') e,( a g fis g2~) g8 d8( \< g b \! |
   <b d>1)( <c e>2 <b d> <g b>4 <b d>2 c8 b a2.) r4 |
   b2~ b c2 b e,4 a g fis g2. r4 |
   g1~ g \fermata
}

rhlowervoice = \relative c' { \partial 4 d4~ \p |
   d2 b4 c d1 c b4. c8 b4 g |
   c1 b4 c \< d e e2 \! d2~ \> d~ d8 \! s4 s8 |
   g1~ \f g g2. a8 g fis2. s4 |
   \stemNeutral fis2 gis e4 fis g fis e2 d4~ d~ d2. s4
   e1 \p d
}

lhuppervoice = \relative c' { \partial 4 r4 |
   g1~ g~ g~ g2. r4 |
   d4 e fis2 g4 a b d c2 b4 a b2~b8 r8 r4 |
   g1~ g2. b4 d2 b4 \showStaffSwitch c \change Staff = "RH"
   \stemDown d2. s4 dis2 e4 d c2 d c b4 a b2. s4
   c1 b
}

lhlowervoice = \relative c { \partial 4 r4 |
   g2._\markup { \bold Man. } a4 b1 c2. e4 g2. r4 |
   fis,( a d2) b4( d g gis a c, d2 g,2~ g8) r8 r4 |
   g1_\markup { \bold Ped. }( c4 e g2~) g r2 |
   \stemNeutral d4.( e8 d4 c b2)( e a, b c4 a d2 g,2.) r4 
   c1( g) \fermata
}

\score {
  <<
    \new ChoirStaff <<
       \new Staff <<
          \new Voice = "SoloVoice" << \global \SoloNotes >>
          \new Lyrics \lyricsto "SoloVoice" \SoloLyrics
          \new Lyrics \lyricsto "SoloVoice" \SecondVerse
          \new Lyrics \lyricsto "SoloVoice" \ThirdVerse
        >>
       \new Staff <<
          \new Voice = "SopranoVoice" << \voiceOne \global \SopranoNotes >>
          \new Voice = "BassVoice" << \voiceTwo \global \BassNotes >>
        >>
    >>
 >>
  \layout {
    \context { \Staff
      % these lines prevent empty staves from being printed
      \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
\midi { }
}

\paper { 
#(set-paper-size "a5")
}

