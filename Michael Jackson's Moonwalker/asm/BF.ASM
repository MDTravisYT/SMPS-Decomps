MJ_SND_BF_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_BF_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_BF_FM5,	$00, $00

; FM5 Data
MJ_SND_BF_FM5:
	smpsSetvoice        $00
	dc.b	nAb1, $28
	smpsStop

MJ_SND_BF_Voices:
;	Voice $00
;	$F9
;	$20, $30, $10, $32, 	$1F, $1F, $1F, $1F, 	$0A, $18, $05, $10
;	$0B, $1F, $10, $0C, 	$1F, $2F, $4F, $2F, 	$0C, $06, $02, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $03
	smpsVcDetune        $03, $01, $03, $02
	smpsVcCoarseFreq    $02, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $05, $18, $0A
	smpsVcDecayRate2    $0C, $10, $1F, $0B
	smpsVcDecayLevel    $02, $04, $02, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $02, $06, $0C

