% ŵ (UTF-8 test character: double-u circumflex)
% “ = 0147 (left formatted quote)
% ” = 0148 (right formatted quote)
% — = 0151 (dash)
% – = 0150 (shorter dash)
% © = 0169 (copyright symbol)
% ® = 0174 (registered copyright symbol)
% ⌜ = u231C
% ⌝ = u231D

\version "2.10.33"
#(ly:set-option 'point-and-click #f)

\paper
{
    indent = 0.0
    line-width = 185 \mm
    %between-system-space = 0.1 \mm
    %between-system-padding = #1
    %ragged-bottom = ##t
    %top-margin = 0.1 \mm
    %bottom-margin = 0.1 \mm
    %foot-separation = 0.1 \mm
    %head-separation = 0.1 \mm
    %before-title-space = 0.1 \mm
    %between-title-space = 0.1 \mm
    %after-title-space = 0.1 \mm
    %paper-height = 32 \cm
    %print-page-number = ##t
    %print-first-page-number = ##t
    %ragged-last-bottom
    %horizontal-shift
    %system-count
    %left-margin
    %paper-width
    %printallheaders
    %systemSeparatorMarkup
}

\header
{
    %dedication = ""
    title = "Hail Queen of Heaven"
    %subtitle = ""
    %subsubtitle = ""
    % poet = \markup{ \italic Text: Dr John Lingard}
    % composer = \markup{ \italic Music: H F Hemy}
    %meter = ""
    %opus = ""
    %arranger = ""
    %instrument = ""
    %piece = \markup{\null \null \null \null \null \null \null \null \null \null \null \null \null \italic Slowly \null \null \null \null \null \note #"4" #1.0 = 70-100}
    %breakbefore
    %copyright = ""
    tagline = ""
}


global =
{
    %\override Staff.TimeSignature #'style = #'()
    \time 3/4
    \key ees \major
    \override Rest #'direction = #'0
    \override MultiMeasureRest #'staff-position = #0
}

sopWords = \lyricmode
{
    \override Score . LyricText #'font-size = #-1
    \override Score . LyricHyphen #'minimum-distance = #1
    \override Score . LyricSpace #'minimum-distance = #0.8
    % \override Score . LyricText #'font-name = #"Gentium"
    % \override Score . LyricText #'self-alignment-X = #-1
    \set stanza = "1. "
    %\set vocalName = "Men/Women/Unison/SATB"
      Hail Queen of heav'n the o -- cean star,
      Guide of the wan -- d'rer here be -- low,
      Thrown on life's surge we claim thy care;
      Save us from per -- il and from woe.
      Mo -- ther of Christ,
      Star of the sea,
      Pray for the wan -- d'rer, 
      pray for me.
}
sopWordsTwo = \lyricmode
{
    \set stanza = "2. "
     O gen -- tle, chaste, and spot -- less Maid,
     We sin -- ners make our prayers through thee;
     Re -- mind thy Son that He has paid
     The price of our in -- i -- qui -- ty
     Vir -- gin most pure,
     Star of the sea,
     Pray for the sin -- ner, pray for me.
}
sopWordsThree = \lyricmode
{
    \set stanza = "3. "
     So -- journ -- ers in this vale of tears,
     To thee, blest ad -- vo -- cate we cry:
     Pi -- ty our sor -- rows, calm our fears,
     And soothe with hope our mi -- se -- ry
     Re -- fuge in grief, Star of the sea,
     Pray for the mourn -- er, pray for me.
}
sopWordsFour = \lyricmode
{
    \set stanza = "3. "
     And while to Him who reigns a -- bove,
     In God -- head One, in Per -- sons Three,
     The Source of life, of grace, of love,
     Ho -- mage we pay on bend -- ed knee;
     Do thou, bright Queen, Star of the sea,
     Pray for thy child -- ren, pray for me.
}
sopWordsFive = \lyricmode
{
    \set stanza = "5. "
}
sopWordsSix = \lyricmode
{
    \set stanza = "6. "
}
sopWordsSeven = \lyricmode
{
    \set stanza = "7. "
}
altoWords = \lyricmode
{

}
tenorWords = \lyricmode
{

}
bassWords = \lyricmode
{

}

\score
{
    \transpose ees c
    <<
	\new Staff
	<<
	    %\set Score.midiInstrument = "Orchestral Strings"
	    %\set Score.midiInstrument = "Choir Aahs"
	    \new Voice = "sopranos"
	    \relative c'' {
		\voiceOne
		\global
		%\override Score.MetronomeMark #'transparent = ##t
		\override Score.MetronomeMark #'stencil = ##f
		\tempo 4 = 120
        \partial 4 bes4 bes( g) bes bes2 ees4 ees( d) c bes2 bes4 bes( aes) g f( g) aes g( bes) g f2
        bes4 bes( g) bes bes2 ees4 ees( d) c bes2 bes4 bes( aes) g f( g) aes g2 f4 ees2.
        f4. g8 aes4 g2. bes4 g c bes2. c4 ees c bes4.( aes8) g4 aes2 f4 ees2.
		\bar "|."
	    }

	    \new Voice = "altos"
	    \relative c'' {
		\voiceTwo
        g4 g( ees) g g2 g4 ees2 ees4 ees2 g4 g( f) ees d( ees) d ees2 ees4 d2
        f4 g( ees) g g2 g4 ees2 ees4 ees2 g4 g( f) ees f( e) f ees2 d4 ees2.
        d4. d8 d4 ees2. g4 ees ees8( f) bes2. ees,4 ees f g f ees ees2 d4 ees2.
	    }

	    \new Lyrics = sopranos { s1 }
	    \new Lyrics = sopranosTwo { s1 }
	    %\new Lyrics = sopranosThree { s1 }
	    \new Lyrics = sopranosFour { s1 }
	    %\new Lyrics = sopranosFive { s1 }
	    %\new Lyrics = sopranosSix { s1 }
	    %\new Lyrics = sopranosSeven { s1 }
	    %\new Lyrics = altos { s1 }
	    %\new Lyrics = tenors { s1 }
	    %\new Lyrics = basses { s1 }
	>>


	\new Staff
	<<
	    \clef bass
	    \new Voice = "tenors"
	    \relative c' {
		\voiceThree
		\global
        ees4 ees( bes) ees ees2 bes4 c( bes) aes g2 g4 g( aes) bes bes2 bes4 bes2 bes4 bes2
        bes4 bes2 ees4 ees2 bes4 c( bes) aes g2 g4 g( aes) bes c( bes) aes bes2 aes4 g2.
        aes4. g8 f4 ees( g bes) ees bes c8( d) ees2( d4) c4 c d ees( bes) bes c2 bes8( aes) g2.
	    }

	    \new Voice = "basses"
	    \relative c {
		\voiceFour 
       ees4 ees2 ees4 ees2 ees4 ees2 ees4 ees2 ees4 ees4 f g aes( g) f
       ees4( g) ees bes2 d4 ees2 ees4 ees2 ees4 ees2 ees4 ees2 ees4
       ees4 f g aes4( g) f bes2 bes,4 ees2. bes4. bes8 bes4 ees2.
       ees4 ees aes g2. aes4 aes aes ees4 d ees aes,2 bes4 ees2.

	    }
	>>
	\context Lyrics = sopranos \lyricsto sopranos \sopWords
	\context Lyrics = sopranosTwo \lyricsto sopranos \sopWordsTwo
	%\context Lyrics = sopranosThree \lyricsto sopranos \sopWordsThree
	\context Lyrics = sopranosFour \lyricsto sopranos \sopWordsFour
	%\context Lyrics = sopranosFive \lyricsto sopranos \sopWordsFive
	%\context Lyrics = sopranosSix \lyricsto sopranos \sopWordsSix
	%\context Lyrics = sopranosSeven \lyricsto sopranos \sopWordsSeven
	%\context Lyrics = altos \lyricsto altos \altoWords
	%\context Lyrics = tenors \lyricsto tenors \tenorWords
	%\context Lyrics = basses \lyricsto basses \bassWords
    >>
	
    \midi { }
    \layout
    {	
	\context
	{
	    \Lyrics
	    \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
	}
    }
}

\markup
{
    \column
    {
	\line{\italic Text: Dr John Lingard}
	\line{\italic Music: Henri Freidrich Hemy (1818-88)}
	%\line{\italic Arrangement: }
	%\line{\italic {Words and Music:} }
	\line{\italic {Tune Name:} Stella}
	\line{\italic {Poetic Meter:} 8888.88}
	\line{\italic Source: The Westminster Hymnal 1912, 101}
        \line{\italic {Original Key:} E flat}
    }
}
