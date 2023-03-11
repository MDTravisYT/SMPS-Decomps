MJ_SND_AC_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_AC_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_AC_FM5,	$00, $02

; FM5 Data
MJ_SND_AC_FM5:
	smpsSetvoice        $00
	dc.b	nC1, $2C
	smpsStop

MJ_SND_AC_Voices:
;	Voice $00
;	$3C
;	$02, $00, $01, $01, 	$1F, $1F, $1F, $1F, 	$00, $0E, $19, $10
;	$00, $0C, $00, $0F, 	$0F, $EF, $FF, $FF, 	$05, $80, $00, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $00, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $19, $0E, $00
	smpsVcDecayRate2    $0F, $00, $0C, $00
	smpsVcDecayLevel    $0F, $0F, $0E, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $05

