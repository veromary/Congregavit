\version "2.22.1"
% automatically converted by musicxml2ly from be-joyful.mxl
\pointAndClickOff

\header {
    title =  "Be Joyful Mary"
    composer =  \markup \column {
        \line { "No grāmatas Gesangbuch (1584)"}
        \line { "Johans Laizentrits (1527-86)"} }
    
    encodingsoftware =  "Finale v26.3 for Windows"
    encodingdate =  "2021-10-21"
    copyright =  "2023 - Veronica Brandt - Visit brandt.id.au or kidschant.com"
    }

%#(set-global-staff-size 24.674285714285716)
\paper {
    
    paper-width = 21.01\cm
   paper-height = 29.71\cm
    top-margin = 0.99\cm
    bottom-margin = 0.99\cm
    left-margin = 0.99\cm
    right-margin = 0.99\cm
    between-system-space = 2.22\cm
    page-top-space = 1.3\cm
    }

emphasize = {
  \override Lyrics.LyricText.font-shape = #'italic
}

normal = {
  \revert Lyrics.LyricText.font-shape
  \revert Lyrics.LyricText.font-series
}

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative a'' {
    \clef "treble" \numericTimeSignature\time 4/4 \key f \major %\repeat
%    volta 4 {
%       | % 1
%        a2. \rest _ "1" a2. \rest 
\partial 4
\stemUp f,4 | % 2
        \stemUp f4 \stemUp c'4 \stemUp a4 \stemUp f4 | % 3
        \stemUp g4 \stemUp g4 \stemUp a4 \stemUp c4 | % 4
        \stemUp bes4 \stemUp a4 \stemUp g2 \break | % 5
        \stemUp f2.  bes4 | % 6
        \stemUp bes4 \stemUp bes4 \stemUp a4 \stemUp g4 | % 7
        \stemUp a4 \stemUp b4 \stemUp c4 \stemUp bes4 \break | % 8
        \stemUp a4 \stemUp g4 \stemUp f4 \stemUp c'4 | % 9
        \stemUp d4 \stemUp c4 \stemUp bes4 \stemUp a4 | \barNumberCheck
        #10
        \stemUp g2 \stemUp f4 }
%    }

PartPOneVoiceOneLyricsOne =  \lyricmode {\set ignoreMelismata = ##t
    Be joy -- ful, Ma -- ry, heav'n -- ly Queen, \skip1 \skip1 \skip1 \skip1 \skip1 
Now let thine eyes with glad -- ness beam,
Al -- le -- lu -- ia!     }

PartPOneVoiceOneLyricsTwo =  \lyricmode {\set ignoreMelismata = ##t
   Whom thou didst bear by hea -- ven's grace, Gau -- de Ma -- ri -- a!
Did all our guilt and sin ef -- face, Al -- le -- lu -- ia! Lae -- ta -- re, O Ma -- ri -- a! 
    }

PartPOneVoiceOneLyricsThree =  \lyricmode {\set ignoreMelismata = ##t
The Lord has ri -- sen from the dead, \emphasize Be joy -- ful Ma -- ry! \normal
He rose with might as He had said, Al -- le -- lu -- ia, \emphasize Re -- joice, re -- joice, O Ma -- ry! \normal
    }

PartPOneVoiceOneLyricsFour =  \lyricmode {\set ignoreMelismata = ##t
O pray to God, thou Vir -- gin fair, \skip1 \skip1 \skip1 \skip1 \skip1
That he our souls to hea -- ven bear,
Al -- le -- lu -- ia!
    }

PartPOneVoiceTwo =  \relative c' {
    \clef "treble" \numericTimeSignature\time 4/4 \key f \major %\repeat
%    volta 4 {
%        s1. 
\stemDown c4 | % 2
        \stemDown d4 \stemDown c4 \stemDown c4 \stemDown c4 | % 3
        \stemDown d4 \stemDown c4 \stemDown c4 \stemDown c4 | % 4
        \stemDown d4 \stemDown c4 \stemDown bes4 ( \stemDown c4 ) \break
        | % 5
        \stemDown c2. f4 | % 6
        \stemDown f4 \stemDown e4 \stemDown f4 \stemDown e4 | % 7
        \stemDown f4 \stemDown g4 \stemDown g4 \stemDown e4 \break | % 8
        \stemDown f4 \stemDown e4 \stemDown f4 \stemDown f4 | % 9
        \stemDown f4 \stemDown f4 \stemDown f4 \stemDown f4 \stemDown f4( e4)
        \stemDown c4 }
