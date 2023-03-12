MJ_SND_C4_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_C4_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $03

	smpsHeaderSFXChannel cFM4, MJ_SND_C4_FM4,	$00, $00
	smpsHeaderSFXChannel cFM5, MJ_SND_C4_FM5,	$10, $00
	smpsHeaderSFXChannel cPSG3, MJ_SND_C4_PSG3,	$00, $00

; FM5 Data
MJ_SND_C4_FM5:
	smpsSetvoice        $00
	smpsModSet          $01, $01, $20, $08

MJ_SND_C4_Loop01:
	dc.b	nC0, $18
	smpsAlterVol        $02
	smpsLoop            $00, $0C, MJ_SND_C4_Loop01
	smpsStop

; FM4 Data
MJ_SND_C4_FM4:
	smpsSetvoice        $00
	smpsModSet          $01, $01, $20, $08

MJ_SND_C4_Loop00:
	dc.b	nC0, $18
	smpsAlterVol        $02
	smpsLoop            $00, $0C, MJ_SND_C4_Loop00
	smpsStop

; PSG3 Data
MJ_SND_C4_PSG3:
	smpsModSet          $01, $01, $0F, $05
	smpsPSGform         $E7

MJ_SND_C4_Loop02:
	dc.b	nB3, $18, smpsNoAttack
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, MJ_SND_C4_Loop02
	smpsStop

MJ_SND_C4_Voices:
;	Voice $00
;	$FA
;	$21, $30, $10, $32, 	$1F, $1F, $1F, $1F, 	$05, $18, $09, $02
;	$0B, $1F, $10, $05, 	$1F, $2F, $4F, $2F, 	$0E, $07, $04, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $03
	smpsVcDetune        $03, $01, $03, $02
	smpsVcCoarseFreq    $02, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $09, $18, $05
	smpsVcDecayRate2    $05, $10, $1F, $0B
	smpsVcDecayLevel    $02, $04, $02, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $04, $07, $0E

