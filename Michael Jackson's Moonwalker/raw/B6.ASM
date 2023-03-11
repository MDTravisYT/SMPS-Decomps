MJ_SND_B6_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_B6_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_B6_FM5,	$F4, $08

; FM5 Data
MJ_SND_B6_FM5:
	smpsSetvoice        $00
	dc.b	nC2, $06
	smpsAlterVol        $FD
	smpsSetvoice        $01
	dc.b	nC2, $0C
	smpsStop

MJ_SND_B6_Voices:
;	Voice $00
;	$3C
;	$0F, $00, $00, $00, 	$1F, $1A, $18, $1C, 	$17, $11, $1A, $0E
;	$00, $0F, $14, $10, 	$1F, $9F, $9F, $2F, 	$07, $80, $16, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1C, $18, $1A, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0E, $1A, $11, $17
	smpsVcDecayRate2    $10, $14, $0F, $00
	smpsVcDecayLevel    $02, $09, $09, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $16, $00, $07

;	Voice $01
;	$3C
;	$02, $00, $01, $01, 	$1F, $1F, $1F, $1F, 	$00, $0C, $19, $10
;	$00, $11, $00, $0F, 	$0F, $1F, $FF, $FF, 	$05, $80, $00, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $00, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $19, $0C, $00
	smpsVcDecayRate2    $0F, $00, $11, $00
	smpsVcDecayLevel    $0F, $0F, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $05

