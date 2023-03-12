MJ_SND_BB_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_BB_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $03

	smpsHeaderSFXChannel cFM5, MJ_SND_BB_FM5,	$0C, $06
	smpsHeaderSFXChannel cPSG1, MJ_SND_BB_PSG1,	$0C, $03
	smpsHeaderSFXChannel cPSG2, MJ_SND_BB_PSG2,	$0C, $03

; FM5 Data
MJ_SND_BB_FM5:
	smpsSetvoice        $00
	dc.b	nBb4, $30
	smpsStop

; PSG1 Data
MJ_SND_BB_PSG1:
	dc.b	$FB, 
	dc.b	$FE, 

; PSG2 Data
MJ_SND_BB_PSG2:
	smpsPSGvoice        fTone_05
	dc.b	nAb1, $30
	smpsStop

MJ_SND_BB_Voices:
;	Voice $00
;	$32
;	$71, $0D, $33, $01, 	$5F, $99, $5F, $94, 	$05, $05, $05, $07
;	$02, $02, $02, $02, 	$1F, $1F, $1F, $AF, 	$23, $2D, $26, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $07
	smpsVcCoarseFreq    $01, $03, $0D, $01
	smpsVcRateScale     $02, $01, $02, $01
	smpsVcAttackRate    $14, $1F, $19, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $05, $05, $05
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $0A, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $26, $2D, $23

