MJ_SND_C8_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_C8_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_C8_FM5,	$00, $0A

; FM5 Data
MJ_SND_C8_FM5:
	smpsSetvoice        $00
	dc.b	nEb4, $02
	smpsStop

MJ_SND_C8_Voices:
;	Voice $00
;	$34
;	$01, $01, $13, $00, 	$1F, $1D, $18, $19, 	$00, $19, $16, $0D
;	$00, $00, $02, $03, 	$0F, $6F, $5F, $6F, 	$21, $80, $13, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $00, $00
	smpsVcCoarseFreq    $00, $03, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $19, $18, $1D, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $16, $19, $00
	smpsVcDecayRate2    $03, $02, $00, $00
	smpsVcDecayLevel    $06, $05, $06, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $00, $21

