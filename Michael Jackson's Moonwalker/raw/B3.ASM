MJ_SND_B3_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_B3_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_B3_FM5,	$F4, $00

; FM5 Data
MJ_SND_B3_FM5:
	smpsSetvoice        $00
	dc.b	nD2, $04, nRst, nC3, $06
	smpsStop

MJ_SND_B3_Voices:
;	Voice $00
;	$3C
;	$00, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$00, $16, $0F, $0F
;	$00, $00, $00, $00, 	$0F, $AF, $FF, $FF, 	$00, $85, $0A, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0F, $16, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0A, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $0A, $05, $00

