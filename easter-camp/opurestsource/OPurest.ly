\version "2.12.3"

\paper {
  top-margin = 40
        #(set-paper-size "a4")
	#(define fonts
	 (make-pango-font-tree "LinuxLibertineO"
	 		       "Lucida Sans"
			       "Nimbus Mono"
			       (/ 20 20 )))
        oddFooterMarkup = \markup {
          \fill-line { 
              \line { \smaller A simplified arrangement by Veronica Brandt 2023 }
              \line { \italic http://brandt.id.au }
        }}
}


#(set-global-staff-size 20)

\header {
        title = "O Purest of Creatures"
        poet = "Fr F Faber"
        composer = "Paderborn Gesangbuch 1765"
        subtitle = "Maria zu lieben"
}

global = {
       \key f \major
       \time 3/4
       \set Staff.midiInstrument = "reed organ"
}

melody = \relative c' {
	\clef treble
        \tempo 4 = 116
        \partial 4 c4 f f g a a bes8( d) c( bes) a4 g f2
        c4 f f g a a bes8( d) c( bes) a4 g f2
        a8( bes) c4 a c bes8( a) g4 bes a f a g2
        c,4 f f g a a bes8( d) c( bes) a4 g f2 \bar "||"  
        } 	

bass = \relative c {
       \clef bass
       c4 a f c' f f d8( bes8) a(bes) c4 c f,2
       c'4 a f c' f f d8( bes) a( bes) c4 c f,2
       f'8( g) a4 f a g c, e f a f c2
       e4 f a, c f f d8( bes) a( bes) c4 c f,2
       }

firstVerse = \lyricmode {
\set stanza = "1. " O pur -- est of crea -- tures, sweet Mo -- ther, sweet maid!
       The one spot -- less womb where -- in Je -- sus was laid!
       Dark night hath come down on us Mo -- ther and we
       Look our for thy shin -- ing Sweet Star of the Sea!
}

secondVerse = \lyricmode {
\set stanza = "2. " Deep night hath come down on this rough -- spo -- ken world.
And_the ban -- ners of dark -- ness are bold -- ly un -- furled;
And_the temp -- est -- tossed Church all her eyes are on thee.
They look to thy shin -- ing, sweet Star of the Sea.
}

thirdVerse = \lyricmode {
\set stanza = "3. " He gazed on thy soul, it was spot -- less and fair;
For_the em -- pire of sin, it had nev -- er been there;
None ever had owned thee, dear Mo -- ther, but He,
And He blessed thy clear shin -- ing, sweet Star of the Sea.
}

\score {
	\new GrandStaff <<
	\new Staff = melody { \new Voice = "singer" \global \melody }
	\new Lyrics \lyricsto "singer" \firstVerse
	\new Lyrics \lyricsto "singer" \secondVerse
	\new Lyrics \lyricsto "singer" \thirdVerse
	\new Staff = bass { \global \bass }
	>>
	\layout{
            indent = 0
            \context {
               \GrandStaff
               \accepts "Lyrics"
             }
            \context {
               \Lyrics
               \consists "Bar_engraver"
             }
	}
	\midi { 
               }

}

\markup {
\fill-line {
\hspace #1
\bold "4."
\column {
\line{Earth gave Him one lodging;}
\line{\hspace #2  ’twas deep in thy breast,}
\line{And God found a home}
\line{\hspace #2  where the sinner finds rest;}
\line{His home and His hiding-place,}
\line{\hspace #2  both were in thee;}
\line{He was won by thy shining,}
\line{\hspace #2  sweet Star of the Sea.}
}
\hspace #2
\bold "5."
\column {
\line{Oh, blissful and calm was}
\line{\hspace #2 the wonderful rest}
\line{That thou gavest thy God}
\line{\hspace #2 in thy virginal breast;}
\line{For the heaven He left He}
\line{\hspace #2 found heaven in thee,}
\line{And He shone in thy shining,}
\line{\hspace #2 sweet Star of the Sea.}
}
\hspace #4
\bold " "
}

}
