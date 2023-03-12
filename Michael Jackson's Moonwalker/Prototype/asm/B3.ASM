MJ_SND_B3_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_B3_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_B3_FM5,	$00, $00

; FM5 Data
MJ_SND_B3_FM5:
	smpsSetvoice        $00
	dc.b	nAb6, $04, nRst
	smpsSetvoice        $01
	dc.b	nCs7, $08
	smpsStop

MJ_SND_B3_Voices:
;	Voice $00
;	$08
;	$42, $50, $05, $14, 	$15, $16, $19, $17, 	$00, $00, $00, $11
;	$00, $00, $00, $14, 	$F0, $F0, $F0, $F0, 	$12, $05, $05, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $05, $04
	smpsVcCoarseFreq    $04, $05, $00, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $17, $19, $16, $15
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $11, $00, $00, $00
	smpsVcDecayRate2    $14, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $00, $00, $00, $00
	smpsVcTotalLevel    $00, $05, $05, $12

;	Voice $01
;	$08
;	$42, $50, $05, $14, 	$15, $16, $19, $17, 	$00, $00, $00, $11
;	$00, $00, $00, $17, 	$F0, $F0, $F0, $F0, 	$12, $05, $05, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $05, $04
	smpsVcCoarseFreq    $04, $05, $00, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $17, $19, $16, $15
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $11, $00, $00, $00
	smpsVcDecayRate2    $17, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $00, $00, $00, $00
	smpsVcTotalLevel    $00, $05, $05, $12

