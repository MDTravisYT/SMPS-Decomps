MJ_SND_A8_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_A8_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_A8_FM5,	$0C, $08

; FM5 Data
MJ_SND_A8_FM5:
	smpsSetvoice        $00

MJ_SND_A8_Loop00:
	dc.b	nB3, $02, nRst, $01
	dc.b	$FB, 
	dc.b	$FF, 
	smpsLoop            $00, $20, MJ_SND_A8_Loop00
	dc.b	$FB, 
	dc.b	$20

MJ_SND_A8_Loop01:
	dc.b	nEb1, $02, nRst, $01
	smpsLoop            $00, $05, MJ_SND_A8_Loop01
	smpsStop

MJ_SND_A8_Voices:
;	Voice $00
;	$3B
;	$03, $01, $30, $01, 	$1C, $DC, $DC, $5E, 	$14, $13, $0F, $0C
;	$0C, $05, $0A, $07, 	$AF, $AF, $5F, $6F, 	$16, $11, $11, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $00
	smpsVcCoarseFreq    $01, $00, $01, $03
	smpsVcRateScale     $01, $03, $03, $00
	smpsVcAttackRate    $1E, $1C, $1C, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0F, $13, $14
	smpsVcDecayRate2    $07, $0A, $05, $0C
	smpsVcDecayLevel    $06, $05, $0A, $0A
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $11, $11, $16

