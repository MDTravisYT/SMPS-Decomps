MJ_SND_C5_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_C5_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_C5_FM5,	$00, $04

; FM5 Data
MJ_SND_C5_FM5:
	smpsSetvoice        $00
	dc.b	nE3, $20
	smpsStop

MJ_SND_C5_Voices:
;	Voice $00
;	$04
;	$01, $01, $0E, $75, 	$00, $00, $1F, $10, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$FF, $FF, $0F, $0F, 	$7F, $FF, $25, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $00, $00, $00
	smpsVcCoarseFreq    $05, $0E, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $1F, $00, $00
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $25, $7F, $7F

