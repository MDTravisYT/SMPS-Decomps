SFXEF_Header:
	smpsHeaderStartSong 2
	smpsHeaderVoice     SFXEF_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $03

	smpsHeaderSFXChannel cFM5, SFXEF_FM5,	$00, $0B
	smpsHeaderSFXChannel cFM4, SFXEF_FM4,	$00, $12
	smpsHeaderSFXChannel cPSG3, SFXEF_PSG3,	$00, $00

; FM4 Data
SFXEF_FM4:
	smpsAlterNote       $02
	dc.b	nRst, $02

; FM5 Data
SFXEF_FM5:
	smpsSetvoice        $00
	smpsAlterVol        $0C
	dc.b	nBb7, $06, smpsNoAttack
	smpsAlterVol        $F4
	dc.b	$06, smpsNoAttack
	smpsAlterVol        $F4
	dc.b	$12
	smpsStop

; PSG3 Data
SFXEF_PSG3:
	smpsPSGform         $E7
	dc.b	nMaxPSG, $04, nEb5, nA4, nEb4, nA3
	smpsAlterVol        $01
	dc.b	nA3
	smpsAlterVol        $01
	dc.b	nA3
	smpsAlterVol        $01
	dc.b	nA3
	smpsStop

SFXEF_Voices:
;	Voice $00
;	$3D
;	$09, $34, $34, $28, 	$1F, $16, $16, $16, 	$00, $00, $00, $04
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$15, $02, $02, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $03, $03, $00
	smpsVcCoarseFreq    $08, $04, $04, $09
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $16, $16, $16, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $02, $02, $15

