<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 64
nchnls = 2
;0dbfs = 1

;c# d# f# g#
;Treble Clef (G Clef) plays higher notes (C4 and up).
;Bass Clef (F Clef) plays lower notes (around C3 and below)
;g#	f#		d#		c#

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

t	0	128

;part #4
;e		d#		c#		b
i1	2		.5		9.04
i1	+		.5		9.03
i1	+		.5		9.01
i1	+		.5		8.11

;c#	b
i1	+		2		9.01
i1	+		2		8.11

;g#
i1	+		2.5	8.08

;part #5----------------------------------------------------

;g#		f#
i1	+		.5		8.08
i1	+		1		8.06

;1/2rest		e		d#		b		c#
i1	12.5		.5		8.04
i1	+		1.5	8.03
i1	+		.5		7.11
i1	+		1.5	8.01

;part #6---------------------------------------------------

;1rest	g#
i1	18		.5		8.08
i1	+		.5		8.08
i1	+		.5		8.08
i1	+		1		8.08			

;f#	e		e		b	b
i1	+		.5		8.06
i1	+		.5		8.04
i1	+		1.5	8.04
i1	+		.5		8.11
i1	+		3		8.11

;e	e
i1	+		.5		8.04
i1	+		.5		8.04

;f#		e	f#		a	g#
i1	+		1		8.06
i1	+		.5		8.04
i1	+		1.5	8.06	
i1	+		.5		8.09
i1	+		.5		8.08
	
;part #6 SHORT VER------------------------------------------

;2rest	g#
i1	34		.5		8.08
i1	+		.5		8.08
i1	+		.5		8.08
i1	+		1		8.08			

;f#	e		e		b	b
i1	+		.5		8.06
i1	+		.5		8.04
i1	+		1.5	8.04
i1	+		.5		8.11
i1	+		3		8.11

;part #5 diff end

;g#		f#
i1	+		.5		8.08
i1	+		1		8.06

;1/2rest		e		d#		b		c#	c#(+1)
i1	44.5	.5		8.04
i1	+		1.5	8.03
i1	+		.5		7.11
i1	+		1.5	8.01
i1	+^		1		9.01

;part #7--------------------------------------------------

;e	g#		e(+2)		d# c#	b	c#
i1	49		.5		9.04
i1	+		.5		9.08	
i1	+		1		10.04
i1	+		.25	10.03
i1	+		.25	10.01
i1	+		.25	9.11
i1	+		.25	10.01

;c#		e(+2)	c#		a
i1	+		1		10.01
i1	+		.5		10.04
i1	+		.5		10.01
i1	+		2		9.09

;g#	g#	f#		e	c#	g#	f#	e
i1	+		1		9.08
i1	+		.5		9.08
i1	+		.5		9.06
i1	+		1		9.04
i1	+		.25	10.01
i1	+		.25	9.08
i1	+		.25	9.06
i1	+		.25	9.04





;part #4 bass clef

i2	0		.5		7.01
i2	+		.5		7.01
i2	+		.5		7.01
i2	+		.5		7.01
i2	+		.5		7.01
i2	+		.5		7.01
i2	+		.5		7.01
i2	+		.5		7.01

i2	+		.5		6.09
i2	+		.5		6.09
i2	+		.5		6.09
i2	+		.5		6.09
i2	+		.5		6.09
i2	+		.5		6.09
i2	+		.5		6.09
i2	+		.5		6.09

i2	+		.5		7.04
i2	+		.5		7.04
i2	+		.5		7.04
i2	+		.5		7.04
i2	+		.5		7.04
i2	+		.5		7.04
i2	+		.5		7.04
i2	+		.5		7.04

;part #5 bass clef

i2	+		.5		6.11		
i2	+		.5		6.11		
i2	+		.5		6.11		
i2	+		.5		6.11		
i2	+		.5		6.11		
i2	+		.5		6.11		
i2	+		.5		6.11		
i2	+		.5		6.11	

;part #6 bass clef

i2	+		.5		7.01
i2	+		.5		7.01
i2	+		.5		7.01
i2	+		.5		7.01
i2	+		.5		7.01
i2	+		.5		7.01
i2	+		.5		7.01
i2	+		.5		7.01

i2	+		.5		6.09
i2	+		.5		6.09
i2	+		.5		6.09
i2	+		.5		6.09
i2	+		.5		6.09
i2	+		.5		6.09
i2	+		.5		6.09
i2	+		.5		6.09

i2	+		.5		7.04
i2	+		.5		7.04
i2	+		.5		7.04
i2	+		.5		7.04
i2	+		.5		7.04
i2	+		.5		7.04
i2	+		.5		7.04
i2	+		.5		7.04

i2	+		.5		6.11		
i2	+		.5		6.11		
i2	+		.5		6.11		
i2	+		.5		6.11		
i2	+		.5		6.11		
i2	+		.5		6.11		
i2	+		.5		6.11		
i2	+		.5		6.11	

;part #6 SHORT VER bass clef

i2	+		.5		7.01
i2	+		.5		7.01
i2	+		.5		7.01
i2	+		.5		7.01
i2	+		.5		7.01
i2	+		.5		7.01
i2	+		.5		7.01
i2	+		.5		7.01

i2	+		.5		6.09
i2	+		.5		6.09
i2	+		.5		6.09
i2	+		.5		6.09
i2	+		.5		6.09
i2	+		.5		6.09
i2	+		.5		6.09
i2	+		.5		6.09

;part #5 bass clef diff end

i2	+		.5		6.11		
i2	+		.5		6.11		
i2	+		.5		6.11		
i2	+		.5		6.11		
i2	+		.5		6.11		
i2	+		.5		6.11		
i2	+		.5		6.11		
i2	+		.5		6.11	

;part #7 bass clef
;c#	g#		c#(+1)	g#

i2	+		.5		7.01
i2	+		.5		7.08
i2	+		.5		8.01
i2	+		.5		7.08	
i2	+		.5		7.01
i2	+		.5		7.08
i2	+		.5		8.01
i2	+		.5		7.08	

;a		e		a(+1)		e
i2	+		.5		6.09
i2	+		.5		7.04
i2	+		.5		7.09
i2	+		.5		7.04
i2	+		.5		6.09
i2	+		.5		7.04
i2	+		.5		7.09
i2	+		.5		7.04

;e		b		e(+1)		b
i2	+		.5		7.04
i2	+		.5		7.11
i2	+		.5		8.04
i2	+		.5`	7.11
i2	+		.5		7.04
i2	+		.5		7.11
i2	+		.5		8.04
i2	+		.5`	7.11


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
