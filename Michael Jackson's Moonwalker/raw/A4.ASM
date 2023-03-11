MJ_SND_A4_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_A4_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_A4_FM5,	$F4, $00

; FM5 Data
MJ_SND_A4_FM5:
	smpsSetvoice        $00
	dc.b	nG2, $60
	smpsStop

MJ_SND_A4_Voices:
;	Voice $00
;	$3B
;	$52, $31, $51, $51, 	$0C, $0C, $12, $12, 	$0E, $00, $0E, $0C
;	$00, $00, $00, $0E, 	$4F, $0F, $5F, $3F, 	$15, $13, $1C, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $05, $03, $05
	smpsVcCoarseFreq    $01, $01, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $12, $0C, $0C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0E, $00, $0E
	smpsVcDecayRate2    $0E, $00, $00, $00
	smpsVcDecayLevel    $03, $05, $00, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1C, $13, $15

