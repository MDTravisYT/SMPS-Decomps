MJ_SND_B1_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_B1_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM4, MJ_SND_B1_FM4,	$00, $12

; FM4 Data
MJ_SND_B1_FM4:
	smpsSetvoice        $00
	smpsModSet          $01, $01, $80, $02

MJ_SND_B1_Loop00:
	dc.b	nC3, $07
	smpsLoop            $00, $10, MJ_SND_B1_Loop00
	smpsStop

MJ_SND_B1_Voices:
;	Voice $00
;	$38
;	$0F, $0F, $0F, $0F, 	$1F, $1F, $1F, $0E, 	$00, $00, $00, $0A
;	$00, $00, $00, $19, 	$0F, $0F, $0F, $1F, 	$07, $10, $07, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $0F, $0F, $0F, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0E, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $00, $00, $00
	smpsVcDecayRate2    $19, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $07, $10, $07

