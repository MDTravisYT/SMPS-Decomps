MJ_SND_CC_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_CC_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_CC_FM5,	$00, $02

; FM5 Data
MJ_SND_CC_FM5:
	smpsSetvoice        $00
	dc.b	nRst, $01
	smpsModSet          $08, $01, $F4, $FF
	dc.b	nCs5, $1A
	smpsStop

MJ_SND_CC_Voices:
;	Voice $00
;	$3A
;	$31, $39, $32, $34, 	$D9, $DC, $59, $51, 	$0B, $0C, $10, $0A
;	$00, $0C, $00, $00, 	$1F, $5F, $1F, $1F, 	$25, $25, $2F, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $04, $02, $09, $01
	smpsVcRateScale     $01, $01, $03, $03
	smpsVcAttackRate    $11, $19, $1C, $19
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $10, $0C, $0B
	smpsVcDecayRate2    $00, $00, $0C, $00
	smpsVcDecayLevel    $01, $01, $05, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $2F, $25, $25

