%%File header
\version "2.18.2"


\include "lilypond-book-preamble.ly"

#(define inside-lyluatex #t)
#(set-global-staff-size 20.0)

\header {
    copyright = ""
    tagline = ##f
}
\paper{
    system-count = 0
    
    two-sided = ##t
    line-width = 426.0\pt
    indent = 0\pt
    
    #(define fonts
    (make-pango-font-tree "Calluna"
                          "Latin Modern Sans"
                          "Latin Modern Mono"
                          (/ staff-height pt 20)))

}
\layout{
    



    
}


%%Follows original score
wordsdefaultVA = \lyricmode {
	Ju -- bi -- la -- te! Ju -- bi -- la -- te De -- o om -- nis ter -- ra, ju -- bi -- la -- te om -- nis ter -- ra. Psa -- li -- te in lae -- ti -- ti -- a.
}

voicedefault =   \relative c' {
\set Score.defaultBarType = ""

%  Sample file to test various features of abc2ps
 %  abcm2ps: default M is lowermordent
 %  abcm2ps >= 7.6.0 - definition of '...' (ellipsis) for PostScript
 % %glyph 2026 ellipsis
\time 4/2 \key g \major  \mark "1." g'2  g2 fis g \bar "|"
        \mark "2." g4 a b c8( b) a4 d b a
	\bar "|" \mark "3." g2 d d g \bar "|" \mark "4." b4 c d c8( d) d4 a r4 d~ \bar "|"
	\mark "5." d8 d8 c4 b a8( g) a4 a g2
	\bar ":|." }

\score{
    <<

	\context Staff="default"
	{
	    \voicedefault
	}

	\addlyrics {
 \wordsdefaultVA }
	\addlyrics {
 \wordsdefaultVB }
    >>
	\layout {
	}
	\midi {}
}
