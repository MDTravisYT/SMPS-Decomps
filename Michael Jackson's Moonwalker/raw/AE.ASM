MJ_SND_AE_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_AE_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_AE_FM5,	$00, $04

; FM5 Data
MJ_SND_AE_FM5:
	smpsSetvoice        $00
	dc.b	nBb2, $0E
	smpsStop

MJ_SND_AE_Voices:
;	Voice $00
;	$28
;	$03, $70, $31, $00, 	$1F, $1F, $5F, $5F, 	$03, $03, $03, $02
;	$01, $02, $02, $03, 	$AF, $2F, $2F, $5F, 	$1E, $19, $16, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $00
	smpsVcCoarseFreq    $00, $01, $00, $03
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $03, $03, $03
	smpsVcDecayRate2    $03, $02, $02, $01
	smpsVcDecayLevel    $05, $02, $02, $0A
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $16, $19, $1E

