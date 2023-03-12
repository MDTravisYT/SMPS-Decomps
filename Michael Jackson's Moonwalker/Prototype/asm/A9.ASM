MJ_SND_A9_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_A9_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_A9_FM5,	$00, $06

; FM5 Data
MJ_SND_A9_FM5:
	smpsSetvoice        $00
	dc.b	nRst, $01
	smpsModSet          $00, $01, $D0, $FF
	dc.b	nAb5, $0F
	smpsStop

MJ_SND_A9_Voices:
;	Voice $00
;	$38
;	$0F, $0F, $0F, $0F, 	$1F, $1F, $1F, $0E, 	$00, $00, $00, $11
;	$00, $00, $00, $13, 	$0F, $0F, $0F, $1F, 	$07, $07, $07, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $0F, $0F, $0F, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0E, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $11, $00, $00, $00
	smpsVcDecayRate2    $13, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $07, $07, $07

