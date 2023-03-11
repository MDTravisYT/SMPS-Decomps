MJ_SND_C2_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_C2_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_C2_FM5,	$00, $02

; FM5 Data
MJ_SND_C2_FM5:
	smpsSetvoice        $00
	smpsModSet          $01, $01, $14, $02

MJ_SND_C2_Loop00:
	dc.b	nE0, $0B
	dc.b	$FB, 
	dc.b	$01
	smpsLoop            $00, $03, MJ_SND_C2_Loop00
	dc.b	$FB, 
	smpsWeirdD1LRR
	dc.b	nEb1, $60
	smpsStop

MJ_SND_C2_Voices:
;	Voice $00
;	$F8
;	$21, $73, $60, $42, 	$1F, $15, $1F, $11, 	$05, $18, $09, $02
;	$0F, $0F, $0F, $0F, 	$1F, $2F, $4F, $2F, 	$0E, $13, $10, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $03
	smpsVcDetune        $04, $06, $07, $02
	smpsVcCoarseFreq    $02, $00, $03, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $11, $1F, $15, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $09, $18, $05
	smpsVcDecayRate2    $0F, $0F, $0F, $0F
	smpsVcDecayLevel    $02, $04, $02, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $10, $13, $0E

