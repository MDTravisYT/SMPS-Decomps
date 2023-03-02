Sound00_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Sound00_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM6, Sound00_FM6,	$EB, $09

; FM6 Data
Sound00_FM6:
	smpsSetvoice        $00
	smpsAlterVol        $05
	dc.b	nF3, $05
	smpsAlterVol        $FB
	smpsModSet          $02, $01, $34, $FF
	dc.b	nBb3, $15
	smpsStop

Sound00_Voices:
;	Voice $00
;	$0C
;	$08, $08, $08, $08, 	$1F, $1F, $1F, $1F, 	$00, $0A, $00, $0A
;	$00, $00, $00, $0A, 	$FF, $FF, $FF, $FF, 	$55, $81, $33, $81
	smpsVcAlgorithm     $04
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $08, $08, $08, $08
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $00, $0A, $00
	smpsVcDecayRate2    $0A, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $01, $33, $01, $55

