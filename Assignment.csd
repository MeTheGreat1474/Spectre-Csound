<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 64
nchnls = 2
;0dbfs = 1

;Treble Clef (G Clef) plays higher notes (C4 and up).
;Bass Clef (F Clef) plays lower notes (around C3 and below)

//simple gen10 pinao likes
instr 1
    amp 	line		10000, p3, 0       ; Amplitude envelope (fade in)
    afreq = cpspch(p4)             ; Convert pch to Hz
    asig oscil amp, afreq, 1       ; Use function table 1 
    outs asig, asig
endin

;lessen the bass clef so x overpower the treble clef
//Bass Clef
instr 2
    amp 	line		5000, p3, 0       ; Amplitude envelope (fade in)
    afreq = cpspch(p4)             ; Convert pch to Hz
    asig oscil amp, afreq, 1       ; Use function table 1 
    outs asig, asig
endin

instr 99
    
endin

</CsInstruments>
<CsScore>

f1 0 4096 10 1                      ; sine
f2 0 4096 10 1 0.5 0.33 0.25 0.2    ; sawtooth (partial)
f3 0 4096 10 1 0 0.33 0 0.2 0 0.14  ; square (partial)


;treble clef
;g c# e, a c# a, b g^# e, b f# d#
;1rest, 1/2rest, g, g, b, c#-c# 1/2, c#, b, g-g1/2, f-f

t 0 128  ; Start time 0, tempo = 120 BPM

;Part #1
; g  c# e
i1 0    1 8.07
i1 +    1 9.00
i1 +    2 9.04

; a c# a
i1 +    1 8.09
i1 +    1 9.01
i1 +    2 8.09

; b g# e
i1 +    1 8.11
i1 +    1 9.08
i1 +    2 9.04

; b f# d#
i1 +    1 8.11
i1 +    1 9.06
i1 +    2 9.03

;Part #2
;1, 1/2 rest
i99 17 1.0 0
i99 + 0.5 0

;g g b
i1 +     .5   8.07    
i1 +     .5   8.07    
i1 +     .5   8.11  

;c#-c#
i1 +     2.5 9.01    

;c# b
i1 +     1   9.01   
i1 +     1   8.11   

;g-g
i1 +     2.0 8.07    

;f-f
i1 +     2.5 8.05

;d d c b
i1 + 1  8.02
i1 + .5 8.02
i1 + 1  8.00
i1 + 1  7.11

;c-c
i1 + 2 8.00

;Part #2
;g g b
i1 +     .5   8.07    
i1 +     .5   8.07    
i1 +     .5   8.11  

;c#-c#
i1 +     2.5 9.01    

;c# b
i1 +     1   9.01   
i1 +     1   8.11   

;g-g
i1 +     2.0 8.07    

;f-f
i1 +     1.5 8.05

;d d-d
i1 + .5  8.02
i1 + 1.5 8.02

;d f
i1 + .5 8.02
i1 + 1.5 8.05

;d e-e
i1 + .5 8.02
i1 + 2 8.04

;Part #3
;g e d# c# b
i1 + .5 8.07
i1 + .5 9.04
i1 + .5 9.03
i1 + .5 9.01
i1 + .5 8.11

;c# b
i1 + 2 9.01
i1 + 2 8.11

;g-g g
i1 + 3.5 8.07
i1 + .5 8.07

;f f a
i1 + 1 8.05
i1 + .5 8.05
i1 + 1.5 8.09

;g c#:e-c#:e
i1 + .5 8.07
i1 62  2.5   9.01
;i1 14     2.5   8.04
i1 62     2.5   8.04


;bass clef
;a  16
i2 16     .5   6.09
i2 +     .5   6.09    
i2 +     .5   6.09 
i2 +     .5   6.09 
i2 +     .5   6.09 
i2 +     .5   6.09 
i2 +     .5   6.09 
i2 +     .5   6.09

i2 +     .5   6.05 
i2 +     .5   6.05    
i2 +     .5   6.05 
i2 +     .5   6.05 
i2 +     .5   6.05 
i2 +     .5   6.05    
i2 +     .5   6.05 
i2 +     .5   6.05

;c
i2 +     .5   7.05
i2 +     .5   7.05
i2 +     .5   7.05
i2 +     .5   7.05
i2 +     .5   7.05
i2 +     .5   7.05
i2 +     .5   7.05
i2 +     .5   7.05

</CsScore>
</CsoundSynthesizer>
























<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>100</x>
 <y>100</y>
 <width>320</width>
 <height>240</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="background">
  <r>240</r>
  <g>240</g>
  <b>240</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
