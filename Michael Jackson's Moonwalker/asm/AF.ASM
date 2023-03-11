MJ_SND_AF_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_AF_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_AF_FM5,	$00, $0C

; FM5 Data
MJ_SND_AF_FM5:
	smpsSetvoice        $00
	dc.b	nRst, $01
	smpsModSet          $01, $01, $DA, $FF
	dc.b	nD6, $0C
	smpsStop

MJ_SND_AF_Voices:
;	Voice $00
;	$3D
;	$00, $11, $11, $11, 	$DF, $0D, $0D, $0D, 	$01, $10, $10, $10
;	$01, $12, $12, $12, 	$0F, $1F, $1F, $1F, 	$1F, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $01, $01, $00
	smpsVcCoarseFreq    $01, $01, $01, $00
	smpsVcRateScale     $00, $00, $00, $03
	smpsVcAttackRate    $0D, $0D, $0D, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $10, $10, $01
	smpsVcDecayRate2    $12, $12, $12, $01
	smpsVcDecayLevel    $01, $01, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $1F

