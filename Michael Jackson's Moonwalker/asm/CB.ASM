MJ_SND_CB_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_CB_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cFM3, MJ_SND_CB_FM3,	$00, $08
	smpsHeaderSFXChannel cFM5, MJ_SND_CB_FM5,	$00, $08

; FM3 Data
MJ_SND_CB_FM3:
	smpsSetvoice        $00
	dc.b	nD6, $0B, nG6, $1C
	smpsStop

; FM5 Data
MJ_SND_CB_FM5:
	smpsSetvoice        $00
	dc.b	nC6, $0B
	smpsStop

MJ_SND_CB_Voices:
;	Voice $00
;	$04
;	$37, $72, $77, $49, 	$1F, $1F, $1F, $1F, 	$07, $0A, $07, $0D
;	$00, $0E, $00, $0E, 	$1F, $0F, $1F, $0F, 	$23, $80, $23, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $07, $07, $03
	smpsVcCoarseFreq    $09, $07, $02, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $07, $0A, $07
	smpsVcDecayRate2    $0E, $00, $0E, $00
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $23

