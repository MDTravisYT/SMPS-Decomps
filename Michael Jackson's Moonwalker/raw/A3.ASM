MJ_SND_A3_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_A3_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_A3_FM5,	$24, $02

; FM5 Data
MJ_SND_A3_FM5:
	smpsSetvoice        $00
	smpsAlterPitch      $68
	dc.b	$30
	smpsModSet          $01, $02, $F8, $FF
	dc.b	nAb3, $2A
	smpsStop

MJ_SND_A3_Voices:
;	Voice $00
;	$3C
;	$02, $01, $02, $01, 	$1F, $0B, $1F, $0B, 	$00, $08, $00, $08
;	$01, $0E, $01, $0E, 	$0F, $1F, $0F, $1F, 	$1B, $B2, $28, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0B, $1F, $0B, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $00, $08, $00
	smpsVcDecayRate2    $0E, $01, $0E, $01
	smpsVcDecayLevel    $01, $00, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $28, $32, $1B

