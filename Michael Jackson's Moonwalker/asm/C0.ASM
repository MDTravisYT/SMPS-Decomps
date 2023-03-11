MJ_SND_C0_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_C0_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_C0_FM5,	$00, $08

; FM5 Data
MJ_SND_C0_FM5:
	smpsSetvoice        $00
	dc.b	nCs6, $03
	smpsAlterVol        $FC
	smpsSetvoice        $01
	dc.b	nE5, $1A
	smpsStop

MJ_SND_C0_Voices:
;	Voice $00
;	$38
;	$0F, $0F, $0F, $0F, 	$1F, $1F, $1F, $13, 	$00, $00, $00, $11
;	$00, $00, $00, $19, 	$0F, $0F, $0F, $1F, 	$07, $07, $07, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $0F, $0F, $0F, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $13, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $11, $00, $00, $00
	smpsVcDecayRate2    $19, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $07, $07, $07

;	Voice $01
;	$38
;	$0F, $0F, $0F, $0F, 	$1F, $1F, $1F, $0E, 	$00, $00, $00, $12
;	$00, $00, $00, $14, 	$0F, $0F, $0F, $1F, 	$07, $07, $07, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $0F, $0F, $0F, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0E, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $12, $00, $00, $00
	smpsVcDecayRate2    $14, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $07, $07, $07

