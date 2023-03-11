MJ_SND_B0_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_B0_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cFM4, MJ_SND_B0_FM4,	$E8, $08
	smpsHeaderSFXChannel cFM5, MJ_SND_B0_FM5,	$E8, $08

; FM5 Data
MJ_SND_B0_FM5:
	smpsSetvoice        $00
	smpsJump            MJ_SND_B0_Loop00

; FM4 Data
MJ_SND_B0_FM4:
	smpsSetvoice        $00
	dc.b	nRst, $02

MJ_SND_B0_Loop00:
	dc.b	nB3, $02, nRst
	dc.b	$FB, 
	dc.b	$02, nB3, $02, smpsNoAttack, nA3, $02, smpsNoAttack
	dc.b	$FB, 
	dc.b	$FF, 
	smpsLoop            $00, $33, MJ_SND_B0_Loop00
	smpsStop

MJ_SND_B0_Voices:
;	Voice $00
;	$3B
;	$3C, $39, $31, $33, 	$DF, $1F, $1F, $DF, 	$04, $05, $04, $01
;	$04, $04, $04, $02, 	$FF, $0F, $1F, $AF, 	$29, $20, $0F, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $03, $01, $09, $0C
	smpsVcRateScale     $03, $00, $00, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $04, $05, $04
	smpsVcDecayRate2    $02, $04, $04, $04
	smpsVcDecayLevel    $0A, $01, $00, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $0F, $20, $29

