\version "2.18.0"
\paper {
 system-count = #5
 top-margin = 20
}
\header {
	editor = "Padre Giuseppe Baini (1775 - 1844)"
        composer = "Claudio Casciolini (1697 - 1760)"
	crossRefNumber = "1"
	footnotes = ""
	tagline = "Veronica Brandt 2015 - from an abc score by John Rickert 2012"
	title = "Panis Angelicus"
}
wordsBVA = \lyricmode {
Pa -- nis an -- ge -- li -- cus fit pa -- nis ho -- mi -- num, fit pa -- nis 
ho -- mi -- num: Dat pa -- nis cae -- li -- cus fi -- gu -- ris ter -- mi -- num,  
fi -- gu -- ris ter -- mi -- num. O res mi -- ra -- bi -- lis,  
o res mi -- ra -- bi -- lis, man -- du -- cat Do -- mi -- num, man -- du -- cat  
Do -- mi -- num pau -- per, ser -- vus, pau -- per ser -- vus et  
hu -- mi -- lis, et hu -- mi -- lis, et hu -- mi -- lis.  
}
wordsBVB = \lyricmode {
Te tri -- na De -- i -- tas u -- na -- que po -- sci -- mus, u -- na -- que 
po -- sci -- mus: Sic nos tu vi -- si -- ta si -- cut Te col -- li -- mus,  
si -- cut Te co -- li -- mus. Per tu -- as se -- mi -- tas  
per tu -- as se -- mi -- tas duc nos quo ten -- di -- mus, duc nos quo  
ten -- di -- mus ad lu -- cem, ad lu -- cem quam _ in --  
ha -- bi -- tas, in -- ha -- bi -- tas, in -- ha -- bi -- tas.  
}
voiceB =  {
\set Score.defaultBarType = ""
\set Score.automaticBars = ##f
\clef treble
 g'2\p\<\(    fis'4    g'4    \bar "|"
 a'4.\>    a'8    a'4\)  \breathe  b'4\!    \bar "|" 
 g'2    g'2    \bar "|" 
 g'4    fis'4    g'4 \breathe   a'4    \bar "|"  
 b'2    a'2  \bar "|"  
 g'4. g'8    a'2    \bar "|"  
 r4   a'4    a'4    b'4    \bar "|"  
\time 3/4 g'4. g'8    g'4    \bar "|"  
 g'4  g'4    a'4    \bar "|"  
 fis'4. fis'8    fis'4  \bar "|" 
 g'4    g'4    b'4    \bar "|"  
\time 4/4 a'4.    a'8    b'2  \bar "|"  
 r4   b'4\mf\(    a'4    b'4    \bar "|"  
 a'4.    a'8    a'2\)  \bar "|"   
 r4   g'4    fis'4    g'4    \bar "|"  
\time 3/4 fis'4.    fis'8    fis'4 \breathe   \bar "|"   
 fis'4\(    g'4    a'4    \bar "|"  
 b'4.    b'8\<    a'4\) \breathe    \bar "|"  
 a'4  b'4  b'4\!    \bar "|"  
 g'4.    g'8    g'4    \bar "|"  
 b'2\(    b'4    \bar "|"   
a'2    a'4\) \breathe    \bar "|"  
 c''2    c''4    \bar "|"  
