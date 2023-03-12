MJ_SND_B4_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_B4_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_B4_FM5,	$F6, $12

; FM5 Data
MJ_SND_B4_FM5:
	smpsSetvoice        $00
	smpsModSet          $10, $01, $F8, $FF
	dc.b	nEb1, $30
	smpsStop

MJ_SND_B4_Voices:
;	Voice $00
;	$23
;	$21, $60, $51, $30, 	$0F, $1A, $10, $1F, 	$0D, $0A, $13, $07
;	$00, $00, $01, $01, 	$1F, $9F, $9F, $2F, 	$07, $00, $16, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $05, $06, $02
	smpsVcCoarseFreq    $00, $01, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $10, $1A, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $13, $0A, $0D
	smpsVcDecayRate2    $01, $01, $00, $00
	smpsVcDecayLevel    $02, $09, $09, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $16, $00, $07

