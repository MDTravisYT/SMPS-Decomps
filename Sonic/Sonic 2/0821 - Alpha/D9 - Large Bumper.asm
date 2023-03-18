SndD9_Header:
	smpsHeaderStartSong 2
	smpsHeaderVoice     SndD9_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, SndD9_FM5,	$00, $00

; FM5 Data
SndD9_FM5:
	smpsSetvoice        $00
	smpsModSet          $01, $01, $22, $FF
	dc.b	nE3, $10
	smpsStop

SndD9_Voices:
;	Voice $00
;	$3E
;	$0C, $04, $32, $02, 	$1F, $1F, $1F, $1F, 	$00, $18, $00, $00
;	$00, $0F, $0F, $0F, 	$0F, $3F, $0F, $0F, 	$1C, $80, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $00
	smpsVcCoarseFreq    $02, $02, $04, $0C
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $18, $00
	smpsVcDecayRate2    $0F, $0F, $0F, $00
	smpsVcDecayLevel    $00, $00, $03, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $1C

