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
{wordsdefaultVA = \lyricmode {
	Ju -- bi -- la -- te! Ju -- bi -- la -- te De -- o om -- nis ter -- ra, ju -- bi -- la -- te om -- nis ter -- ra. Psa -- li -- te in lae -- ti -- ti -- a.
}}