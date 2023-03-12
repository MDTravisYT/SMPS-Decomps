MJ_SND_B5_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_B5_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_B5_FM5,	$F4, $02

; FM5 Data
MJ_SND_B5_FM5:
	smpsSetvoice        $00
	dc.b	nA0, $01, nRst, $04, nB6
	smpsStop

MJ_SND_B5_Voices:
;	Voice $00
;	$38
;	$0F, $0F, $0F, $0F, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $10
;	$00, $00, $00, $12, 	$0F, $0F, $0F, $1F, 	$07, $07, $07, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $0F, $0F, $0F, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $00, $00, $00
	smpsVcDecayRate2    $12, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $07, $07, $07

