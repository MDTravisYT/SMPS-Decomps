Snd8E_Header:
	smpsHeaderStartSong 2
	smpsHeaderVoice     Snd8E_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $09

	smpsHeaderDAC       Snd8E_DAC
	smpsHeaderFM        Snd8E_FM1,	$0C, $08
	smpsHeaderFM        Snd8E_FM2,	$00, $0D
	smpsHeaderFM        Snd8E_FM3,	$00, $12
	smpsHeaderFM        Snd8E_FM4,	$00, $12
	smpsHeaderFM        Snd8E_FM5,	$00, $12
	smpsHeaderPSG       Snd8E_PSG1,	$E8, $04, $00, fTone_0C
	smpsHeaderPSG       Snd8E_PSG2,	$E8, $06, $00, fTone_0C
	smpsHeaderPSG       Snd8E_PSG3,	$E8, $08, $00, fTone_0C

; FM1 Data
Snd8E_FM1:
	smpsSetvoice        $00
	smpsNoteFill        $09
	dc.b	nA1, $0C, nA2, nA2, nA1, nA2, nA2, nA1, nA2
	smpsNoteFill        $00
	dc.b	nE1, nE2, nE1, nE2, nE1, nE2, nE1, nE2
	smpsNoteFill        $09
	dc.b	nA1, nA2, nA2, nA1, nA2, nA2, nA1, nA2
	smpsNoteFill        $00
	dc.b	nE1, nE2, nFs1, nFs2, nG1, nG2, nAb1, nAb2

Snd8E_Loop06:
	smpsCall            Snd8E_Call01
	dc.b	nG1, $0C, nG2, $06, nG2, nG1, $0C, nG2, $06, nG2
	smpsCall            Snd8E_Call01
	dc.b	nE1, $0C, nE2, $06, nE2, nE1, $0C, nE2, $06, nE2
	smpsLoop            $00, $04, Snd8E_Loop06
	smpsJump            Snd8E_FM1

Snd8E_Call01:
	dc.b	nA1, $0C, nA2, $06, nA2, nA1, $0C, nA2, $06, nA2, nA1, $0C
	dc.b	nA2, $06, nA2, nA1, $0C, nA2, $06, nA2, nG1, $0C, nG2, $06
	dc.b	nG2, nG1, $0C, nG2, $06, nG2
	smpsReturn

; PSG1 Data
Snd8E_PSG1:
	smpsJump            Snd8E_Loop04

; PSG2 Data
Snd8E_PSG2:
	smpsAlterNote       $01
	dc.b	nRst, $06
	smpsJump            Snd8E_Loop04

; PSG3 Data
Snd8E_PSG3:
	smpsAlterNote       $FF
	dc.b	nRst, $0C
	smpsJump            Snd8E_Loop04

; FM2 Data
Snd8E_FM2:
	smpsSetvoice        $01

Snd8E_Loop04:
	smpsNoteFill        $09
	dc.b	nA3, $0C, nE3, nE3, nA3, nE3, nE3, nA3, nE3
	smpsNoteFill        $00
	dc.b	nB3, $18, nB3, nB3, nB3
	smpsLoop            $00, $02, Snd8E_Loop04

Snd8E_Loop05:
	smpsCall            Snd8E_Call00
	smpsLoop            $00, $04, Snd8E_Loop05
	smpsJump            Snd8E_Loop04

Snd8E_Call00:
	dc.b	nA3, $0C, nB3, nC4, $18, nD4, nC4, nB3, $0C, nC4, nB3, nG3
	dc.b	$18, nE3, $0C, nG3, $18, nA3, $0C, nB3, nC4, $18, nD4, nC4
	dc.b	nB3, $0C, nC4, nD4, nEb4, nE4, nRst, $24
	smpsReturn

; FM3 Data
Snd8E_FM3:
	smpsSetvoice        $01

Snd8E_Loop01:
	smpsNoteFill        $09
	dc.b	nC4, $0C, nA3, nA3, nC4, nA3, nA3, nC4, nA3
	smpsNoteFill        $00
	dc.b	nAb3, $18, nAb3, nAb3, nAb3
	smpsLoop            $00, $02, Snd8E_Loop01

