MJ_SND_C6_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_C6_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_C6_FM5,	$00, $09

; FM5 Data
MJ_SND_C6_FM5:
	smpsSetvoice        $00
	dc.b	nG2, $1C
	smpsStop

MJ_SND_C6_Voices:
;	Voice $00
;	$2C
;	$72, $72, $33, $32, 	$1F, $1F, $1F, $1F, 	$01, $03, $01, $03
;	$01, $01, $01, $01, 	$1F, $2F, $1F, $2F, 	$19, $80, $17, $85
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $02, $03, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $01, $03, $01
	smpsVcDecayRate2    $01, $01, $01, $01
	smpsVcDecayLevel    $02, $01, $02, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $05, $17, $00, $19

