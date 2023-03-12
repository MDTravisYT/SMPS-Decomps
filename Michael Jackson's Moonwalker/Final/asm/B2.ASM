MJ_SND_B2_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_B2_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_B2_FM5,	$00, $04

; FM5 Data
MJ_SND_B2_FM5:
	smpsSetvoice        $00
	dc.b	nRst, $01
	smpsModSet          $01, $01, $12, $FF
	dc.b	nG4, $24
	smpsStop

MJ_SND_B2_Voices:
;	Voice $00
;	$38
;	$0F, $0F, $0F, $0F, 	$1F, $1F, $1F, $0D, 	$00, $00, $00, $0F
;	$00, $00, $00, $0D, 	$0F, $0F, $0F, $1F, 	$07, $07, $07, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $0F, $0F, $0F, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0D, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $00, $00, $00
	smpsVcDecayRate2    $0D, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $07, $07, $07