Snd8E_Loop02:
	dc.b	nRst, $30, nRst
	smpsLoop            $00, $08, Snd8E_Loop02

Snd8E_Loop03:
	smpsAlterPitch      $0C
	smpsCall            Snd8E_Call00
	smpsAlterPitch      $F4
	smpsLoop            $00, $02, Snd8E_Loop03
	smpsJump            Snd8E_FM3

; FM4 Data
Snd8E_FM4:
	smpsPan             panLeft, $00
	smpsModSet          $0C, $01, $04, $04
	smpsJump            Snd8E_Jump00

; FM5 Data
Snd8E_FM5:
	smpsPan             panRight, $00
	smpsModSet          $0C, $01, $FC, $04
	smpsJump            Snd8E_Jump00

Snd8E_Jump00:
	smpsAlterPitch      $F4
	smpsSetvoice        $01
	dc.b	nRst, $30, nRst, $24, nD5, $06, nE5, nF5, $0C, nF5, nE5, nE5
	dc.b	nD5, nD5, nE5, $18, nRst, $30, nRst, $24, nD5, $06, nE5, nF5
	dc.b	$0C, nE5, nEb5, nE5, nAb5, $18, nE5
	smpsAlterPitch      $0C

Snd8E_Loop07:
	dc.b	nRst, $30, nRst
	smpsLoop            $00, $04, Snd8E_Loop07
	smpsCall            Snd8E_Call02
	dc.b	nG3
	smpsCall            Snd8E_Call02
	dc.b	nAb3, nC5, smpsNoAttack, $18, nD5, $0C, nC5, nB4, $30, nG4, nC5, smpsNoAttack
	dc.b	$18, nD5, $0C, nC5, nB4, $30, nAb4, nC5, $0C, nD5, nE5, $18
	dc.b	nF5, nE5, nD5, $0C, nE5, nD5, nB4, $18, nG4, $0C, nB4, $18
	dc.b	nC5, $0C, nD5, nE5, $18, nF5, nE5, nD5, $0C, nE5, nF5, nFs5
	dc.b	nAb5, $30
	smpsJump            Snd8E_Jump00

Snd8E_Call02:
	dc.b	nC4, $30, smpsNoAttack, $18, nD4, $0C, nC4, nB3, $30
	smpsReturn

; DAC Data
Snd8E_DAC:
	dc.b	dSnare, $0C, dFloorTom, dFloorTom, dSnare, dFloorTom, dFloorTom, dSnare, dFloorTom, dFloorTom, $18, dFloorTom
	dc.b	dFloorTom, dFloorTom
	smpsLoop            $00, $02, Snd8E_DAC

Snd8E_Loop00:
	dc.b	dKick, $0C, dSnare, $06, dSnare, dKick, $0C, dSnare, $06, dSnare, dKick, $0C
	dc.b	dSnare, $06, dSnare, dKick, $0C, dSnare, $06, dSnare, dKick, $0C, dSnare, $06
	dc.b	dSnare, dKick, $0C, dSnare, $06, dSnare, dKick, $0C, dSnare, $02, dFloorTom, $04
	dc.b	dSnare, $02, dFloorTom, $04, dKick, $0C, dSnare, $02, dFloorTom, $04, dSnare, $02
	dc.b	dFloorTom, $04
	smpsLoop            $00, $08, Snd8E_Loop00
	smpsJump            Snd8E_DAC

Snd8E_Voices:
;	Voice $00
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$20, $10, $10, $F8, 	$19, $37, $13, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $06
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $08, $00, $00, $00
	smpsVcTotalLevel    $00, $13, $37, $19

;	Voice $01
;	$3A
;	$01, $01, $01, $02, 	$8D, $07, $07, $52, 	$09, $00, $00, $03
;	$01, $02, $02, $00, 	$52, $02, $02, $28, 	$18, $22, $18, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $01, $01
	smpsVcRateScale     $01, $00, $00, $02
	smpsVcAttackRate    $12, $07, $07, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $00, $00, $09
	smpsVcDecayRate2    $00, $02, $02, $01
	smpsVcDecayLevel    $02, $00, $00, $05
	smpsVcReleaseRate   $08, $02, $02, $02
	smpsVcTotalLevel    $00, $18, $22, $18

