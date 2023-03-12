MJ_SND_CF_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_CF_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM4, MJ_SND_CF_FM4,	$00, $0F

; FM4 Data
MJ_SND_CF_FM4:
	smpsSetvoice        $00

MJ_SND_CF_Jump00:
	dc.b	nE0, $0E, nFs0, $0F
	smpsJump            MJ_SND_CF_Jump00

MJ_SND_CF_Voices:
;	Voice $00
;	$21
;	$73, $59, $60, $41, 	$1F, $15, $1F, $14, 	$05, $14, $03, $02
;	$0F, $0F, $0F, $0F, 	$1F, $2F, $4F, $1F, 	$16, $12, $13, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $06, $05, $07
	smpsVcCoarseFreq    $01, $00, $09, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $1F, $15, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $03, $14, $05
	smpsVcDecayRate2    $0F, $0F, $0F, $0F
	smpsVcDecayLevel    $01, $04, $02, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $12, $16