%    }

%PartPOneVoiceTwoLyricsTwo =  \lyricmode {\set ignoreMelismata =
%    ##t\skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
%    \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
%    \skip1 \skip1 "ē" --\skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
%    \skip1 \skip1 \skip1 \skip1 \skip1
%    }

%PartPOneVoiceTwoLyricsFour =  \lyricmode {\set ignoreMelismata =
%    ##t\skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
%    \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
%    \skip1 \skip1 "ūs" \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
%    \skip1 \skip1 \skip1 \skip1 \skip1
%    }

PartPOneVoiceThree =  \relative c' {
    \clef "bass" \numericTimeSignature\time 4/4 \key f \major %\repeat
%    volta 4 {
%        | % 1
%        c2. \rest c2. \rest 
\stemDown f,8 _> [ \stemDown e8 ] | % 2
        \stemUp a4 \stemUp g4 \stemUp f4 \stemUp f4 | % 3
        \stemUp f4 \stemUp e4 \stemUp f4 \stemUp f4 | % 4
        \stemUp f4 \stemUp f4 \stemUp f4 ( \stemUp g4 ) \break | % 5
        \stemUp a2. d4 | % 6
        \stemUp d4 \stemUp c4 \stemUp c4 \stemUp c4 | % 7
        \stemUp c4 \stemUp d4 \stemUp c4 \stemUp c4 \break | % 8
        \stemUp c4 \stemUp bes4 \stemUp a4 \stemUp c4 | % 9
        \stemUp bes4 \stemUp a4 \stemUp bes4 \stemUp c4 |
        \barNumberCheck #10
        \stemUp d4 ( \stemUp c8 [ \stemUp bes8 ) ] \stemUp a4 }
%    }

PartPOneVoiceFour =  \relative a {
    \clef "bass" \numericTimeSignature\time 4/4 \key f \major %\repeat
%    volta 4 {
%        s1. 
\stemUp a4 | % 2
        \stemDown d,4 \stemDown e4 \stemDown f4 \stemDown a,4 | % 3
        \stemDown bes4 \stemDown c4 \stemDown f4 \stemDown a,4 | % 4
        \stemDown bes4 \stemDown c4 \stemDown d4 ( \stemDown e4 ) \break
        | % 5
        \stemDown f2. f4 | % 6
        \stemDown g4 \stemDown g4 \stemDown f4 \stemDown c4 | % 7
        \stemDown f4 \stemDown f4 \stemDown e4 \stemDown g4 \break | % 8
        \stemDown f4 \stemDown c4 \stemDown d4 \stemDown a4 | % 9
        \stemDown bes4 \stemDown c4 \stemDown d4 \stemDown f8 [
        \stemDown a,8 ] | \barNumberCheck #10
        \stemDown bes4 ( \stemDown c4 ) \stemDown f4 }
 %   }


% The score definition
\score {
    <<
        
        \new PianoStaff
        <<
            
            \context Staff = "1" << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceOne" {  \voiceOne \PartPOneVoiceOne }
                \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "1." \PartPOneVoiceOneLyricsOne }
                \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "2." \PartPOneVoiceOneLyricsTwo }
                \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "3." \PartPOneVoiceOneLyricsThree }
                \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "4." \PartPOneVoiceOneLyricsFour }
                \context Voice = "PartPOneVoiceTwo" {  \voiceTwo \PartPOneVoiceTwo }
                %\new Lyrics \lyricsto "PartPOneVoiceTwo" { \set stanza = "1." \PartPOneVoiceTwoLyricsTwo }
                %\new Lyrics \lyricsto "PartPOneVoiceTwo" { \set stanza = "2." \PartPOneVoiceTwoLyricsFour }
                >> \context Staff = "2" <<
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceThree" {  \voiceOne \PartPOneVoiceThree }
                \context Voice = "PartPOneVoiceFour" {  \voiceTwo \PartPOneVoiceFour }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 80 }
    }

