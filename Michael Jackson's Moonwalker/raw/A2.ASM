MJ_SND_A2_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_A2_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, MJ_SND_A2_FM5,	$00, $06

; FM5 Data
MJ_SND_A2_FM5:
	smpsSetvoice        $00

MJ_SND_A2_Loop00:
	dc.b	nG5, $01, nRst
	smpsLoop            $00, $10, MJ_SND_A2_Loop00
	smpsStop

MJ_SND_A2_Voices:
;	Voice $00
;	$39
;	$02, $01, $02, $01, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$1B, $32, $28, $80
	smpsVcAlgorithm     $01
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

