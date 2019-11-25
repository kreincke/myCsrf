
\version "2.18.2"
% automatically converted by musicxml2ly from easyabc-cadenca3.xml

\header {
    encoder = "abc2xml version 69"
    encodingdate = "2019-11-25"
    title = Title
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative bes' {
    \clef "treble" \key bes \major \time 5/8 | % 1
     <bes d f>4 <c es f>4 <bes es bes'>8 | % 2
    <c es a>4 <a f' a>4 <c es f>8 | % 3
    r8 <f, d' f>8 <es a c>8 <d f bes>4 | % 4
    r8 <es a c>4 <es a c>4 | % 5
    r8 <es a c>8 <c' es f>8 <bes d f>4 | % 6
    r8 <g bes c>8 <es a c>8 <d f bes>4 }

PartPTwoVoiceOne =  \relative bes, {
    \clef "bass" \key bes \major \time 5/8 | % 1
    bes8 ^"T" [ bes'8 ] a8 [ as8 ] g16. ^"S" [ ges32 ] | % 2
    f8 [ es8 ] d8. ^"Dp" [ des16 ] c16. [ a32 ] | % 3
    bes4 ^"T" f'8 bes4 ^"T" | % 4
    r8 f8 c8 f,4 | % 5
    r8 f'8 a,8 bes4 ^"T" \break | % 6
    r8 es8 ^"S6" f8 bes4 ^"T" }

PartPTwoVoiceOneChords =  \chordmode {
    | % 1
    s8 s8 d8:7 s8 s16. s32 | % 2
    d8:7 s8 s8. s16 d16.:7 s32 | % 3
    s4 d8:5 s4 | % 4
    s8 d8:7 s8 s4 | % 5
    s8 d8:7 d8:7 s4 | % 6
    s8 s8 d8:7 }


% The score definition
\score {
    <<
        \new Staff <<
            \set Staff.instrumentName = "Diskant"
            \context Staff << 
                \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
                >>
            >>
        \context ChordNames = "PartPTwoVoiceOneChords" \PartPTwoVoiceOneChords
        \new Staff <<
            \set Staff.instrumentName = "Bass"
            \context Staff << 
                \context Voice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {}
    }

