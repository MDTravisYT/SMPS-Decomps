SndE7_Header:
	smpsHeaderStartSong 2
	smpsHeaderVoice     SndE7_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cFM5, SndE7_FM5,	$36, $00
	smpsHeaderSFXChannel cPSG3, SndE7_PSG3,	$00, $00

; FM5 Data
SndE7_FM5:
	smpsSetvoice        $00
	smpsModSet          $0A, $01, $F0, $31

SndE7_Loop00:
	dc.b	nE4, $04, smpsNoAttack
	smpsAlterVol        $04
	smpsLoop            $00, $09, SndE7_Loop00
	smpsStop

; PSG3 Data
SndE7_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        $00
	dc.b	nBb5, $04, nMaxPSG, $04
	smpsAlterVol        $01
	dc.b	nAb5, $04
	smpsAlterVol        $01
	dc.b	nG5, $04
	smpsAlterVol        $01
	dc.b	nFs5, $04
	smpsAlterVol        $01
	dc.b	nF5, $04
	smpsAlterVol        $01
	dc.b	nE5, $04
	smpsAlterVol        $01
	dc.b	nEb5, $08
	smpsStop

SndE7_Voices:
;	Voice $00
;	$33
;	$00, $00, $10, $31, 	$1F, $1E, $1D, $18, 	$00, $1D, $0C, $00
;	$00, $01, $00, $00, 	$0F, $0F, $0F, $0F, 	$08, $07, $06, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $01, $00, $00
	smpsVcCoarseFreq    $01, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $18, $1D, $1E, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0C, $1D, $00
	smpsVcDecayRate2    $00, $00, $01, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $06, $07, $08

