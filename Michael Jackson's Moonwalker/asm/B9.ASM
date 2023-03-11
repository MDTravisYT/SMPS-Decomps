MJ_SND_B9_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_B9_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_B9_FM5,	$00, $02

; FM5 Data
MJ_SND_B9_FM5:
	smpsSetvoice        $00
	dc.b	nB1, $04
	smpsStop

MJ_SND_B9_Voices:
;	Voice $00
;	$3C
;	$0F, $00, $03, $01, 	$1F, $1F, $1F, $1F, 	$19, $13, $19, $11
;	$05, $16, $00, $0F, 	$0F, $7F, $FF, $FF, 	$00, $80, $00, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $03, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $11, $19, $13, $19
	smpsVcDecayRate2    $0F, $00, $16, $05
	smpsVcDecayLevel    $0F, $0F, $07, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $00

