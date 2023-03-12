MJ_SND_A8_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_A8_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cFM4, MJ_SND_A8_FM4,	$F2, $08
	smpsHeaderSFXChannel cFM5, MJ_SND_A8_FM5,	$F2, $08

; FM5 Data
MJ_SND_A8_FM5:
	smpsSetvoice        $00
	smpsJump            MJ_SND_A8_Loop00

; FM4 Data
MJ_SND_A8_FM4:
	smpsSetvoice        $00

MJ_SND_A8_Loop00:
	dc.b	nB3, $02, smpsNoAttack, nA3, $01, smpsNoAttack
	dc.b	$FB, 
	dc.b	$FF, 
	smpsLoop            $00, $20, MJ_SND_A8_Loop00
	dc.b	$FB, 
	dc.b	$20

MJ_SND_A8_Loop01:
	dc.b	nEb1, $02, nRst, $01
	smpsLoop            $00, $05, MJ_SND_A8_Loop01
	smpsStop

MJ_SND_A8_Voices:
;	Voice $00
;	$3B
;	$3C, $39, $30, $31, 	$DF, $1F, $1F, $DF, 	$04, $05, $04, $01
;	$04, $04, $04, $02, 	$FF, $0F, $1F, $AF, 	$29, $20, $0F, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $09, $0C
	smpsVcRateScale     $03, $00, $00, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $04, $05, $04
	smpsVcDecayRate2    $02, $04, $04, $04
	smpsVcDecayLevel    $0A, $01, $00, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $0F, $20, $29