\time 4/4 b'4.(   a'8)  g'4  a'4  \bar "|"  
 fis'4.    fis'8    g'4 \breathe   b'4    \bar "|"  
 b'4    a'4    b'2 \bar "|"  
 b'2\p\>    a'4. (   g'8  \bar "|"  
 fis'4.  -)   fis'8  gis'2\fermata\! \bar "||"
}
voiceC =  {
\clef "treble"
 % for MIDI reasons
 e'2    dis'4    e'4    \bar "|"   fis'4.    fis'8    fis'4 \breathe   g'4    \bar "|"  
 e'2    d'2    \bar "|"   c'4.    c'8    d'4 \breathe   fis'4    \bar "|"   g'2    d'2  
\bar "|"   e'4.    e'8    fis'2    \bar "|"  
 r4   fis'4    fis'4    g'4    
\bar "|"   e'4.    e'8    e'4    \bar "|"   e'4    e'4    fis'4    \bar "|"   
dis'4.    dis'8    dis'4    \bar "|"   e'4    e'4    g'4    \bar "|"   g'4    
fis'4    g'2    \bar "|"  
 r4   g'4  d'4    g'4    \bar "|"   fis'4.    fis'8 
   fis'2  \bar "|"  
 r4   e'4\p    b4    e'4    \bar "|"   dis'4.    dis'8    
dis'4  \breathe  \bar "|"   dis'4    e'4    fis'4    \bar "|"   g'4.    g'8    fis'4   \breathe
\bar "|"   fis'4    g'4    g'4    \bar "|"   e'4.    e'8    d'4    \bar "|"   
g'2    g'4    \bar "|"   fis'2    fis'4  \breathe  \bar "|"   a'2    a'4    \bar "|"   
g'4. (   fis'8  -)   e'4    e'4    \bar "|"   e'4    dis'4    e'4 \breathe   g'4  
\bar "|"   e'4.    e'8    dis'2  \bar "|"   e'2    c'8 (   d'8    e'4 
\bar "|"   e'4  -)   dis'4  e'2
}
voiceD =  {
\clef "bass"
 e''2\(    b'4    e''4    \bar "|"   d''4.    d''8    d''4\) \breathe    b'4    \bar "|"   
c''2    b'2    \bar "|"   a'4.    a'8    g'4  \breathe  d''4    \bar "|"   g''2    
fis''2  \bar "|"   e''4.    e''8    d''2    \bar "|"   r4   d''4    d''4    b'4 
   \bar "|"   c''4.    c''8    c''4    \bar "|"   c''4    c''4    a'4    
\bar "|"   b'4.    b'8    b'4    \bar "|"   e''4    c''4    g'4    \bar "|"   
d''4.    d''8    g'2    \bar "|"  
 r4   g''4    fis''4    g''4    \bar "|"   
d''4.    d''8    d''2  \bar "|"  
 r4   e''4    dis''4    e''4    \bar "|"   
b'4.    b'8    b'4  \breathe  \bar "|"   b'4    e''4    d''4    \bar "|"   g''4.    
g''8    d''4  \breathe  \bar "|"   d''4    b'4    b'4    \bar "|"   c''4.    c''8    
b'4    \bar "|"   g'4.\( (   a'8  -)   b'8 (   c''8  -)   \bar "|"   d''2    d''4\) 
 \breathe  \bar "|"   a'4.\( (   b'8  -)   c''8 (   d''8\)  -) \bar "|"   e''2    e''4    
a'4    \bar "|"   b'4.    b'8    e'4 \breathe    e''4    \bar "|"   c''4.    c''8    b'2 
   \bar "|"   g'2\(    a'2 (   \bar "|"   b'4.) b'8 e'2\)\fermata 
}
voicedefault =  {
\set Score.defaultBarType = ""

 %  Time
 \time 4/4 %  Tempo
 % %staves [(1 2) 3]
 %  Key 
 \key e \minor %  Parentheses mean to tie the notes together

}

\score{
\transpose g a
 \new ChoirStaff
    <<
     \new Staff = "troubles" <<
      \set Staff.midiInstrument = #"choir aahs"
        \new Voice = "sopranos" \with {
midiMinimumVolume = #0.7
midiMaximumVolume = #1.0
} {
            \voiceOne
	    \voicedefault
	    \voiceB 
	}
        \new Voice = "altos"  \with {
midiMinimumVolume = #0.7
midiMaximumVolume = #1.0
}{
            \voiceTwo
	    \voicedefault
	    \voiceC 
	}
      >>
      \new Lyrics = "altos"
      \new Lyrics = "nextverse"
     \new Staff = "bottoms" <<
      \set Staff.midiInstrument = #"choir aahs"
       \new Voice = "deeps"  \with {
midiMinimumVolume = #0.7
midiMaximumVolume = #1.0
}{
	    \voicedefault
\transpose c'' c {
	    \voiceD } 
	}
     >>
  \context Lyrics = "altos" \lyricsto "altos" \wordsBVA
  \context Lyrics = "nextverse" \lyricsto "altos" \wordsBVB
    >>
	\layout {
	}
	\midi {
         \context {
           \Staff
           \remove "Staff_performer"
         }
         \context {
           \Voice
           \consists "Staff_performer"
         }
        \tempo 4 = 80
        }
}
