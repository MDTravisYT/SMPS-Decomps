SndC0_Header:
	smpsHeaderStartSong 2
	smpsHeaderVoice     SndC0_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cFM5, SndC0_FM5,	$00, $05
	smpsHeaderSFXChannel cFM4, SndC0_FM4,	$00, $05

; FM4 Data
SndC0_FM4:
	smpsAlterNote       $03
	dc.b	nRst, $03

; FM5 Data
SndC0_FM5:
	smpsSetvoice        $00
	dc.b	nCs5, $12
	smpsStop

SndC0_Voices:	;	The voices here are located in some data 340 bytes later. They have been appended to this file for convenience. ~MDT
;	Voice $00
;	$04
;	$37, $72, $77, $49, 	$1F, $1F, $1F, $1F, 	$07, $0A, $07, $0D
;	$00, $0B, $00, $0B, 	$1F, $0F, $1F, $0F, 	$23, $80, $23, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $07, $07, $03
	smpsVcCoarseFreq    $09, $07, $02, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $07, $0A, $07
	smpsVcDecayRate2    $0B, $00, $0B, $00
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $23

