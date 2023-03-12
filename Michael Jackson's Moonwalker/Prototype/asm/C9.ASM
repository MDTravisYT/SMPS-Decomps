MJ_SND_C9_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MJ_SND_C9_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cFM4, MJ_SND_C9_FM4,	$00, $03
	smpsHeaderSFXChannel cFM5, MJ_SND_C9_FM5,	$00, $03

; FM5 Data
MJ_SND_C9_FM5:
	dc.b	nRst, $0F

; FM4 Data
MJ_SND_C9_FM4:
	smpsSetvoice        $00
	smpsModSet          $0A, $03, $F1, $07
	dc.b	nG2, $34
	smpsStop

MJ_SND_C9_Voices:
;	Voice $00
;	$3C
;	$8B, $1A, $47, $31, 	$1B, $19, $11, $11, 	$02, $08, $04, $0E
;	$02, $0B, $02, $0B, 	$1F, $2F, $3F, $2F, 	$0B, $80, $0A, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $04, $01, $08
	smpsVcCoarseFreq    $01, $07, $0A, $0B
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $11, $11, $19, $1B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0E, $04, $08, $02
	smpsVcDecayRate2    $0B, $02, $0B, $02
	smpsVcDecayLevel    $02, $03, $02, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $0A, $00, $0B

