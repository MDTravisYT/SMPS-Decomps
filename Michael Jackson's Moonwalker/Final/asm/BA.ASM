MJ_SND_BA_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_BA_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_BA_FM5,	$00, $00

; FM5 Data
MJ_SND_BA_FM5:
	smpsSetvoice        $00
	dc.b	nF2, $28
	smpsStop

MJ_SND_BA_Voices:
;	Voice $00
;	$3C
;	$05, $00, $01, $01, 	$1F, $1F, $1F, $1F, 	$00, $0D, $19, $10
;	$00, $0D, $00, $0F, 	$0F, $EF, $FF, $FF, 	$06, $80, $00, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $00, $05
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $19, $0D, $00
	smpsVcDecayRate2    $0F, $00, $0D, $00
	smpsVcDecayLevel    $0F, $0F, $0E, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $06

