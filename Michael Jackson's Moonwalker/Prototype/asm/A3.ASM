MJ_SND_A3_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_A3_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM3, MJ_SND_A3_FM3,	$00, $02

; FM3 Data
MJ_SND_A3_FM3:
	smpsAlterNote       $01
	smpsSetvoice        $00
	smpsAlterPitch      $00
	dc.b	$00
	smpsModSet          $01, $01, $F8, $FF
	dc.b	nAb3, $24
	smpsStop

MJ_SND_A3_Voices:
;	Voice $00
;	$3C
;	$02, $01, $02, $01, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$1B, $B2, $28, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $28, $32, $1B

